package com.controller;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.dao.ProductDAO;
import com.model.Feedback;
import com.model.Product;

@RestController
public class ProductController {

	@Autowired
	private ProductDAO dao;


	@GetMapping("/addproduct")
	public ModelAndView addProduct() {
		return new ModelAndView("addproduct");
	}

	@PostMapping("/products")
	public ModelAndView addProduct(@RequestParam("name") String name, HttpServletRequest request) {
		Product product = new Product();
		product.setName(name);
		dao.save(product);
		List<Product> products = (List<Product>) dao.findAll();
		HttpSession session = request.getSession();
		session.setAttribute("products", products);

		System.out.println("hello");
		return new ModelAndView("products");
	}
	
	@GetMapping("/products")
	public ModelAndView showAllProducts(HttpServletRequest request) {
	
		List<Product> products = (List<Product>) dao.findAll();
		HttpSession session = request.getSession();
		session.setAttribute("products", products);
		return new ModelAndView("products");
	}
	
	@GetMapping("/view/{id}")
	public ModelAndView shoProduct(@PathVariable("id") int id, HttpServletRequest request) {
		Product product = dao.findById(id).get();
		System.out.println(id);
		List<Feedback> fs = product.getFeedbacks();
		Collections.sort(fs, new FeedbackSorter());
		HttpSession session = request.getSession();
		session.setAttribute("fs", fs);
		return new ModelAndView("/view")
				.addObject("product", product);
				
	}
	
	@PostMapping("/view/{id}")
	public ModelAndView addReviewtoProduct(@PathVariable("id")int id, @RequestParam("review")String review,HttpServletRequest request) {
		Product product = dao.findById(id).get();
		Feedback feedback = new Feedback(review);
	
		
		product.getFeedbacks().add(feedback);
		feedback.setProduct(product);
		dao.save(product);
		List<Feedback> fs = product.getFeedbacks();
		Collections.sort(fs, new FeedbackSorter());
		HttpSession session = request.getSession();
		session.setAttribute("fs", fs);
		return new ModelAndView("/view")
				.addObject("product", product);
				
		
	}
	
	
}

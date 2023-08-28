package in.laxmi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import in.laxmi.entity.ProductEntity;
import in.laxmi.repo.ProductRepository;

@Controller
public class ProductController {
	@Autowired
	private ProductRepository repo;

	@GetMapping("/")
	public String loadForm(Model model) {
		model.addAttribute("p", new ProductEntity());
		return "index";
	}

	@GetMapping("/products")
	public String loadProducts(Model model) {
		model.addAttribute("products", repo.findAll());
		return "data";
	}

	@PostMapping("/product")
	public String loadForm(@ModelAttribute("p") ProductEntity p, Model model) {
		p = repo.save(p);
		if (p.getPid() != null) {
			model.addAttribute("msg", "product Saved");
		}
		return "index";
	}
}

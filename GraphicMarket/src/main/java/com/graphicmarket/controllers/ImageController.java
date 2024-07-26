package com.graphicmarket.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.graphicmarket.models.Seller;
import com.graphicmarket.services.ImageService;
import com.graphicmarket.services.SellerService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ImageController{
	@Autowired
	private ImageService imgServ;
	
	@Autowired
	private SellerService sellerServ;
	
	@GetMapping("/changePFP")
	public String changePictureView(HttpSession session){
		
		/* === REVISAMOS SESION === */
		Seller sellerTemp = (Seller) session.getAttribute("sellerInSession"); //Obj User o null
		if (sellerTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		
		return "changeProfilePicture.jsp";
	}

	
	@PostMapping("/changePFP")
	public String changePicturePost(@RequestParam("file")MultipartFile file,
									HttpSession session) {
	
		//Guardamos la imagen
		String nombreArchivo = "";
		try {	
			nombreArchivo = imgServ.saveIMG(file, "/profileIMG");
			if(nombreArchivo.equals("error")){
				return "redirect:/productCreate";
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		//seteamos ProfilePicture del usuario en sesion
		Seller seller = (Seller) session.getAttribute("sellerInSession");
		seller.setProfilePicture(nombreArchivo);
		
		//guardamos el usuario con sus datos cambiados
		sellerServ.saveSeller(seller);
		
		
		
		

		return "redirect:/seller";
	}
	
}
	


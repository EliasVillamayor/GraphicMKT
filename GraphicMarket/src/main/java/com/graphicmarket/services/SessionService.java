package com.graphicmarket.services;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.graphicmarket.models.Seller;
import com.graphicmarket.repositories.SellerRepo;

@Service
public class SessionService {
	@Autowired
	private SellerRepo sr;
	
	/*Método que registre a un nuevo usuario*/
	public Seller register(Seller newSeller, BindingResult result) {
		
		//Comparar las contraseñas
		String password = newSeller.getPassword();
		String confirm = newSeller.getConfirm();
		if(!password.equals(confirm)) {
			//SI no son iguales
			//path, clave, mensaje
			result.rejectValue("confirm", "Matches", "Password and confirmation don't match");
		}
		
		//Revisar que el email no esté registrado
		String email = newSeller.getEmail();
		Seller userExist = sr.findByEmail(email); //Objeto de User o null
		if(userExist != null) {
			//El correo ya está registrado
			result.rejectValue("email", "Unique", "E-mail already exists");
		}
		
		//Si existe error, regreso null
		if(result.hasErrors()) {
			return null;
		} else {
			//NO HAY ERRORES
			//Hashear contraseña
			String passHash = BCrypt.hashpw(password, BCrypt.gensalt());
			newSeller.setPassword(passHash); //Establecemos el password hasheado
			return sr.save(newSeller);
		}
		
	}
	
	/*Método que revisa que los datos sean correctos para Iniciar Sesión*/
	public Seller login(String email, String password) {
		//Revisamos que el correo exista en BD
		Seller userTryingLogin = sr.findByEmail(email); //Objeto User o NULL
		
		if(userTryingLogin == null) {
			return null;
		}
		
		//Comparar las contraseñas
		//BCrypt.checkpw(Contra NO encriptada, Contra SI encriptada) -> True o False
		if(BCrypt.checkpw(password, userTryingLogin.getPassword())) {
			return userTryingLogin;
		} else {
			return null;
		}
		
		
	}
}

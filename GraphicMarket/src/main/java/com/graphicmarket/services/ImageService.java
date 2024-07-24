package com.graphicmarket.services;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.Instant;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class ImageService {
	
		public String saveIMG(MultipartFile file, String extension)throws Exception {
			
			try {
				byte[] bytes = file.getBytes();
				
				String nombreOriginal = file.getOriginalFilename();
				String nombreUnico = generarNombreUnico(nombreOriginal);
				Path path = Paths.get("src/main/webapp/img/" + extension+ "/" + nombreUnico);
				Files.write(path, bytes);
				
				return extension + "/" +nombreUnico;
			} catch (Exception e) {
				e.printStackTrace();
				return "erorr";
			}	
		}
		
		private String generarNombreUnico(String nombreOriginal) {
			String extension = obtenerExtension(nombreOriginal);
			
			String nombreUnico = Instant.now().toEpochMilli() + extension;
			
			return nombreUnico;
		}
		
		private String obtenerExtension(String nombreArchivo) {
			int lastIndex = nombreArchivo.lastIndexOf(".");
			
			if(lastIndex == -1) {
				return "";    //archivos sin extension
			}
			
			return nombreArchivo.substring(lastIndex);  //obtiene extension, punto incluido
			
			
		}
}

package Modelos;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import Beans.Organizacion;
import Interfaces.IOrganizacion;

public class OrganizacionDAO implements IOrganizacion {

	@Override
	public boolean insert(Organizacion org) throws Exception {
		
		String strNombre= org.getStrNombre();
		String strDireccion=org.getStrDireccion();
		String strTelefono=org.getStrTelefono();
		String strIdExt= org.getStrIdExt();
		String strCoEnc=org.getStrCoEnc();
		// TODO Auto-generated method stub
		
		boolean bandera = false;
		 FileWriter flwriter = null;
			try {
				//crea el flujo para escribir en el archivo
				flwriter = new FileWriter("C:\\Organizaciones\\organizaciones.properties");
				//crea un buffer o flujo intermedio antes de escribir directamente en el archivo
				BufferedWriter bfwriter = new BufferedWriter(flwriter);
		
					//escribe los datos en el archivo
					bfwriter.write(";"+strNombre+";"+strDireccion+";"+strTelefono+";"+strIdExt+";"+strCoEnc);
			
				//cierra el buffer intermedio
				bfwriter.close();
				bandera = true;
			}
			catch (Exception e){
				System.out.println(e);
				bandera = false;
			}
		System.out.println(bandera);
		return bandera;
	}
	


		@Override
		public List<Organizacion> findAll() throws Exception {
			 List<Organizacion> listOrg= new ArrayList<Organizacion>();
			
			try {
			   	 File file = new File("C:\\Organizaciones\\organizaciones.properties");
					  Scanner scanner = new Scanner(file, "UTF-8");
			     
			    
			   while (scanner.hasNextLine()) {
			           String linea = scanner.nextLine();
			           Scanner delimitar = new Scanner(linea);
			                 delimitar.useDelimiter("\\s*;\\s*");
			         Organizacion org = new Organizacion();
			         
			            org.setStrNombre(delimitar.next());
			            org.setStrDireccion(delimitar.next());
			            org.setStrTelefono(delimitar.next());
			            org.setStrIdExt(delimitar.next());
			            org.setStrCoEnc(delimitar.next());
			            listOrg.add(org);
			   }
			    }catch( Exception e) {
			    	
			    }
			return listOrg;
		}

}

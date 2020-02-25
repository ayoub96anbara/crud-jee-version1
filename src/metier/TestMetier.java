package metier;

import com.mysql.jdbc.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class TestMetier {

	public static void main(String[] args) {
	        
		    	

		ICatalogueMetier metier=new CatalogueMetierImpl();
		
//		metier.ajouterProduit(new Produit("ref_01","dell pc portable",1200,5));
//		metier.ajouterProduit(new Produit("ref_02","hp pc fix",1000,99));
//		metier.ajouterProduit(new Produit("ref_03","smart phone samsung",200,65));
//		metier.ajouterProduit(new Produit("ref_04","impremante",60,22));
		
//		metier.updateProduit(new Produit("ref_01","dell pc portable",1900,8));
		try {
		Produit produit =metier.getProduit("ref_0004");
			System.out.println("prix= "+produit.getPrix()+"quantite= "+produit.getQuantite());
		}catch (RuntimeException e) {
			System.out.println(e.getMessage());
		}
		
		
//		System.out.println(metier.getProduit("PRD01").getDesignation());

}

}

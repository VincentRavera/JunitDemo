package fr.treeptik.dao.impl;

import java.util.List;

//import javax.persistence.EntityManager;

import org.junit.Assert;
import org.junit.Test;

import fr.treeptik.dao.PersonneDAO;
import fr.treeptik.pojo.Personne;

public class PersonneDAOJPQLTest {
	
	@Test
	public void findByNameShouldReturn10() {
		
		PersonneDAO personneDAO = DAOFactoryJPQL.getPersonneDAO();
		
		List<Personne> personnes = personneDAO.findByName("Bond");
		
		Assert.assertNotNull(personnes);
		for (Personne personne : personnes) {
			System.out.println(personne.toString());
		}
		Assert.assertEquals(2, personnes.size());
	}

}

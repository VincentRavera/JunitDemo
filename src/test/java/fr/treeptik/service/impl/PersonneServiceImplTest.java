package fr.treeptik.service.impl;

import java.util.Arrays;
import java.util.List;

import org.easymock.EasyMock;
import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import fr.treeptik.dao.PersonneDAO;
import fr.treeptik.pojo.Personne;
import fr.treeptik.service.exception.ServiceException;

public class PersonneServiceImplTest {
	
	@BeforeClass
	public static void initClass(){
		//Avant même de créer la classe
	}
	
	@Before
	public void iniTest(){
		//Avnt chaque test
	}
	
	@Test(expected = ServiceException.class)
	public void testServiceException(){
		throw new ServiceException("Erreur testing", null);
	}
	
	
	
	
	@Test
	public void testFindByName(){
		PersonneServiceImpl serv = new PersonneServiceImpl();
		PersonneDAO mockpersonneDAO = EasyMock.mock(PersonneDAO.class);
		
		List<Personne> resMock = Arrays.asList(new Personne("Pers1", "Pers2", null));
		EasyMock.expect(mockpersonneDAO.findByName("toto")).andReturn(null);
		EasyMock.expect(mockpersonneDAO.findByName("Pers")).andReturn(resMock);
		
		EasyMock.replay(mockpersonneDAO);
		
		serv.setPersonneDAO(mockpersonneDAO);
		
		List<Personne> resultNul = serv.findByName("toto");
		List<Personne> resultList = serv.findByName("Pers");
		
		
		Assert.assertNotNull(resultList);
		Assert.assertNull(resultNul);
		Assert.assertEquals(1, resultList.size());
		
		EasyMock.verify(mockpersonneDAO);
		
		
		
	}

}

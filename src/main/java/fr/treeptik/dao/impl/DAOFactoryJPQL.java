package fr.treeptik.dao.impl;

import fr.treeptik.dao.NumeroDAO;
import fr.treeptik.dao.PersonneDAO;

public class DAOFactoryJPQL {
	public static PersonneDAO getPersonneDAO() {
		return new PersonneDAOJPQL();
	}
	public static NumeroDAO getNumeroDAO() {
		return new NumeroDAOJPQL();
	}

}

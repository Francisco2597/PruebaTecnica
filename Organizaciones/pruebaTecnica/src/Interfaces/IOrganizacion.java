package Interfaces;

import java.sql.SQLException;
import java.util.List;

import Beans.Organizacion;




public interface IOrganizacion {
	public boolean insert(Organizacion org) throws Exception;
	public List<Organizacion> findAll() throws Exception;
}

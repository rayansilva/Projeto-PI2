package br.com.sistemapi.controller;

import java.util.List;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.sistemapi.hibernate.HibernateUtil;
import br.com.sistemapi.modelo.Cliente;
import br.com.sistemapi.modelo.Usuario;

@Resource
public class IndexController {
	private Result result;
	private Validator validator;

	public IndexController(Result result, Validator validator) {

		this.result = result;
		this.validator = validator;
	}

	@Path("/menu")
	public void menu() 
	{
	}
	
	@Path("/index")
	void index()
	{
		
	}
	
	@Path("/login")
	public void login( )
	{
		
	}
	
	@Path("/validaLogin")
	public void validaLogin( Usuario user )
	{
		
		List<Usuario> users =  HibernateUtil.buscar(user);
		
		if ( !users.isEmpty() )
		{
			result.redirectTo(this).menu();
		}
		else
		{
			result.include("Erro", "Erro na validacao");
			result.redirectTo(this).login();
		}
	}
}

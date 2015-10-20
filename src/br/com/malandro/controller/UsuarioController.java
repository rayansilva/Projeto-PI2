package br.com.malandro.controller;

import java.util.List;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.ValidationMessage;
import br.com.malandro.hibernate.HibernateUtil;
import br.com.malandro.modelo.Usuario;

@Resource
public class UsuarioController {

	private Result result;
	private Validator validator;

	public UsuarioController(Result result, Validator validator) {

		this.result = result;
		this.validator = validator;
	}

	public void acessar(List<Usuario> usuario) {

		if (usuario == null) {

			usuario = HibernateUtil.buscar(new Usuario());
		}

		result.include("usuario", usuario);
	}

	public void salvar(Usuario usuario) {

		if (usuario.getLogin() == null) {
			validator.add(new ValidationMessage("O Login deve estar preenchido", "Erro"));
			validator.onErrorRedirectTo(this).acessar(null);
		}

		HibernateUtil.salvar(usuario);

		result.redirectTo(this).acessar(null);
	}

	public void deletar(Usuario usuario) {

		HibernateUtil.deletar(usuario);

		result.redirectTo(this).acessar(null);
	}
}

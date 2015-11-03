package br.com.sistemapi.controller;

import java.util.List;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.ValidationMessage;
import br.com.sistemapi.hibernate.HibernateUtil;
import br.com.sistemapi.modelo.TipoCliente;
import br.com.sistemapi.modelo.Usuario;

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

	@Path("usuario/salvar")
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

	/* ================ALTERAR======================================= */
	public void alterar(Usuario usuario) {

		if (usuario.getLogin() == null) {
			validator.add(new ValidationMessage("O Loginiiiiiiiiii deve estar preenchido", "Erro"));
			validator.onErrorRedirectTo(this).acessar(null);
		}

		HibernateUtil.alterar(usuario);

		result.redirectTo(this).acessar(null);
	}

	public void buscaDados(List<Usuario> usuario) {
		if (usuario == null) {
			usuario = HibernateUtil.buscarUnico(new Usuario());
		}
		result.include("usuarioUnico", usuario);
		result.redirectTo(this).acessar(null);
	}
	/* ======================================================= */

}

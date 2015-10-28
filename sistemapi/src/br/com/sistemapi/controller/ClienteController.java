package br.com.sistemapi.controller;

import java.util.List;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.ValidationMessage;
import br.com.sistemapi.hibernate.HibernateUtil;
import br.com.sistemapi.modelo.Cliente;

@Resource
public class ClienteController {

	private Result result;
	private Validator validator;

	public ClienteController(Result result, Validator validator) {

		this.result = result;
		this.validator = validator;
	}

	@Path("cliente/acessar")
	public void acessar(List<Cliente> cliente) {

		if (cliente == null) {

			cliente = HibernateUtil.buscar(new Cliente());
		}

		result.include("cliente", cliente);
	}

	@Path("cliente/pesquisar")
	public void pesquisar(String pesquisa) {

		Cliente clienteFiltro = new Cliente();
		clienteFiltro.setNome(pesquisa);

		List<Cliente> cliente = HibernateUtil.buscar(clienteFiltro);

		result.redirectTo(this).acessar(cliente);
	}

	@Path("cliente/cadastrar")
	public void salvar(Cliente cliente) {

		if (cliente.getNome() == null) {
			validator.add(new ValidationMessage("O nome do cliente deve estar preenchido", "Erro"));
			validator.onErrorRedirectTo(this).acessar(null);
		}
		HibernateUtil.salvar(cliente);
		result.redirectTo(this).acessar(null);
	}

	public void deletar(Cliente cliente) {
		HibernateUtil.deletar(cliente);
		result.redirectTo(this).acessar(null);
	}

	/* ================ALTERAR======================================= */
	@Path("cliente/alterarCliente")
	public void alterar(Cliente cliente) {

		if (cliente.getNome() == null) {
			validator.add(new ValidationMessage("O nome deve estar preenchido", "Erro"));
			validator.onErrorRedirectTo(this).acessar(null);
		}
		HibernateUtil.alterar(cliente);
		result.redirectTo(this).acessar(null);
	}

	@Path("cliente/buscarCliente")
	public void buscaDados(List<Cliente> cliente) {
		if (cliente == null) {
			cliente = HibernateUtil.buscarUnico(new Cliente());
		}
		result.include("clienteUnico", cliente);
		result.redirectTo(this).acessar(null);
	}
	/* ======================================================= */
}

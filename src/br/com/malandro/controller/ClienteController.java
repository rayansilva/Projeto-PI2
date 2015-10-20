package br.com.malandro.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.ValidationMessage;
import br.com.malandro.hibernate.HibernateUtil;
import br.com.malandro.modelo.Cliente;
import br.com.malandro.modelo.Usuario;

@Resource
public class ClienteController {

	private Result result;
	private Validator validator;

	public ClienteController(Result result, Validator validator) {

		this.result = result;
		this.validator = validator;
	}

	public void acessar(List<Cliente> cliente) {

		if (cliente == null) {

			cliente = HibernateUtil.buscar(new Cliente());
		}

		result.include("cliente", cliente);
	}

	public void pesquisar(String pesquisa) {

		Cliente clienteFiltro = new Cliente();
		clienteFiltro.setNome(pesquisa);

		List<Cliente> cliente = HibernateUtil.buscar(clienteFiltro);

		result.redirectTo(this).acessar(cliente);
	}

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
}

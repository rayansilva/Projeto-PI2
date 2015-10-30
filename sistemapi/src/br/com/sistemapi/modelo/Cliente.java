package br.com.sistemapi.modelo;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToOne;

@Entity
public class Cliente {
	@Id
	@GeneratedValue
	private Integer id;
	@Column
	private String nome;
	@Column
	private String cpf_cnpj;
	@Column
	private String telefoneFixo;
	@Column
	private String telefoneCelular;
	@Column
	private String email;
	@Column
	private String endereco;
	@Column
	private String cep;
	@Column
	private String cidade;
	@Column
	private String uf;
	@Column
	private String rua;
	@Column
	private String complemento;
	@Column
	private String bairro;
	@Column
	private Integer tipoCliente;
	
	
//	@OneToOne(fetch = FetchType.LAZY,mappedBy = "TipoCliente", cascade = CascadeType.ALL)
//	private TipoCliente tipoCliente;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf_cnpj() {
		return cpf_cnpj;
	}

	public void setCpf_cnpj(String cpf_cnpj) {
		this.cpf_cnpj = cpf_cnpj;
	}

	public String getTelefoneFixo() {
		return telefoneFixo;
	}

	public void setTelefoneFixo(String telefoneFixo) {
		this.telefoneFixo = telefoneFixo;
	}

	public String getTelefoneCelular() {
		return telefoneCelular;
	}

	public void setTelefoneCelular(String telefoneCelular) {
		this.telefoneCelular = telefoneCelular;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public String getRua() {
		return rua;
	}

	public void setRua(String rua) {
		this.rua = rua;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
//
//	public TipoCliente getTipoCliente() {
//		return tipoCliente;
//	}
//
//	public void setTipoCliente(TipoCliente tpCliente) {
//		this.tipoCliente = tpCliente;
//	}

}

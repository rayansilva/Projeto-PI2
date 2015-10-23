package br.com.sistemapi.modelo;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Movimentacao {

	@Id
	@GeneratedValue
	private Integer id;
	private String quantidade;
	private BigDecimal Preco;
	private String quantidadeEstoqueNaData;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(String quantidade) {
		this.quantidade = quantidade;
	}

	public BigDecimal getPreco() {
		return Preco;
	}

	public void setPreco(BigDecimal preco) {
		Preco = preco;
	}

	public String getQuantidadeEstoqueNaData() {
		return quantidadeEstoqueNaData;
	}

	public void setQuantidadeEstoqueNaData(String quantidadeEstoqueNaData) {
		this.quantidadeEstoqueNaData = quantidadeEstoqueNaData;
	}

}

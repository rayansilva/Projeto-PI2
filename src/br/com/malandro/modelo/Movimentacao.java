package br.com.malandro.modelo;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Movimentacao {

	@Id
	@GeneratedValue
	private Integer idMovimentacao;
	private String quantidade;
	private BigDecimal Preco;
	private String quantidadeEstoqueNaData;

	public Integer getIdMovimentacao() {
		return idMovimentacao;
	}

	public void setIdMovimentacao(Integer idMovimentacao) {
		this.idMovimentacao = idMovimentacao;
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

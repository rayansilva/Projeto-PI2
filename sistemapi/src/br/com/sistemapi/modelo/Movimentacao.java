package br.com.sistemapi.modelo;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Movimentacao {

	@Id
	@GeneratedValue
	private Integer id;
	private String quantidade;
	private BigDecimal Preco;
	private String quantidadeEstoqueNaData;
	
	@ManyToOne
	@JoinColumn(name = "id_transacao")
	private Transacao transacao;
	
	@ManyToOne
	@JoinColumn(name = "id_produto")
	private Produto produto;

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

	public Transacao getTransacao() {
		return transacao;
	}

	public void setTransacao(Transacao transacao) {
		this.transacao = transacao;
	}

	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}

}

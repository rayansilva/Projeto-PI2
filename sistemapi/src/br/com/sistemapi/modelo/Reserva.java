package br.com.sistemapi.modelo;

import java.math.BigDecimal;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
public class Reserva {

	@Id
	@GeneratedValue
	private Integer id;
	private String QuantidadeReservado;
	private BigDecimal preco;
	
	@ManyToOne
	@JoinColumn(name = "id_transcao")
	@Cascade({CascadeType.MERGE, CascadeType.SAVE_UPDATE})
	private Transacao transacao;

	@ManyToOne
	@JoinColumn(name = "id_produto")
	private Produto produto;
	
	public BigDecimal getPreco() {
		return preco;
	}

	public void setPreco(BigDecimal preco) {
		this.preco = preco;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getQuantidadeReservado() {
		return QuantidadeReservado;
	}

	public void setQuantidadeReservado(String quantidadeReservado) {
		QuantidadeReservado = quantidadeReservado;
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

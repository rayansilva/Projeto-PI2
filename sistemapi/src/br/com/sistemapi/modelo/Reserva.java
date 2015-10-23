package br.com.sistemapi.modelo;

import java.math.BigDecimal;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Reserva {

	@Id
	@GeneratedValue
	private Integer id;
	private String QuantidadeReservado;
	private BigDecimal preco;

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

}

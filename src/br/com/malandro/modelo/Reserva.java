package br.com.malandro.modelo;

import java.math.BigDecimal;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Reserva {

	@Id
	@GeneratedValue
	private Integer idReserva;
	private String QuantidadeReservado;
	private BigDecimal preco;

	public BigDecimal getPreco() {
		return preco;
	}

	public void setPreco(BigDecimal preco) {
		this.preco = preco;
	}

	public Integer getIdReserva() {
		return idReserva;
	}

	public void setIdReserva(Integer idReserva) {
		this.idReserva = idReserva;
	}

	public String getQuantidadeReservado() {
		return QuantidadeReservado;
	}

	public void setQuantidadeReservado(String quantidadeReservado) {
		QuantidadeReservado = quantidadeReservado;
	}

}

package br.com.sistemapi.modelo;

import java.math.BigDecimal;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Estoque {

	@Id
	@GeneratedValue
	private Integer id;
	private BigDecimal totalEstoque;
	private BigDecimal totalDisponivel;
	private BigDecimal totalReserva;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public BigDecimal getTotalEstoque() {
		return totalEstoque;
	}

	public void setTotalEstoque(BigDecimal totalEstoque) {
		this.totalEstoque = totalEstoque;
	}

	public BigDecimal getTotalDisponivel() {
		return totalDisponivel;
	}

	public void setTotalDisponivel(BigDecimal totalDisponivel) {
		this.totalDisponivel = totalDisponivel;
	}

	public BigDecimal getTotalReserva() {
		return totalReserva;
	}

	public void setTotalReserva(BigDecimal totalReserva) {
		this.totalReserva = totalReserva;
	}

}

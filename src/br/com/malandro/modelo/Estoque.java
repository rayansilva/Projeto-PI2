package br.com.malandro.modelo;

import java.math.BigDecimal;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Estoque {

	@Id
	@GeneratedValue
	private Integer idEstoque;
	private BigDecimal totalEstoque;
	private BigDecimal totalDisponivel;
	private BigDecimal totalReserva;

	public Integer getIdEstoque() {
		return idEstoque;
	}

	public void setIdEstoque(Integer idEstoque) {
		this.idEstoque = idEstoque;
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

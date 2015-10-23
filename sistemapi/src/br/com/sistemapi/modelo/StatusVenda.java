package br.com.sistemapi.modelo;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class StatusVenda {

	@Id
	@GeneratedValue
	private Integer id;
	private BigDecimal descricaoVenda;
	private BigDecimal codigoVenda;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public BigDecimal getDescricaoVenda() {
		return descricaoVenda;
	}

	public void setDescricaoVenda(BigDecimal descricaoVenda) {
		this.descricaoVenda = descricaoVenda;
	}

	public BigDecimal getCodigoVenda() {
		return codigoVenda;
	}

	public void setCodigoVenda(BigDecimal codigoVenda) {
		this.codigoVenda = codigoVenda;
	}

}

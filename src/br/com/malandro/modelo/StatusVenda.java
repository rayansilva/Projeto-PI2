package br.com.malandro.modelo;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class StatusVenda {

	@Id
	@GeneratedValue
	private Integer idStatusVenda;
	private BigDecimal descricaoVenda;
	private BigDecimal codigoVenda;

	public Integer getIdStatusVenda() {
		return idStatusVenda;
	}

	public void setIdStatusVenda(Integer idStatusVenda) {
		this.idStatusVenda = idStatusVenda;
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

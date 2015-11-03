package br.com.sistemapi.modelo;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class StatusVenda {

	@Id
	@GeneratedValue
	private Integer id;
	private BigDecimal descricaoVenda;
	private BigDecimal codigoVenda;
	
	@OneToMany(mappedBy="statusVenda")
	private List<Transacao> transacoes;

	public Integer getId() {
		return id;
	}

	public List<Transacao> getTransacoes() {
		return transacoes;
	}

	public void setTransacoes(List<Transacao> transacoes) {
		this.transacoes = transacoes;
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

package br.com.sistemapi.modelo;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Estoque {

	@Id
	@GeneratedValue
	private Integer id;
	private BigDecimal totalEstoque;
	private BigDecimal totalDisponivel;
	private BigDecimal totalReserva;

	@OneToMany(mappedBy="estoque")
	private List<Produto> produtos;
	
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

	public List<Produto> getProdutos() {
		return produtos;
	}

	public void setProdutos(List<Produto> produtos) {
		this.produtos = produtos;
	}

}

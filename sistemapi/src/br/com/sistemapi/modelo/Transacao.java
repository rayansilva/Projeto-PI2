package br.com.sistemapi.modelo;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Transacao {

	@Id
	@GeneratedValue
	private Integer id;
	private String tipoTransacao;
	private String dataPagamento;
	private String dataPrevisaoPagamento;
	private String dataCompra;
	
	@ManyToOne
	@JoinColumn(name = "id_status_venda")
	private StatusVenda statusVenda;
	
	@ManyToOne
	@JoinColumn(name = "id_forma_pagto")
	private FormaPagamento formaPagto;
	
	@ManyToOne
	@JoinColumn(name = "id_cliente")
	private Cliente cliente;
	
	@OneToMany(mappedBy="transacao")
	private List<Movimentacao> movimentacoes;

	@OneToMany(mappedBy="transacao")
	private List<Reserva> reservas;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTipoTransacao() {
		return tipoTransacao;
	}

	public void setTipoTransacao(String tipoTransacao) {
		this.tipoTransacao = tipoTransacao;
	}

	public String getDataPagamento() {
		return dataPagamento;
	}

	public void setDataPagamento(String dataPagamento) {
		this.dataPagamento = dataPagamento;
	}

	public String getDataPrevisaoPagamento() {
		return dataPrevisaoPagamento;
	}

	public void setDataPrevisaoPagamento(String dataPrevisaoPagamento) {
		this.dataPrevisaoPagamento = dataPrevisaoPagamento;
	}

	public String getDataCompra() {
		return dataCompra;
	}

	public void setDataCompra(String dataCompra) {
		this.dataCompra = dataCompra;
	}

	public StatusVenda getStatusVenda() {
		return statusVenda;
	}

	public void setStatusVenda(StatusVenda statusVenda) {
		this.statusVenda = statusVenda;
	}

	public FormaPagamento getFormaPagto() {
		return formaPagto;
	}

	public void setFormaPagto(FormaPagamento formaPagto) {
		this.formaPagto = formaPagto;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public List<Movimentacao> getMovimentacoes() {
		return movimentacoes;
	}

	public void setMovimentacoes(List<Movimentacao> movimentacoes) {
		this.movimentacoes = movimentacoes;
	}

	public List<Reserva> getReservas() {
		return reservas;
	}

	public void setReservas(List<Reserva> reservas) {
		this.reservas = reservas;
	}

}

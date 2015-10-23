package br.com.sistemapi.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Transacao {

	@Id
	@GeneratedValue
	private Integer id;
	private String tipoTransacao;
	private String DataPagamento;
	private String DataPrevisaoPagamento;
	private String DataCompra;

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
		return DataPagamento;
	}

	public void setDataPagamento(String dataPagamento) {
		DataPagamento = dataPagamento;
	}

	public String getDataPrevisaoPagamento() {
		return DataPrevisaoPagamento;
	}

	public void setDataPrevisaoPagamento(String dataPrevisaoPagamento) {
		DataPrevisaoPagamento = dataPrevisaoPagamento;
	}

	public String getDataCompra() {
		return DataCompra;
	}

	public void setDataCompra(String dataCompra) {
		DataCompra = dataCompra;
	}

}

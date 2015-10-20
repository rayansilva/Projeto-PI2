package br.com.malandro.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Transacao {

	@Id
	@GeneratedValue
	private Integer idTransacao;
	private String tipoTransacao;
	private String DataPagamento;
	private String DataPrevisaoPagamento;
	private String DataCompra;

	public Integer getIdTransacao() {
		return idTransacao;
	}

	public void setIdTransacao(Integer idTransacao) {
		this.idTransacao = idTransacao;
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

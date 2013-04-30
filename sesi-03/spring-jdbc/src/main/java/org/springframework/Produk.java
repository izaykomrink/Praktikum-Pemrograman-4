package org.springframework;

import java.math.*;

public class Produk{
	private String kode;
	private BigDecimal harga;
	private Produk nama;
	private Date tglExp;
	
	public void setNama(String nama)
	{
		this.nama=nama;
	}
	
	public void setKode(String kode){
		this.kode=kode;
	}
	public void getKode(String kode)
	{
		return kode;
	}
	
	public void setHarga (BigDecimal harga) {
		this.harga=harga;
	}
	public BigDecimal getHarga(){
		return harga;
	}
	
	public void setTerakhir_update (Date terakhir_update) {
		this.terakhir_update=terakhir_update;
	}
	public Date getTerakhir_update(){
		return terakhir_update;
	}
}
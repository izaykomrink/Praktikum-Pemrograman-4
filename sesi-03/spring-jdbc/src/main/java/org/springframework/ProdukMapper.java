package org.springframework;

import java.sql.SQLException;
import org.springframework.jdbc.core.Rowmapper;
import java.sql.ResultSet;
import org.springframework.Produk;
import java.math.BigDecimal;

	public class ProdukMapper implements RowMapper<produk>{
		public Produk mapRow(ResultSet rs, int rowMap)throws SQLException{
			produk p = new Produk();
			p.setId(rs.getInt("id"));
			p.setKode(rs.getString("kode"));
			p.setNama(rs.getString("nama"));
			p.setHarga(rs.getBigDecimal("harga"));
			p.setTerakhir_update(rs.getDate("terakhir_update"));
			return p;
		}
	}
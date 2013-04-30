package org.springframework;

import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;

	public interface ProdukDao{
		private DataSource ds;
		private JdbcTemplate js;
	
		public void setDataSource(DataSource ds);
		public void simpan(Produk p){
		
		}
		
		public List<Produk> serchingProduk(){
			String SQL ="select * from produkdao";
			List<Produk>Produk = js.query(SQL,new ProdukMapper());
			return Produk;
		}
	}
package com.belajar.springmvc;

import com.belajar.springmvc.Produk;
import com.belajar.springmvc.ProdukDao;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

@Controller
public class ProdukController {
    
    @Autowired private ProdukDao produkDao;    
    
    @RequestMapping("/produk/daftarproduk")
    public ModelMap daftarProduk() throws Exception {
        List<Produk> hasil = produkDao.cariSemuaProduk();
        ModelMap mm = new ModelMap();
        mm.addAttribute("daftarProduk", hasil);
        return mm;
    }
    
    @RequestMapping(value="/produk/inputproduk", method = RequestMethod.GET)
    public ModelMap tampilkanFormProduk(@RequestParam(required=false) Integer id) throws Exception{
        System.out.println("Form Produk");
		
		Produk p = produkDao.cariById(id);
		
		if(p == null){
			p = new Produk();
		}
		
		ModelMap mm = new ModelMap();
		mm.addAttribute("produk", p);
		return mm;
    }
    
    @RequestMapping(value = "/produk/inputproduk", method = RequestMethod.POST)
    public String prosesFormProduk(@ModelAttribute @Valid Produk p,
		BindingResult hasilValidasi,
		SessionStatus status) throws Exception {
        
        p.setTerakhirUpdate(new Date());
        
		if(hasilValidasi.hasErrors()){
			return "/produk/inputproduk";
		}
        produkDao.simpan(p);
        status.setComplete();
        return "redirect:daftarproduk";
    }
	
	@RequestMapping("/produk/delete")
	public String hapusProduk(@RequestParam Integer id){
		try{
			produkDao.hapus(id);
		}catch(Exception err){
			System.out.println("Delete Failed : " + err.getMessage());
		}
		return "redirect:daftarproduk";
	}
}

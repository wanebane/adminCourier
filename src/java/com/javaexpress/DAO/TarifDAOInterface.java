/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaexpress.DAO;

import com.javaexpress.bean.TarifBean;
import com.javaexpress.model.*;
/**
 *
 * @author user
 */
import java.util.List;
public interface TarifDAOInterface {
    
    
    public void saveTarif(TarifBean tf);
    
    public Kota getKota(int kodeKota);
    
    public List<Tarif> showAllTarif();
    
    public List<Status> showAllStatus();
    
    public List<Kota> showAllKota();
    
    public Admin getDataById(int idAdmin);
    
    public Status getDataStatusById(int idStatus);
    
    public void updateStatus(int idTarif);
    
     public Tarif getDataByIdTarif(int idTarif);
    
    public Tarif getCekDataKota (int kotaAsal, int kotaTujuan);
    
    public void updateTarif(TarifBean tf, int idTarif);
}

package com.javaexpress.DAO;

import com.javaexpress.model.Admin;
import com.javaexpress.model.LevelAdmin;
import com.javaexpress.model.Status;
import java.util.List;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;
import javax.transaction.Transactional;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class AdminDao {
    
    static final Logger logger = Logger.getLogger(AdminDao.class.getName());

    @PersistenceUnit
    EntityManagerFactory emf;

    private EntityManager em;
   
    /**
     * @return the em
     */
    public EntityManager getEm() {
        return em;
    }

    /**
     * @param em the em to set
     */
    public void setEm(EntityManager em) {
        this.em = em;
    }
    
    @org.springframework.transaction.annotation.Transactional
    public void saveAdmin(Admin admin) {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(admin);
        em.getTransaction().commit();
        em.close();
    }
    
    public Admin findAdminById(Integer id){
        em = emf.createEntityManager();
        return em.find(Admin.class, id);
    }
    
    public Admin findByUsername(String username) {
        Admin admin = new Admin();
        try {
            em = emf.createEntityManager();
            Query query = em.createQuery("Select a from Admin a where a.username = :username");
            query.setParameter("username", username);
            admin = (Admin) query.getSingleResult();
        } catch (NoResultException nre) {
            logger.severe("Username tidak ada");
        }
        return admin;
    }
    
    public List<LevelAdmin> tampilLevelAdmin(){
        em = emf.createEntityManager();
        List<LevelAdmin> levelAdmin;
        levelAdmin = em.createNamedQuery("LevelAdmin.findAll").getResultList();
        return levelAdmin;
    }
    
    public LevelAdmin findLevelById(Integer id){
        em = emf.createEntityManager();
        return em.find(LevelAdmin.class, id);
    }
    
    public Status findStatusById(Integer id){
        em = emf.createEntityManager();
        return em.find(Status.class, id);
    }
    
    public List<Admin> findAllStaff(){
        em = emf.createEntityManager();
        List<Admin> staff;
        staff = em.createQuery("select a from Admin a where a.level.idLevel = 2 AND a.status.idStatus = 1").getResultList();
        return staff;
    }
    
    @org.springframework.transaction.annotation.Transactional
    public void updateAdmin(Admin admin){
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.merge(admin);
        em.getTransaction().commit();
        em.close();
    }
    
    @org.springframework.transaction.annotation.Transactional
    public void hapusStaff(Admin staff){
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.merge(staff);
        em.getTransaction().commit();
        em.close();
    }
}

package com.fr.FathomlessRealm.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fr.FathomlessRealm.dao.SupplierDAO;
import com.fr.FathomlessRealm.model.Supplier;

@Repository
public class SupplierDAOImpl implements SupplierDAO {
	@Autowired
	SessionFactory sessionFactory;

	public boolean addsupplier(Supplier supplier) {
		try {
			supplier.setSupplierRegisterDate();
			Session s=sessionFactory.openSession();
			Transaction t=s.beginTransaction();
			s.save(supplier);
			t.commit();
			s.close();
			return true;
			
		} catch (Exception e) {
			return false;
		}
	}

	public Supplier getSupplier(int supplierId) {
		// TODO Auto-generated method stub
		try {
			
			Session s=sessionFactory.openSession();
			Transaction t=s.beginTransaction();
			Supplier sup=s.get(Supplier.class, supplierId);
			t.commit();
			s.close();
			return sup;
			
		} catch (Exception e) {
			return null;
		}
	}

	public boolean UpdateSupplier(Supplier supplier) {
		try {
			supplier.setSupplierRegisterDate();
			Session s=sessionFactory.openSession();
			Transaction t=s.beginTransaction();
			s.saveOrUpdate(supplier);
			t.commit();
			s.close();
			return true;
			
		} catch (Exception e) {
			return false;
		}
		
	}

	public boolean DeleteSupplier(int supplierId) {
		
		try {
		
		Session s=sessionFactory.openSession();
		Transaction t=s.beginTransaction();
		Supplier sup=s.get(Supplier.class, supplierId);
		s.delete(sup);
		t.commit();
		s.close();
		return true;
		
	} catch (Exception e) {
		return false;
	}
		
	}

	public List<Supplier> allSupplier() {
		List<Supplier> allmySupplier;
		try {
			Session s=sessionFactory.openSession();
			//Transaction t=s.beginTransaction();
		allmySupplier=s.createQuery("From Supplier").list();
		return allmySupplier;
		}
		catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	
}

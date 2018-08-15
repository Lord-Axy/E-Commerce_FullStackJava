package com.fr.FathomlessRealm.dao;

import java.util.List;

import com.fr.FathomlessRealm.model.Supplier;

public interface SupplierDAO {
	public boolean addsupplier(Supplier supplier);
	public Supplier getSupplier(int supplierId);
	public boolean UpdateSupplier(Supplier supplier);
	public boolean DeleteSupplier(int supplierId);
	public List<Supplier> allSupplier();
}

package com.fr.FathomlessRealm.dao;

import java.util.List;
import com.fr.FathomlessRealm.model.Category;

public interface CategoryDAO {
	public boolean addCategory(Category category);
	public Category getCategory(int categoryId);
	public boolean UpdateCategory(Category category);
	public boolean DeleteCategory(int categoryId);
	public List<Category> allCategory();
}

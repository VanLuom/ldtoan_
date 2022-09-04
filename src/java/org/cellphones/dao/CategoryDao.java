/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.cellphones.dao;

import java.util.List;
import org.cellphones.model.Category;

/**
 *
 * @author toanl
 */
public interface CategoryDao {

    public boolean insert(Category category);

    public boolean update(Category category);

    public boolean delete(int id);

    public List<Category> all();

    public Category find(int id);

    public Category findByName(String name);
}

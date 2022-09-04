/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.cellphones.model;

import java.util.List;
import org.cellphones.dao.DatabaseDao;

/**
 *
 * @author toanl
 */
public class Category {

    private int id;
    private String name;
    private String desc;

    public Category(String name, String desc) {
        this.name = name;
        this.desc = desc;
    }

    public Category(int id, String name, String desc) {
        this.id = id;
        this.name = name;
        this.desc = desc;
    }

    public static Category find(int id) {
        return DatabaseDao.getInstance().getCategoryDao().find(id);
    }

    public static List<Category> all() {
        return DatabaseDao.getInstance().getCategoryDao().all();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

}

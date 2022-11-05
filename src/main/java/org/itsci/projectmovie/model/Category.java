package org.itsci.projectmovie.model;

import com.sun.istack.NotNull;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.Pattern;


@Entity
@Table(name = "Category")
public class Category {

    @Id
    @Column(name = "Cid",nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @GenericGenerator(name = "increment", strategy = "increment")
    int Cid;
    @NotNull
    @Pattern(regexp="^C[0-9]{3}")
    @Column(name = "code",nullable = false)
    private String code;

    @Column(name = "CategoryName",nullable = false)
    private String CategoryName;

    public int getCid() {
        return Cid;
    }

    public void setCid(int cid) {
        Cid = cid;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCategoryName() {
        return CategoryName;
    }

    public void setCategoryName(String categoryName) {
        CategoryName = categoryName;
    }
}

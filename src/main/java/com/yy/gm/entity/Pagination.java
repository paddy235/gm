package com.yy.gm.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
@Data
@NoArgsConstructor
public class Pagination<T> {
    private int pageNumber;
    private int pageSize;
    private int total;
    private List<T> rows;
    public Pagination(int pageNumber, int pageSize) {
        super();
        this.pageNumber = pageNumber;
        this.pageSize = pageSize;
    }
    public Pagination(int total, List<T> rows) {
        super();
        this.total = total;
        this.rows = rows;
    }

}

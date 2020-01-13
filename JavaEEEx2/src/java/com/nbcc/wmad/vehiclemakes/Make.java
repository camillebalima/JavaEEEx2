/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbcc.wmad.vehiclemakes;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 *
 * @author camso
 */
public class Make {
    private int id;
    private String name;
    private List<Make> mockData = new ArrayList();
    public List<Make> getMakes(){
        return mockData;
    }

    public Make() {
        buildMockData();
    }

    public Make(int id, String name) {
        this.id = id;
        this.name = name;
    }
    
    public Make getMake(int id){
        List<Make> query = mockData.stream()
                .filter(make -> make.getId() == id)
                .collect(Collectors.toList());
        return query.get(0);
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

    private void buildMockData() {
        this.mockData.add(new Make(mockData.size() +1, "Jeep"));
        this.mockData.add(new Make(mockData.size() +1, "Toyota"));
        this.mockData.add(new Make(mockData.size() +1, "Land Cruiser"));
        this.mockData.add(new Make(mockData.size() +1, "Chevrolet"));
        this.mockData.add(new Make(mockData.size() +1, "Dodge"));
    }
    
    
    
    
    
}

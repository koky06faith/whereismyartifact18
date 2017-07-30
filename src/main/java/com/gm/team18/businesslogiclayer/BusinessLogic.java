package com.gm.team18.businesslogiclayer;

import java.util.ArrayList;

import com.gm.team18.datalayer.EntityArtifact;

public class BusinessLogic {
	
	EntityArtifact entityArtifact = new EntityArtifact();

    public String getbyName(){
        EntityArtifact entityArtifact = new EntityArtifact();
        String name;
        entityArtifact.setArtifactName("Artifact A (Car Model-GE_Ford)");
        name=entityArtifact.getArtifactName();
        return  name;
    }
    
    public EntityArtifact getbyName(String artifactName){
        EntityArtifact entityArtifact = new EntityArtifact();
        entityArtifact.setArtifactName("car 1");
        entityArtifact.setLongitude("119.01");
        entityArtifact.setLatitude("200.292");
        entityArtifact.setTemperature("110");
        return  entityArtifact;
    }

    public ArrayList<EntityArtifact> getAll(){
    	ArrayList<EntityArtifact> listArtifacts= new ArrayList<EntityArtifact>();
        EntityArtifact entityArtifactA = new EntityArtifact();
        EntityArtifact entityArtifactB = new EntityArtifact();
        entityArtifactA.setLatitude("18.1");
        entityArtifactA.setLongitude("12.1");
        entityArtifactA.setTemperature("100F");
        
        entityArtifactB.setLatitude("11.1");
        entityArtifactB.setLongitude("19.1");
        entityArtifactB.setTemperature("1F");
     
        listArtifacts.add(entityArtifactA);
        listArtifacts.add(entityArtifactB);
        
        return  listArtifacts;
    }

}

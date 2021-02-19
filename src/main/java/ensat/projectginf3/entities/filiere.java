package ensat.projectginf3.entities;

import java.util.List;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "filiere")
public class filiere {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "nomfiliere")
    private String nomfiliere;
    
    @Column(name = "responsable")
    private String responsable;
    
  
    public filiere() {

    }

    public int getId() {
    	return id;
    }
    
    public void setId(int id) {
    	this.id=id;
    }
   
    public String getNomfiliere() {
    	return nomfiliere;
    }
    
    public void setNomfiliere(String nomfiliere) {
    	this.nomfiliere=nomfiliere;
    }
    
    public String getResponsable() {
    	return responsable;
    }
    
    public void setResponsable(String responsable) {
    	this.responsable=responsable;
    }
    
    public List<eleve> getEleves(){
    	return this.eleves;
    }
    
    @Override
    public String toString() {
        return "filiere [id=" + id + ", nom=" + nomfiliere + ", responsable=" + responsable + "]";
    }
    
    @OneToMany
    @JoinColumn(name="id_fil")
    private List<eleve> eleves;
}
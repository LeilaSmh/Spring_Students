package ensat.projectginf3.entities;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "eleves")
public class eleve {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "cin")
    private int cin;

    @Column(name = "cne")
    private int cne;

    @Column(name = "prenom")
    private String prenom;
    
    @Column(name = "nom")
    private String nom;

    public eleve() {

    }

    public int getId() {
    	return id;
    }
    
    public void setId(int id) {
    	this.id=id;
    }
   
    public int getCin() {
    	return cin;
    }
    
    public void setCin(int cin) {
    	this.cin=cin;
    }
    
    public int getCne() {
    	return cne;
    }
    
    public void setCne(int cne) {
    	this.cne=cne;
    }
    
    public String getPrenom() {
    	return prenom;
    }
    
    public void setPrenom(String prenom) {
    	this.prenom=prenom;
    }
    
    public String getNom() {
    	return nom;
    }
    
    public void setNom(String nom) {
    	this.nom=nom;
    }
    
    @Override
    public String toString() {
        return "eleve [id=" + id + ", cin=" + cin + ", cne=" + cne + ", prenom=" + prenom + ",nom=" + nom +"]";
    }
    
    @ManyToOne
    @JoinColumn(name="id_fil")
    private filiere filiere;
    
    public filiere getFiliere() {
    	return this.filiere;
    }
    
    public void setFiliere(filiere filiere) {
    	this.filiere = filiere;
    }
}
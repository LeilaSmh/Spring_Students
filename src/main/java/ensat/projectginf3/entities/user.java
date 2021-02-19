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
@Table(name = "users")
public class user {

    @Id
    @Column(name = "username")
    private String username;

    @Column(name = "password")
    private String password;
    
    @Column(name = "enabled")
    private boolean enabled;

    
    public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public user() {
    	
    }
    
    // Getters and setters
    
    public String getUsername() {
    	return this.username;
    }
    
    public String getPassword() {
    	return this.password;
    }
    
    public void setUsername(String username) {
    	this.username = username;
    }
    
    public void setPassword(String password) {
    	this.password = password;
    }
    

}



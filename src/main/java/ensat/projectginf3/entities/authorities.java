package ensat.projectginf3.entities;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@IdClass(authoritiesIds.class)
@Table(name = "authorities")
public class authorities {

	public authorities() {
		
	}
	
    public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}
	
	@Id
	@Column(name = "username")
    private String username;

	@Id
    @Column(name = "authority")
    private String authority;

}
package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the version database table.
 * 
 */
@Entity
@NamedQuery(name="Version.findAll", query="SELECT v FROM Version v")
public class Version implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private int version;

	public Version() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getVersion() {
		return this.version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

}
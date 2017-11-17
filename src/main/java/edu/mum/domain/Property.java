package edu.mum.domain;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Transient;
import javax.validation.Valid;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Property implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	
	private String propertyName;
	
	
	private String ownerDescription;
	
	
	private double expectedPrice;
	
	
	private String facilities;
	
	
	private Integer areaOfHouse;
	

	private String typeOfHouse;
	
	@Transient
	private MultipartFile image;
	
	private String imagePath;
	
	//@NotNull
	/*@OneToOne(fetch=FetchType.EAGER,cascade = CascadeType.MERGE)
	@JoinColumn(name="owner_id")
	private User owner;*/
	
	
	@OneToOne(fetch=FetchType.EAGER,cascade = CascadeType.ALL)
	@JoinColumn(name="address_id")
	private Address address;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getPropertyName() {
		return propertyName;
	}

	public void setPropertyName(String propertyName) {
		this.propertyName = propertyName;
	}

	public String getOwnerDescription() {
		return ownerDescription;
	}

	public void setOwnerDescription(String ownerDescription) {
		this.ownerDescription = ownerDescription;
	}

	public double getExpectedPrice() {
		return expectedPrice;
	}

	public void setExpectedPrice(double expectedPrice) {
		this.expectedPrice = expectedPrice;
	}

	public String getFacilities() {
		return facilities;
	}

	public void setFacilities(String facilities) {
		this.facilities = facilities;
	}

	public Integer getAreaOfHouse() {
		return areaOfHouse;
	}

	public void setAreaOfHouse(Integer areaOfHouse) {
		this.areaOfHouse = areaOfHouse;
	}

	public String getTypeOfHouse() {
		return typeOfHouse;
	}

	public void setTypeOfHouse(String typeOfHouse) {
		this.typeOfHouse = typeOfHouse;
	}

	/*public User getOwner() {
		return owner;
	}

	public void setOwner(User owner) {
		this.owner = owner;
	}*/

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

}

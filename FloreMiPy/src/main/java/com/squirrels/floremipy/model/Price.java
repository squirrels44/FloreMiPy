package com.squirrels.floremipy.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;


/**
 * The persistent class for the price database table.
 * 
 */
@Entity
@NamedQuery(name="Price.findAll", query="SELECT p FROM Price p")
public class Price implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	@Temporal(TemporalType.DATE)
	private Date date;

	private BigDecimal value;

	//bi-directional many-to-one association to Article
	@ManyToOne
	@JoinColumn(name="IdArticle")
	private Article article;

	public Price() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public BigDecimal getValue() {
		return this.value;
	}

	public void setValue(BigDecimal value) {
		this.value = value;
	}

	public Article getArticle() {
		return this.article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

}
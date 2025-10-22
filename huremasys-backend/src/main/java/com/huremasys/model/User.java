/**
 * 
 */
package com.huremasys.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * User table.
 */
@Data
@Getter
@Setter
@Entity
@Table(name = "users")
public class User {
	/**
	 * User id.
	 * */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

	/**
	 * User name.
	 * */
    @Column(nullable = false, unique = true)
    private String username;

	/**
	 * User password.
	 * */
    @Column(nullable = false)
    private String password;

	/**
	 * User role.
	 * */
    @ManyToOne
    @JoinColumn(name = "role_id")
    private Role role;

}

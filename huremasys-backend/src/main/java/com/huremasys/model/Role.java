package com.huremasys.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
@Entity
@Table(name = "roles")
public class Role {
	/**
	 * Id.
	 * */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

	/**
	 * The name of the role.
	 * */
    @Column(nullable = false, unique = true)
    private String name;

}

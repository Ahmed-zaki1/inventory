package com.inventory.app.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.inventory.app.model.User;

@Repository
public interface LoginRepository extends JpaRepository<User, Long> {

	@Query("SELECT u FROM User u WHERE u.username = :username AND u.password = :password")
	public User loginForm(@Param("username") String username, @Param("password") String password);
	
	
}

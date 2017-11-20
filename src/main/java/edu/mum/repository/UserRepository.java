package edu.mum.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import edu.mum.domain.User;

public interface UserRepository extends CrudRepository<User, Long> {

	public List<User> getAll();

	public User findByName(String name);

}

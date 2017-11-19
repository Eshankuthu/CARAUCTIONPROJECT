package edu.mum.repository;

import org.springframework.data.repository.CrudRepository;

import edu.mum.domain.User;

public interface UserRepository extends CrudRepository<User,Long>{

}

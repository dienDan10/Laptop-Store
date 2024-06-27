package com.urekk.laptopstore.repository;

import com.urekk.laptopstore.domain.Role;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RoleRepository extends JpaRepository<Role, Long> {

}

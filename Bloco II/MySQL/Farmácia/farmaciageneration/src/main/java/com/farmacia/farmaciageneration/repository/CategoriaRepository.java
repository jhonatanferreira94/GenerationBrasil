package com.farmacia.farmaciageneration.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.farmacia.farmaciageneration.model.CategoriaModel;

@Repository
public interface CategoriaRepository extends JpaRepository<CategoriaModel, Long> {

	public List <CategoriaModel> findAllByNomeContainingIgnoreCase(@Param("tipo") String nome);

}
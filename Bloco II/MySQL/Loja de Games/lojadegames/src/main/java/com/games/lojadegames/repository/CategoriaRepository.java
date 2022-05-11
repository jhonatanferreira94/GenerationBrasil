package com.games.lojadegames.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.games.lojadegames.model.CategoriaModel;

public interface CategoriaRepository extends JpaRepository<CategoriaModel, Long> {
	public List<CategoriaModel> findAllByDescricaoContainingIgnoreCase(String descricao);

}

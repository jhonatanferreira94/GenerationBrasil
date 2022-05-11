package com.games.lojadegames.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.games.lojadegames.model.CategoriaModel;
import com.games.lojadegames.repository.CategoriaRepository;

@RestController
@CrossOrigin(origins="*", allowedHeaders = "*")
@RequestMapping("/games")
public class CategoriaController {
	
	@Autowired
	private CategoriaRepository repository;
	
	@GetMapping
	public ResponseEntity<List<CategoriaModel>> getAll(){
		return ResponseEntity.ok(repository.findAll());
		
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<CategoriaModel> getById(@PathVariable Long id){
		return repository.findById(id).map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.notFound().build());		
	}
	
	@GetMapping("/descricao/{descricao}")
	public ResponseEntity<List<CategoriaModel>> getByName(@PathVariable String descricao){
		return ResponseEntity.ok(repository.findAllByDescricaoContainingIgnoreCase(descricao));		
	}
	
	@PostMapping
	public ResponseEntity<CategoriaModel> post (@Valid @RequestBody CategoriaModel tb_categoria){
		return ResponseEntity.status(HttpStatus.CREATED)
				.body(repository.save(tb_categoria));
		
	}
	
	@PutMapping
	public ResponseEntity<CategoriaModel> put(@Valid @RequestBody CategoriaModel categoria){
		return repository.findById(categoria.getId())
				.map(resp -> ResponseEntity.status(HttpStatus.OK).body(repository.save(categoria)))
				.orElse(ResponseEntity.notFound().build());
	}
	
	@DeleteMapping("/{id}")
	public void delete(@PathVariable Long id){
		repository.deleteById(id);
		
	}
	
	
}
	
	

package com.generation.blogpessoal.controller;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.Optional;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import com.generation.blogpessoal.model.Usuario;
import com.generation.blogpessoal.service.UsuarioService;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class UsuarioControllerTest {
	
	@Autowired
	private TestRestTemplate testRestTemplate;
	
	@Autowired
	private UsuarioService usuarioService;
	
	@Test
	@Order(1)
	@DisplayName("Cadastro de usuario")
	public void criarUmUsuario() {

		HttpEntity<Usuario> requisicao = new HttpEntity<Usuario>(
				new Usuario(0L, "Paulo Antunes", "paulo_antunes@gmail.com", "1234567", "https://i.imgur.com/BA2hH3f.jpeg"));

		ResponseEntity<Usuario> resposta = testRestTemplate.exchange("/usuarios/cadastrar", HttpMethod.POST, requisicao,
				Usuario.class);

		assertEquals(HttpStatus.CREATED, resposta.getStatusCode());
		assertEquals(requisicao.getBody().getNome(), resposta.getBody().getNome());
		assertEquals(requisicao.getBody().getUsuario(), resposta.getBody().getUsuario());

	}
	
	@Test
	@Order(2)
	@DisplayName("Não deve permitir a duplicação de usuario")
	public void naoDeveDuplicarUsuario() {

		usuarioService.cadastraUsuario(
				new Usuario(0L, "Maria da Silva", "maria_silva@gmail.com", "7070", "https://i.imgur.com/BA2hH3f.jpeg"));

		HttpEntity<Usuario> requisicao = new HttpEntity<Usuario>(
				new Usuario(0L, "Maria da Silva", "maria_silva@gmail.com", "7070", "https://i.imgur.com/BA2hH3f.jpeg"));

		ResponseEntity<Usuario> resposta = testRestTemplate.exchange("/usuarios/cadastrar", HttpMethod.POST, requisicao,
				Usuario.class);

		assertEquals(HttpStatus.BAD_REQUEST, resposta.getStatusCode());

	}
	
	@Test
	@Order(3)
	@DisplayName("Deve alterar um usuario")
	public void deveAtualizarUmUsuario() {

		Optional<Usuario> usuarioCreate = usuarioService.cadastraUsuario(
				new Usuario(0L, "Ana Carolyna", "anacarolyna@gmail.com", "12345", "https://i.imgur.com/BA2hH3f.jpeg"));

		Usuario usuarioUpdate = new Usuario(usuarioCreate.get().getId(), "Ana Carolyna Diniz", "anacarolynad@gmail.com",
				"12345", "https://i.imgur.com/BA2hH3f.jpeg");

		HttpEntity<Usuario> requisicao = new HttpEntity<Usuario>(usuarioUpdate);

		ResponseEntity<Usuario> resposta = testRestTemplate.withBasicAuth("root", "root")
				.exchange("/usuarios/atualizar", HttpMethod.PUT, requisicao, Usuario.class);

		assertEquals(HttpStatus.OK, resposta.getStatusCode());
		assertEquals(usuarioUpdate.getNome(), resposta.getBody().getNome());
		assertEquals(usuarioUpdate.getUsuario(), resposta.getBody().getUsuario());

	}
	
	@Test
	@Order(4)
	@DisplayName("Deve mostrar todos os usuarios")
	public void mostrarTodosUsuarios() {

		usuarioService.cadastraUsuario(
				new Usuario(0L, "Luiza", "luiza@gmail.com", "7890", "https://i.imgur.com/BA2hH3f.jpeg"));

		usuarioService.cadastraUsuario(
				new Usuario(0L, "Augusto", "augusto@gmail.com", "7777", "https://i.imgur.com/BA2hH3f.jpeg"));

		ResponseEntity<String> resposta = testRestTemplate.withBasicAuth("root", "root").exchange("/usuarios/all",
				HttpMethod.GET, null, String.class);

		assertEquals(HttpStatus.OK, resposta.getStatusCode());

	}
	
	@Test
	@Order(5)
	@DisplayName("Deve deletar um usuario")
	public void deletarUsuario() {

		usuarioService.cadastraUsuario(
				new Usuario(0L, "Luiza", "luiza@gmail.com", "7890", "https://i.imgur.com/BA2hH3f.jpeg"));

		usuarioService.cadastraUsuario(
				new Usuario(0L, "Augusto", "augusto@gmail.com", "7777", "https://i.imgur.com/BA2hH3f.jpeg"));

		ResponseEntity<String> resposta = testRestTemplate.withBasicAuth("root", "root").exchange("/usuarios/1",
				HttpMethod.DELETE, null, String.class);

		assertEquals(HttpStatus.OK, resposta.getStatusCode());

	}


}
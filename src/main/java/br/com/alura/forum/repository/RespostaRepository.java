package br.com.alura.forum.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.alura.forum.modelo.Resposta;

public interface RespostaRepository extends JpaRepository<Resposta, Long> {

}

package br.com.alura.forum.config.seguranca;

import java.util.Date;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import br.com.alura.forum.modelo.Usuario;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

@Service
public class TokenService {
	
	@Value("${forum.jwt.expiration}")
	private String expiration;
	
	@Value("${forum.jwt.secret}")
	private String secret;

	public String gerarToken(Authentication authentication) {
		Usuario logado = (Usuario) authentication.getPrincipal();
		Date dataGeracao= new Date();
		Date dataExpiracao = new Date(dataGeracao.getTime() + Long.parseLong(expiration));
		
		return Jwts.builder()
				.setIssuer("API Fórum Alura")
				.setSubject(logado.getNomeUsuario())
				.setIssuedAt(dataGeracao)
				.setExpiration(dataExpiracao)
				.signWith(SignatureAlgorithm.HS256, secret)
				.compact();
	}

}

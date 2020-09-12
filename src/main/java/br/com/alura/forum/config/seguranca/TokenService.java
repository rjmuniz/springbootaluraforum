package br.com.alura.forum.config.seguranca;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import br.com.alura.forum.modelo.Usuario;
import io.jsonwebtoken.Claims;
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
				.setSubject(logado.getId().toString())
				.setIssuedAt(dataGeracao)
				.setExpiration(dataExpiracao)
				.signWith(SignatureAlgorithm.HS256, secret)
				.compact();
	}

	public boolean isTokenValido(String token) {
		try {
			Jwts.parser().setSigningKey(secret).parseClaimsJws(token);
			return true;
		}  catch (Exception e) {
			return false;
		}
	}
	

	public String recuperarToken(HttpServletRequest request) {
		String token = request.getHeader("Authorization");
		if(token == null || token.isEmpty() || !token.startsWith("Bearer "))
			return null;
		
		return token.substring(7, token.length());
	}

	public long getIdUsuario(String token) {
		try {
			Claims body = Jwts.parser().setSigningKey(secret).parseClaimsJws(token).getBody();
			return Long.parseLong(body.getSubject());
		}  catch (Exception e) {
			return 0;
		}
	}

}

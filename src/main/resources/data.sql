INSERT INTO USUARIO(nome, email, senha) VALUES ('Aluno','aluno@email.com.br', '123456');

INSERT INTO CURSO(nome, categoria) VALUES ('Spring boot', 'Programação');
INSERT INTO CURSO(nome, categoria) VALUES ('HTML 5', 'Front-end');

INSERT INTO TOPICO(titulo,mensagem, data_criacao, status, autor_id, curso_id) VALUES ('Dúvida','Erro ao criar projeto','2020-10-01 20:10:11','NAO_RESPONDIDO',1,1);
INSERT INTO TOPICO(titulo,mensagem, data_criacao, status, autor_id, curso_id) VALUES ('Dúvida 2','Projeto não compila','2020-9-11 23:57:11','NAO_RESPONDIDO',1,1);
INSERT INTO TOPICO(titulo,mensagem, data_criacao, status, autor_id, curso_id) VALUES ('Dúvida 3','Tag Html','2020-01-01 20:20:11','NAO_RESPONDIDO',1,2);



INSERT INTO RESPOSTA(mensagem, data_criacao, solucao, autor_id, topico_id) VALUES ('tenta reiniciar','2020-10-02 20:10:11',0,1,1);
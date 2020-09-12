INSERT INTO USUARIO(nome, nome_usuario, email, senha, habilitado) VALUES ('Primeiro Aluno','aluno1', 'aluno1@email.com.br', '$2a$10$5.1ah.t1TC07Q4YAOWLQY.Kmcj38YHhAsUm32KCcaN.bgKclQevoq', true);
INSERT INTO USUARIO(nome, nome_usuario, email, senha, habilitado) VALUES ('Segundo Aluno','aluno2', 'aluno2@email.com.br', '$2a$10$5.1ah.t1TC07Q4YAOWLQY.Kmcj38YHhAsUm32KCcaN.bgKclQevoq', true);
INSERT INTO USUARIO(nome, nome_usuario, email, senha, habilitado) VALUES ('Terceiro Aluno','aluno3', 'aluno2@email.com.br', '$2a$10$5.1ah.t1TC07Q4YAOWLQY.Kmcj38YHhAsUm32KCcaN.bgKclQevoq', false);
INSERT INTO CURSO(nome, categoria) VALUES ('Spring boot', 'Programação');
INSERT INTO CURSO(nome, categoria) VALUES ('HTML 5', 'Front-end');

INSERT INTO TOPICO(titulo,mensagem, data_criacao, status, autor_id, curso_id) VALUES ('Dúvida','Erro ao criar projeto','2020-10-01 20:10:11','NAO_RESPONDIDO',1,1);
INSERT INTO TOPICO(titulo,mensagem, data_criacao, status, autor_id, curso_id) VALUES ('Dúvida 2','Projeto não compila','2020-9-11 23:57:11','NAO_RESPONDIDO',1,1);
INSERT INTO TOPICO(titulo,mensagem, data_criacao, status, autor_id, curso_id) VALUES ('Dúvida 3','Tag Html','2020-01-01 20:20:11','NAO_RESPONDIDO',1,2);



INSERT INTO RESPOSTA(mensagem, data_criacao, solucao, autor_id, topico_id) VALUES ('tenta reiniciar','2020-10-02 20:10:11',0,1,1);
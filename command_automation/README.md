
## Automação de comandos

Neste mini projeto pensei em trazer algumas das experiências diárias que tenho na minha máquina do trabalho (via terminal). Nós desenvolvedores sempre gostamos de personalizar/configurar nosso computador e poder usar de tudo que ele oferece.

### Dores

Todo dia chego no meu trabalho e rodo os comando no terminal do meu computador para subir as aplicações pela minha máquina.

	cd /home/kany/projetos/admin-view/ && npm run dev
	cd /home/kany/projetos/admin-api/ && mvn spring-boot:run -Dspring-boot.run.profiles=dev

### Solução

Pensei numa solução para que eu pudesse rodar todos esse comandos com apenas um. Foi dai que tive a ideia de escrever um script `.sh` para poder automatizar meu tempo.

- [Script.sh](https://github.com/kanyesteves/scripts.sh/blob/master/run_app.sh)


Abraço !!!
### Fim

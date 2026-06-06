# si2023
O projeto agora possui um site estático simples, feito com HTML, CSS e jQuery, com foco didático.

https://candretta-uniara-edu-br.github.io/si2023/
https://github.com/candretta-uniara-edu-br/si2023/

## instruções
Ambiente da turma 2023 do curso de Sistemas de Informação da Uniara para experiências e testes sobre versionamento, DevOps e CI/CD com apoio do GitHub.

Este arquivo deve ser sempre consultado e incrementado cronologicamente por colaboradores ou por agentes autônomos. Aqui ficará a descrição do site/sistema e o registro das operações de incremento ou ajustes realizados.

Para colaborar no projeto, cada aluno precisa solicitar acesso ao repositório criando uma issue em https://github.com/candretta-uniara-edu-br/si2023/issues/new.

O acesso só será liberado para endereços `@uniara.edu.br`, para garantir que apenas alunos da Uniara participem do projeto.

Na issue, informe corretamente o e-mail institucional `@uniara.edu.br` que será usado no GitHub Desktop e no recebimento do convite.

Depois da liberação, o convite pode ser aceito em https://github.com/candretta-uniara-edu-br/si2023/invitations ou https://github.com/settings/repositories.

### estrutura do site


Arquivos principais:

- `index.html`: página inicial com a descrição do projeto.
- `contato.html`: página de contato da turma/projeto.
- `alunos.html`: lista de alunos da turma.
- `participar.html`: guia resumido de participação para os alunos.
- `css/styles.css`: estilos compartilhados.
- `js/main.js`: comportamentos da interface e contagem automática dos cards de alunos.
- `curriculos/modelo.html`: modelo base para cada aluno criar seu currículo.

### fluxo de trabalho sugerido

1. Solicite acesso ao repositório.
2. Crie a solicitação em https://github.com/candretta-uniara-edu-br/si2023/issues/new informando que deseja acesso ao repositório e escreva corretamente seu e-mail institucional `@uniara.edu.br`.
3. Aguarde e aceite o convite em https://github.com/settings/repositories.
4. Clone o projeto no GitHub Desktop.
5. Crie uma branch com seu nome completo, por exemplo: `maria-souza` ou `joao-silva`.
6. Abra a pasta do projeto no VS Code.
7. Copie o arquivo `curriculos/modelo.html` para um novo arquivo de currículo com o seu nome.
8. Edite a cópia com os seus dados.
9. Abra `alunos.html` e adicione um card com seu nome, código (RA) e link para o seu currículo na pasta `curriculos`.
10. Não altere nem renomeie o arquivo original `curriculos/modelo.html`.
11. Faça commit com uma mensagem simples, por exemplo: `Adiciona currículo e card de Maria Souza`.
12. Envie as alterações para o repositório.

### como criar seu currículo

1. Copie o arquivo `curriculos/modelo.html`, por exemplo, para `curriculos/maria-souza.html`.
2. Edite a nova página com os seus dados.
3. Não altere nem renomeie o arquivo original `curriculos/modelo.html`.

### como adicionar seu card na página de alunos

1. Abra o arquivo `alunos.html` e localize a seção com os cards dos alunos (bloco `div` com id `lista-alunos`).
2. Copie um dos blocos `article` que representa um aluno e cole-o dentro de `div#lista-alunos`.
3. Atualize o conteúdo do `article` com seu nome, código (RA) e o link para o seu currículo. Exemplo:

```html
<article class="panel student-card">
	<h3>Seu Nome Completo</h3>
	<p class="student-code">Código: RAxxxxxxx</p>
	<a class="student-link" href="curriculos/seu-arquivo.html">Ver currículo</a>
</article>
```

4. Faça commit com mensagem clara, por exemplo: `Adiciona currículo e card de Seu Nome`.
5. Envie (push) suas alterações para o repositório.

Observações:
- Use nomes de arquivo sem espaços e com hifens, por exemplo `maria-souza.html`.
- Garanta que o `href` do link aponte corretamente para o arquivo dentro da pasta `curriculos`.
- Evite alterar a ordem ou o formato dos outros cards para não quebrar o layout.

### como testar

Depois de criar o seu arquivo, acesse a URL completa no navegador usando o nome do arquivo criado dentro da pasta `curriculos`.

Exemplo:

`https://candretta-uniara-edu-br.github.io/si2023/curriculos/maria-souza.html`

### checklist antes de enviar

1. Você criou e está trabalhando em uma branch com seu nome completo (ex.: `maria-souza`).
2. O arquivo do currículo está dentro da pasta `curriculos`.
3. O novo arquivo foi criado a partir de `curriculos/modelo.html`.
4. O arquivo original `curriculos/modelo.html` não foi alterado nem renomeado.
5. Você adicionou um card com seu nome, código (RA) e link do currículo em `alunos.html`.
6. O currículo abre normalmente pela URL completa.
7. Você fez commit com mensagem clara (ex.: `Adiciona currículo e card de Seu Nome`).
8. Você enviou (push) as alterações para o repositório.

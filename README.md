# si2023
https://candretta-uniara-edu-br.github.io/si2023/

https://github.com/candretta-uniara-edu-br/si2023/

## instruções
Ambiente da turma 2023 do curso de Sistemas de Informação da Uniara para experiências e testes sobre versionamento, DevOps e CI/CD com apoio do GitHub.

Este arquivo deve ser sempre consultado e incrementado cronologicamente por colaboradores ou por agentes autônomos. Aqui ficará a descrição do site/sistema e o registro das operações de incremento ou ajustes realizados.

Para colaborar no projeto, cada aluno precisa solicitar acesso ao repositório criando uma issue em https://github.com/candretta-uniara-edu-br/si2023/issues/new.

O acesso só será liberado para endereços `@uniara.edu.br`, para garantir que apenas alunos da Uniara participem do projeto.

Na issue, informe corretamente o e-mail institucional `@uniara.edu.br` que será usado no GitHub Desktop e no recebimento do convite.

Depois da liberação, o convite pode ser aceito em https://github.com/candretta-uniara-edu-br/si2023/invitations ou https://github.com/settings/repositories.

### objetivo da atividade

Cada aluno deverá:

1. Criar sua própria página de currículo na pasta `curriculos`.
2. Copiar `curriculos/modelo.html` para um novo arquivo com o seu nome.
3. Editar apenas a cópia com os seus dados e publicar a alteração no repositório.

### fluxo de trabalho sugerido

1. Solicite acesso ao repositório.
2. Crie a solicitação em https://github.com/candretta-uniara-edu-br/si2023/issues/new informando que deseja acesso ao repositório e escreva corretamente seu e-mail institucional `@uniara.edu.br`.
3. Aguarde e aceite o convite em https://github.com/settings/repositories.
4. Clone o projeto no GitHub Desktop.
5. Abra a pasta do projeto no VS Code.
6. Copie o arquivo `curriculos/modelo.html` para um novo arquivo de currículo com o seu nome.
7. Edite a cópia com os seus dados.
8. Não altere nem renomeie o arquivo original `curriculos/modelo.html`.
9. Faça commit com uma mensagem simples, por exemplo: `Adiciona currículo de Maria Souza`.
10. Envie as alterações para o repositório.

### estrutura do site

O projeto agora possui um site estático simples, feito com HTML, CSS e jQuery, com foco didático.

Arquivos principais:

- `index.html`: página inicial com a descrição do projeto.
- `contato.html`: página de contato da turma/projeto.
- `alunos.html`: lista de alunos da turma.
- `participar.html`: guia resumido de participação para os alunos.
- `css/styles.css`: estilos compartilhados.
- `js/main.js`: comportamentos da interface e contagem automática dos cards de alunos.
- `curriculos/modelo.html`: modelo base para cada aluno criar seu currículo.

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

1. O arquivo do currículo está dentro da pasta `curriculos`.
2. O novo arquivo foi criado a partir de `curriculos/modelo.html`.
3. O arquivo original `curriculos/modelo.html` não foi alterado nem renomeado.
4. O currículo abre normalmente pela URL completa.

### registro desta alteração

- Criação de um site estático simples e organizado para uso didático em sala.
- Inclusão de navegação entre páginas, lista de alunos e modelo de currículo individual.
- Revisão das instruções para focar apenas na cópia do modelo de currículo e na edição do arquivo individual.
- Reforço do uso obrigatório de e-mail `@uniara.edu.br` e inclusão dos links diretos para abrir a issue e aceitar o convite.

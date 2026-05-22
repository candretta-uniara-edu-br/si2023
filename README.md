# si2023
https://candretta-uniara-edu-br.github.io/si2023/

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
2. Adicionar seu card manualmente em `alunos.html`.
3. Publicar a alteração no repositório para praticar edição de HTML, versionamento e resolução de conflitos.

### fluxo de trabalho sugerido

1. Solicite acesso ao repositório.
2. Crie a solicitação em https://github.com/candretta-uniara-edu-br/si2023/issues/new informando que deseja acesso ao repositório e escreva corretamente seu e-mail institucional `@uniara.edu.br`.
3. Aguarde e aceite o convite em https://github.com/settings/repositories.
4. Clone o projeto no GitHub Desktop.
5. Abra a pasta do projeto no VS Code.
6. Crie seu currículo a partir do arquivo `curriculos/modelo.html`.
7. Edite `alunos.html` e adicione seu card na lista.
8. Revise os arquivos para verificar se o link para o currículo está correto.
9. Faça commit com uma mensagem simples, por exemplo: `Adiciona currículo de Maria Souza`.
10. Envie as alterações para o repositório.

### estrutura do site

O projeto agora possui um site estático simples, feito com HTML, CSS e jQuery, com foco didático.

Arquivos principais:

- `index.html`: página inicial com a descrição do projeto.
- `contato.html`: página de contato da turma/projeto.
- `alunos.html`: lista de alunos editada diretamente no HTML.
- `participar.html`: guia resumido de participação para os alunos.
- `css/styles.css`: estilos compartilhados.
- `js/main.js`: comportamentos da interface e contagem automática dos cards de alunos.
- `curriculos/modelo.html`: modelo base para cada aluno criar seu currículo.

### como adicionar um aluno

1. Duplique o arquivo `curriculos/modelo.html` e renomeie, por exemplo, para `curriculos/maria-souza.html`.
2. Edite a nova página com os dados do aluno.
3. Abra `alunos.html` e localize a seção `id="lista-alunos"`.
4. Copie um card existente e cole dentro dessa seção.
5. Altere nome, código, curso e link para o seu currículo.
6. Se o card `Aluno Exemplo` não for mais necessário, substitua-o por um aluno real ou remova-o.

### exemplo de card

Use este modelo dentro de `alunos.html`:

```html
<article class="panel student-card">
    <h3>Maria Souza</h3>
    <p class="student-code">Código: RA2023001</p>
    <a class="student-link" href="curriculos/maria-souza.html">Ver currículo</a>
</article>
```

### checklist antes de enviar

1. O arquivo do currículo está dentro da pasta `curriculos`.
2. O nome do arquivo no link de `alunos.html` está correto.
3. O card foi inserido dentro da seção `#lista-alunos`.
4. O currículo abre normalmente ao clicar no link.
5. O card de exemplo não ficou sobrando sem necessidade.

### registro desta alteração

- Criação de um site estático simples e organizado para uso didático em sala.
- Inclusão de navegação entre páginas, lista de alunos e modelo de currículo individual.
- Ajuste da lista de alunos para edição manual em HTML, em vez de cadastro central em JavaScript.
- Revisão das instruções para deixar o fluxo de edição e entrega mais claro para os alunos.
- Reforço do uso obrigatório de e-mail `@uniara.edu.br` e inclusão dos links diretos para abrir a issue e aceitar o convite.

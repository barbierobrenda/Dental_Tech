# Brenda IDE v3 — Blue iPad Edition

## Novidades
- Identidade azul e logo próprio (`brenda-ide-logo.jpg`).
- Preview em tempo real para celular/tablet/desktop.
- Autosave, busca, formatação, copiar código, backup e atualização com backup.
- Integração opcional com GitHub: listar repositórios com permissão de push, navegar em pastas, abrir arquivos e commitar.
- Backup local automático antes de cada commit.
- Token fica somente em `sessionStorage`: fechar a aba encerra a sessão da IDE.

## Conectar ao GitHub com o mínimo de acesso
Crie um **fine-grained personal access token** no GitHub:
1. Restrinja o token somente ao repositório que deseja editar.
2. Em Repository permissions, dê **Contents: Read and write**.
3. Não conceda Administration, Actions ou outras permissões que a IDE não precisa.
4. Na Brenda IDE, toque em **GitHub**, cole o token e conecte.
5. Abra um arquivo do repositório, edite e toque em **Commitar**.

A IDE não grava o token no código nem no `localStorage`; ele permanece somente na sessão da aba. Para uma publicação pública ainda mais robusta, o próximo passo recomendado é trocar PAT por uma GitHub App/OAuth com backend.

## GitHub Pages
Envie todos os arquivos deste ZIP para um repositório e habilite Settings → Pages → Deploy from a branch → main / root.


## v3.3 Minimal iPad
- Interface mais limpa e plana.
- Barra lateral compacta com atalhos.
- Rodapé e safe area do iPad em azul escuro, sem faixa branca.
- Mantém GitHub, backup manual, preview e atualização.

## v4.0 — Abas multi-arquivo
- **Abas**: edite vários arquivos (HTML, CSS, JS, JSON, Markdown, TXT) ao mesmo tempo, com criação, fechamento e renomeação (duplo clique no nome da aba) de arquivos.
- **Preview combinado**: o preview localiza automaticamente o `index.html` (ou o HTML aberto) e injeta os `<link rel="stylesheet">` e `<script src="...">` referenciados, desde que os arquivos estejam abertos em outras abas — assim dá pra trabalhar com `index.html` + `style.css` + `script.js` como um projeto real.
- **Configurações** (ícone ⚙ na barra lateral): tema, tamanho da fonte do editor, tamanho da tabulação, quebra de linha automática, atraso do preview ao vivo, atalho para o GitHub e opção de limpar todos os arquivos da sessão.
- **Persistência de sessão**: o projeto inteiro (todas as abas) é preservado ao usar "Atualizar" ou recarregar a aba, incluindo os metadados de arquivos abertos do GitHub (repositório/branch/caminho/sha) para permitir novos commits.
- **Backup/restauração de projeto**: "Backup" agora baixa todos os arquivos abertos num único `.json`; abrir esse mesmo `.json` pelo botão "Abrir" restaura o projeto completo.
- **Baixar arquivo atual**: novo botão para baixar só o arquivo da aba ativa, no formato correto.
- **GitHub por aba**: cada aba aberta do GitHub guarda seu próprio repositório/branch/caminho, então dá pra ter arquivos de repositórios diferentes abertos ao mesmo tempo e commitar cada um separadamente.
- Aparência renovada: nova barra de abas, sombras e cantos mais suaves, indicadores coloridos por tipo de arquivo, melhor foco de acessibilidade e tela de Configurações completa.

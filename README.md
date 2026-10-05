# Antonio Dental Tech

Aplicativo de controle de contas para laboratório de prótese dental. Funciona offline, em um único `index.html`, e guarda os dados no próprio aparelho.

## O que faz
- Clientes, serviços (produtos) e materiais com controle de estoque
- Lançamento de contas, notas com saldo anterior e pagamentos
- Trabalhos (ordens de serviço), agenda de entregas e aviso de pronto por WhatsApp
- Relatório mensal em PDF por cliente
- Etiqueta de envio (aba Etiquetas)
- Backup em arquivo `.json`, backup automático interno e restauração

## Instalação
Veja `COMO INSTALAR.txt`. Para publicar no GitHub Pages, envie estes arquivos para o repositório e ative Settings → Pages → main / root.

## Dados
Tudo fica no `localStorage` do navegador do aparelho. Baixe o backup em Ajustes com frequência. O app lembra quando faz 7 dias ou mais sem backup.

## Arquivos
`index.html` (app), `sw.js` (offline), `manifest.json`, `logo.png`, `icon-192.png`, `icon-512.png`, `grinch-natal.png` (arte de Natal da tela inicial), `ATUALIZAR_GIT.cmd` (envia as mudanças ao GitHub no Windows).

# TradeFoot AI Online — publicação gratuita (beta)

## O que esta versão faz
- Node.js/Express preparado para Render.
- PostgreSQL persistente no Supabase.
- Registo/login, previsões, carteira e trading virtual com histórico.
- API-Sports continua a ser chamada apenas pelo servidor.
- Inicialização automática do esquema PostgreSQL.
- Primeiro utilizador com o email `ADMIN_EMAIL` recebe perfil admin ao registar-se.

## Antes de publicar
1. Faz backup da pasta `data` e do ficheiro SQLite local.
2. Esta versão cloud **não importa automaticamente** os utilizadores/operações da base SQLite. A migração de dados antigos é uma tarefa separada; não apagues o projeto local.
3. Cria contas gratuitas no GitHub, Supabase e Render. Os limites gratuitos podem mudar; serviços gratuitos podem suspender/hibernar e não são adequados para produção crítica.

## 1. Supabase
1. Cria um projeto em https://supabase.com/ (região europeia se disponível no plano).
2. Em Project Settings → Database, copia a connection string PostgreSQL (preferir Session pooler se a ligação direta não funcionar).
3. Guarda-a em segurança. Não a coloques no código nem num repositório público.

## 2. GitHub
1. Cria um repositório privado chamado `tradefoot-ai-online`.
2. Extrai esta pasta e envia todos os ficheiros para o repositório.
3. Confirma que `.env` não é enviado; o `.gitignore` exclui-o.

## 3. Render
1. Cria um Web Service no Render e liga o repositório GitHub.
2. Runtime Node; Build Command `npm install`; Start Command `npm start`.
3. No separador Environment, adiciona: `DATABASE_URL` (connection string Supabase), `DATABASE_SSL=true`, `JWT_SECRET` (segredo aleatório longo), `ADMIN_EMAIL` (email que será administrador ao criar conta) e `API_SPORTS_KEY` (chave API-Sports, se aplicável).
4. Deploy. O servidor cria as tabelas automaticamente. Testa `https://TEU-SERVICO.onrender.com/api/health`.
5. Abre o endereço público e cria a conta com o email definido em `ADMIN_EMAIL`.

## Segurança e limitações
- Nunca partilhes `DATABASE_URL`, `JWT_SECRET` ou chaves API.
- O plano gratuito do Render pode suspender a aplicação após inatividade; o primeiro acesso pode demorar. O filesystem do serviço gratuito é efémero, por isso a base de dados é externa.
- O plano gratuito do Supabase tem limites e pode pausar projetos inativos. Faz backups.
- O endpoint `/api/admin/overview` é reservado a contas com role admin; a gestão visual completa de utilizadores/pagamentos ainda não está implementada.
- Os planos Free/Premium e pagamentos não estão ativos nesta versão. `plan` é apenas um campo de perfil.
- Ténis continua sem integração de dados.
- Antes de convidar público, acrescentar verificação de email, recuperação de palavra-passe, política de privacidade/RGPD, backups testados, monitorização e testes de segurança/carga.
- O cash-out é manual e virtual; não é uma cotação real.

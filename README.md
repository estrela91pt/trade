# TradeFoot AI Online — Beta

Aplicação Node.js/Express com PostgreSQL, preparada para publicação no Render e Supabase.

## Executar localmente
1. Instalar Node.js 22 LTS.
2. Copiar `.env.example` para `.env` e preencher `DATABASE_URL`, `JWT_SECRET` e, se aplicável, `API_SPORTS_KEY`.
3. `npm install`
4. `npm start`
5. Abrir `http://localhost:3000`.

## Publicação gratuita
Segue o guia `DEPLOY_RENDER_SUPABASE_PT.md`. Não publiques o ficheiro `.env` nem segredos.

## Importante
Esta versão cloud usa PostgreSQL e não importa automaticamente a base de dados SQLite das versões desktop V4.x. Mantém uma cópia de segurança local. Os planos Premium/pagamentos e o painel administrativo visual ainda não estão implementados; existe apenas um endpoint de resumo administrativo protegido por role.

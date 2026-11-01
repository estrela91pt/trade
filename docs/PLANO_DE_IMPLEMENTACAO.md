# TradeFoot AI V4.1 — Plano de implementação

Esta atualização parte do starter V4 e acrescenta documentação técnica e de produto. Não certifica que as funcionalidades descritas estejam implementadas ou prontas para produção.

## Prioridades
1. Auditar o código existente e executar a aplicação.
2. Validar autenticação, sessões, permissões e isolamento dos dados por utilizador.
3. Integrar fontes reais de dados por modalidade, mantendo as chaves exclusivamente no servidor.
4. Criar adaptadores independentes para futebol, basquetebol, ténis, hóquei no gelo, basebol, andebol, voleibol e futebol americano.
5. Desenvolver modelos específicos por modalidade e compará-los com baselines.
6. Avaliar previsões com Brier Score, log loss e calibração, usando separação temporal e evitando fuga de informação.
7. Implementar limites Free/Premium no backend.
8. Integrar pagamentos reais com webhooks assinados e idempotentes.
9. Criar testes automatizados, logs, monitorização e backups.
10. Preparar publicação com HTTPS, gestão de segredos e política de privacidade.

## Critérios de aceitação
- Nunca inventar jogos, resultados, estatísticas ou probabilidades quando uma API falhar.
- Não expor chaves API, tokens ou passwords no frontend ou nos logs.
- Um utilizador nunca pode consultar ou alterar dados de outro.
- Todas as rotas Premium verificam o plano no servidor.
- Cada previsão regista evento, data, fonte, versão do modelo e probabilidades.
- Previsões são estimativas, nunca garantias de resultado ou lucro.
- Documentar os testes realmente executados e os resultados.

## Por implementar ou validar
Motor preditivo validado, cobertura de ténis, pagamentos, subscrições, recuperação/verificação de email, testes de segurança e deploy de produção.

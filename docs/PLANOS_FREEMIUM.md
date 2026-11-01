# Planos Free e Premium

Esta é uma especificação de produto; não significa que pagamentos ou bloqueios já estejam implementados.

| Funcionalidade | Free | Premium |
|---|---|---|
| Consulta de jogos | Limite diário configurável | Limite superior configurável |
| Histórico | Últimas 20 previsões | Histórico alargado |
| Análise avançada | Não | Quando implementada e validada |
| Exportação | Não | Quando implementada |
| Modalidades | As efetivamente integradas | Todas as efetivamente integradas |

## Regras técnicas
- O backend determina o plano; nunca confiar num valor enviado pelo browser.
- Persistir o estado da subscrição na base de dados.
- Validar assinaturas dos webhooks e garantir processamento idempotente.
- Estados sugeridos: `free`, `active`, `past_due`, `cancelled`, `expired`.
- Não guardar dados de cartão; usar checkout alojado por fornecedor de pagamentos.
- Definir limites após medir custos e quotas das APIs.

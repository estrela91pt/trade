# Arquitetura proposta

## Direção para produção
- Frontend servido por HTTPS.
- Backend Node.js com segredos em variáveis de ambiente.
- PostgreSQL gerido para produção multi-instância.
- Cache Redis ou equivalente para reduzir chamadas às APIs.
- Adaptadores independentes por fornecedor e modalidade.
- Pagamentos por checkout externo e webhooks assinados.
- Logs estruturados, métricas, alertas e rastreio de erros.
- Backups automáticos com testes regulares de restauro.

## Segurança a validar
- Expiração, rotação e revogação de sessões/tokens.
- Segredo JWT forte e fora do repositório.
- Validação de entradas e limites de tamanho.
- Rate limiting por IP e conta.
- CORS restritivo e Content Security Policy.
- Logs sem passwords, tokens, chaves ou dados pessoais desnecessários.
- Procedimentos para acesso, exportação e eliminação de dados pessoais.

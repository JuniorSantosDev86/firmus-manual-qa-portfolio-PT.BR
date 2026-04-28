# Matriz de Risco — Firmus QA Manual

| Área | Risco | Impacto | Probabilidade | Prioridade de teste | Mitigação sugerida |
|---|---|---|---|---|---|
| Autenticação | Rota protegida acessível sem sessão | Alto | Média | Alta | Executar testes de sessão, logout e refresh. |
| Clientes | Registros criados com dados incompletos | Alto | Alta | Alta | Reforçar validação de campos e retestar BUG-001/BUG-002. |
| Clientes | Exclusão não remove registro | Alto | Média | Alta | Retestar BUG-003 e validar feedback ao usuário. |
| Orçamentos | Campos inválidos aceitos | Alto | Alta | Alta | Retestar BUG-004 e BUG-005 com dados negativos. |
| Orçamentos | Layout quebra em mobile | Médio | Alta | Alta | Validar responsividade e regressão do BUG-006. |
| Visão Financeira | Valores inconsistentes ou mal formatados | Alto | Média | Alta | Validar cards, moeda, status e refresh. |
| NFSe | Informação fiscal duplicada ou sem clareza | Médio | Média | Média | Validar cards, status, número e provedor. |
| DAS | Usuário confunde orientação com canal oficial | Médio | Média | Média | Exigir clareza de handoff e estado vazio. |
| Entrada assistida | Criação automática sem confirmação | Alto | Média | Alta | Validar confirmação antes de criar registros. |
| Automação | Regra confusa gera efeito operacional indevido | Alto | Média | Alta | Validar clareza de condição, ação e ativação. |
| Responsividade | Overflow horizontal em listas e cards | Médio | Alta | Alta | Executar checklist responsivo por viewport. |
| Segurança básica | Mensagem técnica expõe detalhe interno | Médio | Baixa | Média | Validar mensagens sem exploração invasiva. |

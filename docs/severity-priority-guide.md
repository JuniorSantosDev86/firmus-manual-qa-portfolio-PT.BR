# Guia de Severidade e Prioridade — Firmus QA Manual

## Objetivo

Padronizar a classificação de bugs encontrados durante testes manuais do Firmus.

## Severidade

| Severidade | Descrição |
|---|---|
| Crítica | Bloqueia acesso, autenticação, operação principal ou expõe risco grave |
| Alta | Afeta fluxo importante sem contorno simples |
| Média | Afeta funcionalidade ou qualidade de dados com contorno possível |
| Baixa | Problema visual, textual ou de usabilidade com baixo impacto |

## Prioridade

| Prioridade | Descrição |
|---|---|
| Alta | Deve ser tratado rapidamente por impacto no negócio ou confiança |
| Média | Deve entrar em ciclo planejado de correção |
| Baixa | Pode ser corrigido posteriormente sem grande impacto |

## Exemplos no Firmus

| Situação | Severidade | Prioridade |
|---|---|---|
| Login válido não funciona | Crítica | Alta |
| Rota protegida abre sem autenticação | Crítica | Alta |
| Cliente válido não pode ser criado | Alta | Alta |
| Orçamento aceita valor textual | Média | Média |
| Layout mobile quebra em orçamento | Média | Média |
| Label pouco claro em card secundário | Baixa | Média |

## Regras

- Classificar pelo impacto observado, não pela solução técnica presumida.
- Reportar um bug por relatório.
- Não criar bug sem reprodução ou evidência observável suficiente.
- Reavaliar severidade e prioridade após mudanças de escopo ou regra de negócio.

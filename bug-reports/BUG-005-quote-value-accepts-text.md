# BUG-005 — Campo de valor do orçamento aceita texto em vez de valor numérico

| Campo | Informação |
|---|---|
| ID | BUG-005 |
| Título | Campo de valor do orçamento aceita texto em vez de valor numérico |
| Módulo | Orçamentos |
| Ambiente | Desenvolvimento local |
| Navegador | Google Chrome / Chromium-based |
| Sistema operacional | Ubuntu Linux |
| Dispositivo/viewport | Desktop |
| Severidade | Média |
| Prioridade | Média |
| Status | Aberto |
| Reportado por | Ademir dos Santos Junior |
| Data | 2026-04-24 |

## Resumo

O campo de valor monetário aceita texto e permite criar orçamento com valor inválido.

## Pré-condições

- A aplicação está em execução localmente.
- O usuário está autenticado no Firmus.
- O módulo **Orçamentos** está acessível.
- Existem dados ou ações suficientes para reproduzir o fluxo descrito.

## Passos para Reprodução

1. Abrir a aplicação Firmus.
2. Realizar login com credenciais válidas.
3. Acessar a área de Orçamentos.
4. Iniciar criação de orçamento.
5. Preencher o campo de valor com texto.
6. Preencher os demais campos conforme necessário.
7. Confirmar a criação.
8. Observar o comportamento do sistema.

## Resultado Atual

O orçamento é criado mesmo com texto no campo de valor.

## Resultado Esperado

O sistema deve rejeitar texto no campo monetário e exigir valor numérico válido.

## Evidência

- Screenshot: `../evidences/screenshots/BUG-005-quote-value-accepts-text.png`

## Impacto

Pode comprometer visão financeira, cobrança e confiabilidade dos orçamentos.

## Observações adicionais

Bug real preservado do ciclo de execução 01. O sentido original do defeito foi mantido e o texto foi padronizado em PT-BR.

## Critério de confirmação da correção

A correção será considerada confirmada quando o comportamento esperado for reproduzido no mesmo fluxo, sem regressão visual, sem erro inesperado e com feedback claro ao usuário.

## Sugestão de regressão após correção

Reexecutar com texto, caracteres especiais, valor negativo, zero e valor monetário válido.

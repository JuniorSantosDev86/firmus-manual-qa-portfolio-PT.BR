# BUG-004 — Orçamento pode ser criado com campos obrigatórios vazios ou inválidos

| Campo | Informação |
|---|---|
| ID | BUG-004 |
| Título | Orçamento pode ser criado com campos obrigatórios vazios ou inválidos |
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

O sistema permite criar orçamento com campos obrigatórios vazios ou preenchidos com dados inválidos/aleatórios.

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
5. Deixar campos obrigatórios vazios ou preencher com dados inválidos.
6. Confirmar a criação.
7. Observar o comportamento do sistema.

## Resultado Atual

O orçamento é criado mesmo com campos vazios ou inválidos.

## Resultado Esperado

O sistema deve impedir a criação e exibir mensagens de validação para os campos afetados.

## Evidência

- Screenshot: `../evidences/screenshots/BUG-004-quote-created-with-empty-or-invalid-fields.png`

## Impacto

Afeta qualidade de dados comerciais e pode gerar propostas sem informação confiável.

## Observações adicionais

Bug real preservado do ciclo de execução 01. O sentido original do defeito foi mantido e o texto foi padronizado em PT-BR.

## Critério de confirmação da correção

A correção será considerada confirmada quando o comportamento esperado for reproduzido no mesmo fluxo, sem regressão visual, sem erro inesperado e com feedback claro ao usuário.

## Sugestão de regressão após correção

Reexecutar criação com campos vazios, dados inválidos e dados válidos.

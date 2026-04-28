# BUG-003 — Ação de excluir cliente não remove o cliente após confirmação

| Campo | Informação |
|---|---|
| ID | BUG-003 |
| Título | Ação de excluir cliente não remove o cliente após confirmação |
| Módulo | Clientes |
| Ambiente | Desenvolvimento local |
| Navegador | Google Chrome / Chromium-based |
| Sistema operacional | Ubuntu Linux |
| Dispositivo/viewport | Desktop |
| Severidade | Alta |
| Prioridade | Alta |
| Status | Aberto |
| Reportado por | Ademir dos Santos Junior |
| Data | 2026-04-24 |

## Resumo

Após confirmar a exclusão de um cliente, o registro permanece na lista.

## Pré-condições

- A aplicação está em execução localmente.
- O usuário está autenticado no Firmus.
- O módulo **Clientes** está acessível.
- Existem dados ou ações suficientes para reproduzir o fluxo descrito.

## Passos para Reprodução

1. Abrir a aplicação Firmus.
2. Realizar login com credenciais válidas.
3. Acessar a área de Clientes.
4. Localizar cliente existente.
5. Acionar exclusão.
6. Confirmar a exclusão no popup.
7. Observar a lista de clientes.

## Resultado Atual

O popup de confirmação é exibido e confirmado, mas o cliente não é removido da lista.

## Resultado Esperado

Após confirmação, o cliente selecionado deve ser removido e o sistema deve exibir feedback claro da exclusão.

## Evidência

- Screenshot: `../evidences/screenshots/BUG-003-delete-client-not-working.png`

## Impacto

Afeta diretamente a gestão da base de clientes e impede manutenção correta dos registros.

## Observações adicionais

Bug real preservado do ciclo de execução 01. O sentido original do defeito foi mantido e o texto foi padronizado em PT-BR.

## Critério de confirmação da correção

A correção será considerada confirmada quando o comportamento esperado for reproduzido no mesmo fluxo, sem regressão visual, sem erro inesperado e com feedback claro ao usuário.

## Sugestão de regressão após correção

Reexecutar exclusão confirmada, cancelamento de exclusão e refresh após exclusão.

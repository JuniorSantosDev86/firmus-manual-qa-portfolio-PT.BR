# BUG-001 — Cliente pode ser criado preenchendo apenas o nome

| Campo | Informação |
|---|---|
| ID | BUG-001 |
| Título | Cliente pode ser criado preenchendo apenas o nome |
| Módulo | Clientes |
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

O sistema permite criar um cliente com apenas o campo nome preenchido, sem exigir informações adicionais necessárias para operação.

## Pré-condições

- A aplicação está em execução localmente.
- O usuário está autenticado no Firmus.
- O módulo **Clientes** está acessível.
- Existem dados ou ações suficientes para reproduzir o fluxo descrito.

## Passos para Reprodução

1. Abrir a aplicação Firmus.
2. Realizar login com credenciais válidas.
3. Acessar a área de Clientes.
4. Iniciar o cadastro de um novo cliente.
5. Preencher apenas o nome do cliente.
6. Deixar os demais campos vazios.
7. Confirmar o cadastro.
8. Observar o comportamento do sistema.

## Resultado Atual

O cliente é criado com sucesso mesmo quando apenas o nome é informado.

## Resultado Esperado

O sistema deve impedir a criação incompleta quando houver dados mínimos obrigatórios e deve exibir mensagens claras de validação.

## Evidência

- Screenshot: `../evidences/screenshots/BUG-001-client-created-with-only-name.png`

## Impacto

Afeta a qualidade da base de clientes e pode comprometer orçamentos, cobranças, reativação e comunicação futura.

## Observações adicionais

Bug real preservado do ciclo de execução 01. O sentido original do defeito foi mantido e o texto foi padronizado em PT-BR.

## Critério de confirmação da correção

A correção será considerada confirmada quando o comportamento esperado for reproduzido no mesmo fluxo, sem regressão visual, sem erro inesperado e com feedback claro ao usuário.

## Sugestão de regressão após correção

Reexecutar cadastro de cliente com apenas nome, com campos obrigatórios vazios e com dados válidos após a correção.

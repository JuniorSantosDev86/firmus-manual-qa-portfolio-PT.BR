# BUG-002 — Cliente pode ser criado sem informações de contato válidas

| Campo | Informação |
|---|---|
| ID | BUG-002 |
| Título | Cliente pode ser criado sem informações de contato válidas |
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

O sistema permite criar cliente sem contato ou com contato inválido.

## Pré-condições

- A aplicação está em execução localmente.
- O usuário está autenticado no Firmus.
- O módulo **Clientes** está acessível.
- Existem dados ou ações suficientes para reproduzir o fluxo descrito.

## Passos para Reprodução

1. Abrir a aplicação Firmus.
2. Realizar login com credenciais válidas.
3. Acessar a área de Clientes.
4. Iniciar cadastro de cliente.
5. Preencher os campos visíveis necessários para avançar.
6. Deixar contato vazio ou informar contato inválido.
7. Confirmar o cadastro.
8. Observar o comportamento do sistema.

## Resultado Atual

O cliente é criado sem informação de contato válida.

## Resultado Esperado

O sistema deve exigir contato válido ou informar claramente que o contato está ausente ou inválido.

## Evidência

- Screenshot: `../evidences/screenshots/BUG-002-client-invalid-contact-accepted.png`

## Impacto

Pode impedir comunicação com clientes e reduzir valor dos fluxos de cobrança, orçamento e reativação.

## Observações adicionais

Bug real preservado do ciclo de execução 01. O sentido original do defeito foi mantido e o texto foi padronizado em PT-BR.

## Critério de confirmação da correção

A correção será considerada confirmada quando o comportamento esperado for reproduzido no mesmo fluxo, sem regressão visual, sem erro inesperado e com feedback claro ao usuário.

## Sugestão de regressão após correção

Reexecutar cadastro com contato vazio, e-mail inválido, telefone inválido e contato válido.

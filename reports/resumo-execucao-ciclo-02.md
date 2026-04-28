# Resumo de Execução — Ciclo 02

## Objetivo do ciclo

Validar manualmente o módulo Perfil da Empresa do Firmus em ambiente local, cobrindo acesso, visualização, cadastro ou edição, validações, persistência, navegação, responsividade e clareza das informações.

## Escopo testado

Foram executados os casos `TC-EMP-001` a `TC-EMP-014` do módulo Perfil da Empresa.

## Ambiente

| Campo | Informação |
|---|---|
| Data | 2026-04-28 |
| Ambiente | Desenvolvimento local |
| URL | `http://localhost:3000/` |
| Navegador | Google Chrome 147.0.7727.116, modo headless |
| Sistema operacional | Ubuntu Linux 24.04 |
| Viewports | Desktop 1366x900 e mobile-like 390x844 |

## Resultado

| Status | Total |
|---|---:|
| Aprovado | 13 |
| Reprovado | 1 |
| Bloqueado | 0 |
| Não Aplicável | 0 |
| Não Executado | 0 |
| Total | 14 |

## Bugs encontrados

| ID | Módulo | Severidade | Prioridade | Resumo |
|---|---|---|---|---|
| BUG-007 | Perfil da Empresa | Baixa | Média | Mensagem de validação obrigatória exibida em inglês. |

## Decisão Go/No-Go

**Go com ressalva** para o módulo Perfil da Empresa.

O fluxo principal foi validado com sucesso, incluindo acesso, estado vazio, criação, salvamento, persistência, navegação e responsividade. A ressalva é a inconsistência de idioma em validação obrigatória.

## Riscos conhecidos

- Mensagens nativas de validação podem variar conforme idioma do navegador.
- Campos opcionais como WhatsApp e URL do logo não possuem validação profunda de formato documentada neste ciclo.

## Próximos passos

- Corrigir `BUG-007`.
- Reexecutar `TC-EMP-007` após correção.
- Definir critérios adicionais para validação de formato de campos opcionais em ciclo futuro.

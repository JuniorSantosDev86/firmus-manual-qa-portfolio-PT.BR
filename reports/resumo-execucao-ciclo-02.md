# Resumo de Execução — Ciclo 02

## Objetivo do ciclo

Validar manualmente o módulo Perfil da Empresa do Firmus em ambiente local, cobrindo acesso, visualização, cadastro ou edição, validações, persistência, navegação, responsividade e clareza das informações.

## Escopo testado

O escopo planejado incluiu o módulo Perfil da Empresa, com casos `TC-EMP-001` a `TC-EMP-014`.

A execução funcional foi bloqueada porque a aplicação Firmus não estava acessível em `http://localhost:3000/` durante o ciclo.

## Ambiente

| Campo | Informação |
|---|---|
| Data | 2026-04-28 |
| Ambiente | Desenvolvimento local |
| URL | `http://localhost:3000/` |
| Navegador | Google Chrome 147.0.7727.116 disponível no ambiente |
| Sistema operacional | Ubuntu Linux 24.04, kernel 6.17.0-22-generic |
| Viewports | Desktop e mobile-like planejados; não executados por bloqueio |

## Resultado

| Status | Total |
|---|---:|
| Aprovado | 0 |
| Reprovado | 0 |
| Bloqueado | 14 |
| Não Aplicável | 0 |
| Não Executado | 0 |
| Total | 14 |

## Bugs encontrados

Nenhum bug foi reportado no ciclo 02. A aplicação não estava acessível, portanto não houve validação funcional suficiente para caracterizar defeitos do módulo Perfil da Empresa.

## Decisão Go/No-Go

**No-Go para avaliação do módulo Perfil da Empresa neste ciclo.**

O bloqueio é ambiental. O resultado não aprova nem reprova o comportamento funcional do módulo.

## Riscos conhecidos

- O módulo Perfil da Empresa permanece sem execução funcional real.
- Não foi possível validar se a tela existe na versão atual.
- Não foi possível confirmar cadastro, edição, validações, persistência, navegação, responsividade ou conteúdo em PT-BR.

## Próximos passos

- Subir a aplicação Firmus em `http://localhost:3000/`.
- Confirmar credenciais válidas, caso haja autenticação.
- Reexecutar todos os casos `TC-EMP-001` a `TC-EMP-014`.
- Coletar evidências reais de carregamento, formulário e responsividade quando o ambiente estiver disponível.

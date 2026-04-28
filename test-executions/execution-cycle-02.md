# Ciclo de Execução 02 — Perfil da Empresa

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Tipo de documento | Execução manual de testes |
| Ciclo | 02 |
| Módulo | Perfil da Empresa |
| Executado por | Ademir dos Santos Junior |
| Status | Concluído com bloqueio |

## Objetivo

Registrar a execução real dos testes manuais do módulo Perfil da Empresa no Firmus.

## Escopo executado

- Acesso ao módulo Perfil da Empresa.
- Visualização de dados.
- Estado vazio/inicial.
- Cadastro ou edição, se disponível.
- Validação de campos.
- Persistência após refresh.
- Navegação.
- Responsividade.
- Usabilidade básica.
- Qualidade de conteúdo.

## Fora de escopo

- Testes automatizados.
- Testes de API.
- Validação direta em banco de dados.
- Testes de carga.
- Testes invasivos de segurança.
- Revisão de código.
- Validação fiscal/legal.

## Ambiente

| Campo | Informação |
|---|---|
| Data de execução | 2026-04-28 |
| Ambiente | Desenvolvimento local |
| URL | `http://localhost:3000/` |
| Navegador | Google Chrome 147.0.7727.116 disponível no ambiente |
| Sistema operacional | Ubuntu Linux 24.04, kernel 6.17.0-22-generic |
| Dispositivo | Desktop / Notebook |
| Viewports | Desktop e mobile-like planejados; não executados por indisponibilidade da aplicação |

## Legenda

| Status | Significado |
|---|---|
| Aprovado | Resultado atual igual ao esperado |
| Reprovado | Resultado atual diferente do esperado |
| Bloqueado | Teste não executado por impedimento |
| Não Aplicável | Não se aplica à versão atual |
| Não Executado | Ainda não executado |

## Auditoria inicial do repositório

| Item verificado | Resultado |
|---|---|
| Estrutura de arquivos | Repositório contém documentação de QA Manual em `bdd/`, `bug-reports/`, `checklists/`, `docs/`, `evidences/`, `reports/`, `test-cases/` e `test-executions/`. |
| README | `README.md` informa que o repositório não contém o código-fonte do produto e preserva documentação de QA Manual do Firmus. |
| `test-cases/perfil-da-empresa.md` | Existia, porém estava genérico e foi atualizado para cobrir `TC-EMP-001` a `TC-EMP-014`. |
| `bdd/funcionalidades/perfil-da-empresa.feature` | Existia com cenários planejados e não executados no ciclo 01. |
| `test-executions/execution-cycle-01.md` | Existia e foi preservado sem alteração. |
| `test-executions/execution-cycle-02.md` | Não existia antes desta execução e foi criado neste ciclo. |
| `bug-reports/` | Existiam `BUG-001` a `BUG-006`; nenhum novo bug foi criado neste ciclo. |
| `evidences/README.md` | Existia com regras para evidências reais e lista de evidências preservadas. |
| `reports/matriz-cobertura.md` | Existia e foi atualizado para refletir o ciclo 02 bloqueado do Perfil da Empresa. |
| `reports/resumo-execucao-ciclo-01.md` | Existia e foi preservado sem alteração. |

## Verificação de disponibilidade da aplicação

Antes da execução funcional, foi verificado o acesso a `http://localhost:3000/`. A aplicação não estava acessível na porta 3000 durante a execução.

Resultado observado:

- Requisição para `http://localhost:3000/` falhou com erro de conexão.
- Não foi encontrado projeto executável ou `package.json` dentro de `/home/junior-santos/Documentos/portfolio-qa`.
- O repositório atual declara no README que não contém o código-fonte do produto.

Com isso, os testes funcionais do módulo Perfil da Empresa foram bloqueados. Nenhum resultado funcional foi assumido.

## Resumo

| Status | Total |
|---|---:|
| Aprovado | 0 |
| Reprovado | 0 |
| Bloqueado | 14 |
| Não Aplicável | 0 |
| Não Executado | 0 |
| Total | 14 |

## Detalhamento da execução

| ID | Caso de Teste | Status | Resultado Atual | Evidência | Bug |
|---|---|---|---|---|---|
| TC-EMP-001 | Carregar a página de Perfil da Empresa com sucesso | Bloqueado | Não foi possível acessar `http://localhost:3000/`; a conexão com a porta 3000 falhou antes da navegação ao módulo. | Não coletada | - |
| TC-EMP-002 | Exibir dados existentes do perfil da empresa quando disponíveis | Bloqueado | Teste dependente do acesso ao módulo. A aplicação local não estava acessível. | Não coletada | - |
| TC-EMP-003 | Exibir estado vazio ou inicial quando não houver dados cadastrados | Bloqueado | Teste dependente do acesso ao módulo. A aplicação local não estava acessível. | Não coletada | - |
| TC-EMP-004 | Exibir ação de cadastro ou edição do perfil da empresa | Bloqueado | Teste dependente do acesso ao módulo. A aplicação local não estava acessível. | Não coletada | - |
| TC-EMP-005 | Abrir formulário de cadastro ou edição do perfil | Bloqueado | Teste dependente do acesso ao módulo e da ação de cadastro/edição. A aplicação local não estava acessível. | Não coletada | - |
| TC-EMP-006 | Salvar perfil da empresa com dados válidos | Bloqueado | Teste dependente do formulário de perfil. A aplicação local não estava acessível. | Não coletada | - |
| TC-EMP-007 | Impedir salvamento com campos obrigatórios vazios | Bloqueado | Teste dependente do formulário de perfil. A aplicação local não estava acessível. | Não coletada | - |
| TC-EMP-008 | Impedir salvamento com dados inválidos | Bloqueado | Teste dependente do formulário de perfil. A aplicação local não estava acessível. | Não coletada | - |
| TC-EMP-009 | Manter dados do perfil após refresh | Bloqueado | Teste dependente de acesso ao módulo e dados salvos ou existentes. A aplicação local não estava acessível. | Não coletada | - |
| TC-EMP-010 | Navegar entre Perfil da Empresa e Dashboard | Bloqueado | Teste dependente da navegação na aplicação. A aplicação local não estava acessível. | Não coletada | - |
| TC-EMP-011 | Não exibir placeholders, dados técnicos ou mensagens confusas | Bloqueado | Teste dependente da visualização do módulo. A aplicação local não estava acessível. | Não coletada | - |
| TC-EMP-012 | Exibir Perfil da Empresa corretamente em viewport desktop | Bloqueado | Teste dependente da visualização do módulo em desktop. A aplicação local não estava acessível. | Não coletada | - |
| TC-EMP-013 | Exibir Perfil da Empresa corretamente em viewport mobile-like | Bloqueado | Teste dependente da visualização do módulo em mobile-like. A aplicação local não estava acessível. | Não coletada | - |
| TC-EMP-014 | Comunicar claramente a finalidade do perfil da empresa para o usuário | Bloqueado | Teste dependente da visualização do módulo. A aplicação local não estava acessível. | Não coletada | - |

## Bugs encontrados

Nenhum bug funcional foi reportado neste ciclo, porque a aplicação Firmus não estava acessível para execução dos testes do módulo Perfil da Empresa.

## Evidências

Não foram coletadas evidências visuais nesta execução. O bloqueio foi documentado por observação técnica da indisponibilidade de `http://localhost:3000/`.

## Decisão do ciclo

**No-Go para avaliação do módulo Perfil da Empresa neste ciclo.**

A decisão não indica reprovação funcional do módulo. Indica que não houve condição mínima de ambiente para validar o comportamento real da funcionalidade.

## Riscos conhecidos

- O módulo Perfil da Empresa permanece sem validação manual real neste ciclo.
- Não foi possível confirmar existência, carregamento, edição, validações, persistência, responsividade ou qualidade de conteúdo do módulo.
- Bugs reais podem existir e não foram detectados devido ao bloqueio de ambiente.

## Próximos passos

- Disponibilizar a aplicação Firmus em `http://localhost:3000/`.
- Confirmar credenciais válidas, se o sistema exigir autenticação.
- Reexecutar `TC-EMP-001` a `TC-EMP-014`.
- Coletar evidências reais durante a próxima execução, quando o ambiente estiver acessível.

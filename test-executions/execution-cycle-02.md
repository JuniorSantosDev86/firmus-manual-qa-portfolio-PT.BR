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
| Status | Concluído com bug aberto |

## Objetivo

Registrar a execução real dos testes manuais do módulo Perfil da Empresa no Firmus.

## Escopo executado

- Acesso ao módulo Perfil da Empresa.
- Visualização de dados.
- Estado vazio/inicial.
- Cadastro e edição do perfil.
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
| Navegador | Google Chrome 147.0.7727.116, modo headless |
| Sistema operacional | Ubuntu Linux 24.04, kernel 6.17.0-22-generic |
| Dispositivo | Desktop / Notebook |
| Viewports | Desktop 1366x900 e mobile-like 390x844 |

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
| `test-cases/perfil-da-empresa.md` | Existia e foi atualizado para refletir a execução real de `TC-EMP-001` a `TC-EMP-014`. |
| `bdd/funcionalidades/perfil-da-empresa.feature` | Existia com cenários planejados do módulo. |
| `test-executions/execution-cycle-01.md` | Existia e foi preservado sem alteração. |
| `test-executions/execution-cycle-02.md` | Existia com bloqueio anterior e foi atualizado com a execução real após acesso ao produto. |
| `bug-reports/` | Existiam `BUG-001` a `BUG-006`; foi criado `BUG-007`. |
| `evidences/README.md` | Existia com regras para evidências reais e foi atualizado com as novas evidências do ciclo 02. |
| `reports/matriz-cobertura.md` | Existia e foi atualizado para refletir execução no ciclo 02. |
| `reports/resumo-execucao-ciclo-01.md` | Existia e foi preservado sem alteração. |

## Verificação de disponibilidade e acesso

- `http://localhost:3000/` respondeu e redirecionou para `/login?next=%2F`.
- As credenciais documentadas no projeto do produto foram usadas: `owner@firmus.local`.
- Após autenticação, a rota `/business-profile` carregou com status funcional e exibiu o módulo Perfil da Empresa.

## Resumo

| Status | Total |
|---|---:|
| Aprovado | 13 |
| Reprovado | 1 |
| Bloqueado | 0 |
| Não Aplicável | 0 |
| Não Executado | 0 |
| Total | 14 |

## Detalhamento da execução

| ID | Caso de Teste | Status | Resultado Atual | Evidência | Bug |
|---|---|---|---|---|---|
| TC-EMP-001 | Carregar a página de Perfil da Empresa com sucesso | Aprovado | A página `/business-profile` carregou corretamente, exibindo título `Perfil da empresa`, navegação ativa em Principal > Perfil da Empresa e conteúdo principal sem erro técnico visível. | `../evidences/screenshots/TC-EMP-001-perfil-empresa-carregamento.png` | - |
| TC-EMP-002 | Exibir dados existentes do perfil da empresa quando disponíveis | Aprovado | Após salvar dados válidos, o sistema exibiu os dados do perfil atual com labels como Nome da empresa, Nome profissional, Cidade, WhatsApp, CNPJ e Regime tributário. | `../evidences/screenshots/TC-EMP-006-perfil-empresa-salvar-dados-validos.png` | - |
| TC-EMP-003 | Exibir estado vazio ou inicial quando não houver dados cadastrados | Aprovado | Com o armazenamento local do perfil limpo, o sistema exibiu `Nenhum perfil da empresa salvo ainda.` e manteve o formulário de criação disponível. | `../evidences/screenshots/TC-EMP-001-perfil-empresa-carregamento.png` | - |
| TC-EMP-004 | Exibir ação de cadastro ou edição do perfil da empresa | Aprovado | O sistema exibiu o formulário `Criar perfil da empresa` no estado inicial e o botão `Salvar perfil`. Após salvar, a tela passou a exibir `Editar perfil da empresa`. | `../evidences/screenshots/TC-EMP-006-perfil-empresa-salvar-dados-validos.png` | - |
| TC-EMP-005 | Abrir formulário de cadastro ou edição do perfil | Aprovado | O formulário estava disponível no próprio módulo, com campos de identificação, contato, descrição, CNPJ, inscrição municipal, cidade de prestação e regime tributário. | `../evidences/screenshots/TC-EMP-001-perfil-empresa-carregamento.png` | - |
| TC-EMP-006 | Salvar perfil da empresa com dados válidos | Aprovado | O sistema salvou dados válidos, exibiu a mensagem `Salvo.` e atualizou o bloco Perfil atual com os dados cadastrados. | `../evidences/screenshots/TC-EMP-006-perfil-empresa-salvar-dados-validos.png` | - |
| TC-EMP-007 | Impedir salvamento com campos obrigatórios vazios | Reprovado | O sistema bloqueou o salvamento quando Nome da empresa e Nome profissional estavam vazios, porém a mensagem nativa exibida ao usuário apareceu em inglês: `Please fill out this field.` | `../evidences/screenshots/BUG-007-perfil-empresa-validacao-obrigatoria-ingles.png` | BUG-007 |
| TC-EMP-008 | Impedir salvamento com dados inválidos | Aprovado | Ao informar CNPJ com letras e excesso de caracteres, o campo normalizou o valor para o formato `12.345.678/0001-90`, impedindo a permanência do conteúdo inválido digitado nesse campo. | Não coletada | - |
| TC-EMP-009 | Manter dados do perfil após refresh | Aprovado | Após refresh, os dados `Firmus Studio QA`, `Ademir QA` e `Sao Paulo` permaneceram visíveis no perfil e preenchidos no formulário. | Não coletada | - |
| TC-EMP-010 | Navegar entre Perfil da Empresa e Dashboard | Aprovado | A navegação para Dashboard retornou à rota `/` e o retorno ao Perfil da Empresa exibiu novamente o título `Perfil da empresa`. Também foi validada navegação para Serviços e retorno ao módulo. | Não coletada | - |
| TC-EMP-011 | Não exibir placeholders, dados técnicos ou mensagens confusas | Aprovado | Não foram observados textos `undefined`, `null`, `NaN`, `lorem ipsum` ou erro técnico visível no conteúdo do módulo. | Não coletada | - |
| TC-EMP-012 | Exibir Perfil da Empresa corretamente em viewport desktop | Aprovado | Em viewport 1366x900, a página exibiu sidebar, conteúdo alinhado e sem overflow horizontal. | `../evidences/screenshots/TC-EMP-001-perfil-empresa-carregamento.png` | - |
| TC-EMP-013 | Exibir Perfil da Empresa corretamente em viewport mobile-like | Aprovado | Em viewport 390x844, a tela exibiu topbar mobile, botão Menu, título do módulo e não apresentou overflow horizontal. | `../evidences/screenshots/TC-EMP-013-perfil-empresa-mobile-like.png` | - |
| TC-EMP-014 | Comunicar claramente a finalidade do perfil da empresa para o usuário | Aprovado | O módulo exibiu descrição clara: `Mantenha os dados da sua empresa atualizados para os próximos fluxos de clientes e orçamentos.`, além de seção de prontidão fiscal e perfil atual. | `../evidences/screenshots/TC-EMP-001-perfil-empresa-carregamento.png` | - |

## Bugs encontrados

| Bug | Módulo | Status | Severidade | Prioridade |
|---|---|---|---|---|
| BUG-007 | Perfil da Empresa | Aberto | Baixa | Média |

## Evidências

| Evidência | Relacionamento |
|---|---|
| `../evidences/screenshots/TC-EMP-001-perfil-empresa-carregamento.png` | TC-EMP-001, TC-EMP-003, TC-EMP-005, TC-EMP-012, TC-EMP-014 |
| `../evidences/screenshots/TC-EMP-006-perfil-empresa-salvar-dados-validos.png` | TC-EMP-002, TC-EMP-004, TC-EMP-006 |
| `../evidences/screenshots/TC-EMP-013-perfil-empresa-mobile-like.png` | TC-EMP-013 |
| `../evidences/screenshots/BUG-007-perfil-empresa-validacao-obrigatoria-ingles.png` | BUG-007, TC-EMP-007 |

## Decisão do ciclo

**Go com ressalva para o módulo Perfil da Empresa.**

O fluxo principal de acesso, criação, salvamento, persistência, navegação e responsividade foi validado. A ressalva é a inconsistência de idioma na validação obrigatória, registrada em `BUG-007`.

## Riscos conhecidos

- Mensagens de validação em inglês reduzem a consistência da experiência PT-BR.
- O uso de validação nativa do navegador pode gerar mensagens diferentes conforme idioma/configuração do ambiente.
- Campos opcionais de contato e URL não tiveram validação profunda de formato neste ciclo.

## Próximos passos

- Corrigir `BUG-007` com mensagens de validação controladas em PT-BR.
- Reexecutar `TC-EMP-007` após a correção.
- Considerar critérios específicos para validação de WhatsApp, URL do logo e demais campos opcionais em ciclo futuro.

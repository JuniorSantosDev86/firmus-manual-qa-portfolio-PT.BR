# Casos de Teste — Clientes

## 1. Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Módulo | Clientes |
| Tipo de teste | QA Manual |
| Responsável | Ademir dos Santos Junior |
| Idioma | PT-BR |
| Status do documento | Planejado |
| Relação com execução real | Resultados reais devem ser registrados em `test-executions/execution-cycle-01.md` ou ciclos posteriores |

---

## 2. Objetivo

Validar o módulo **Clientes** do Firmus, garantindo que o usuário consiga visualizar, cadastrar, consultar, editar e excluir clientes de forma clara, segura e consistente.

Este conjunto de casos busca identificar falhas funcionais, problemas de validação, inconsistências de dados, problemas de navegação, falhas responsivas e riscos de operação relacionados à base de clientes.

---

## 3. Regras e premissas do módulo

- O usuário precisa estar autenticado para acessar o módulo Clientes.
- A área de Clientes deve permitir a gestão da base de clientes do prestador de serviços.
- Registros de clientes precisam ter dados mínimos suficientes para uso em orçamentos, cobranças, contato e reativação.
- O sistema não deve permitir criação de clientes vazios, incompletos ou inválidos quando esses dados forem obrigatórios para a operação.
- A exclusão de cliente, quando disponível, deve exigir confirmação e remover o registro após confirmação.
- A interface deve permanecer clara, legível e utilizável em desktop e mobile-like viewport.
- Bugs reais relacionados a este módulo estão documentados como `BUG-001`, `BUG-002` e `BUG-003`.

---

## 4. Fora de escopo deste arquivo

- Teste automatizado.
- Teste de API.
- Validação direta em banco de dados.
- Teste de carga ou estresse.
- Auditoria profunda de segurança.
- Validação de regras comerciais não visíveis na interface.
- Integrações externas.

---

## 5. Massa de dados sugerida

| Tipo | Exemplo |
|---|---|
| Nome válido | Cliente Teste QA |
| E-mail válido | cliente.qa@example.com |
| Telefone válido | (41) 99999-9999 |
| Documento válido, se aplicável | 12.345.678/0001-90 |
| Nome mínimo | A |
| E-mail inválido | cliente-sem-arroba.com |
| Telefone inválido | abc123 |
| Campo vazio | `""` |
| Texto aleatório | `###@@@teste` |

Observação: adaptar os dados aos campos realmente disponíveis na versão testada da aplicação.

---

## 6. Casos de teste

---

## TC-CLI-001 — Carregar a página de Clientes com sucesso

| Campo | Informação |
|---|---|
| ID | TC-CLI-001 |
| Módulo | Clientes |
| Tipo | Smoke / Funcional |
| Prioridade | Alta |
| Severidade se falhar | Alta |
| Status de design | Planejado |
| Status de execução | Não Executado |

### Pré-condições

- A aplicação Firmus está acessível.
- O usuário possui credenciais válidas.
- O usuário está autenticado.
- A navegação principal está disponível.

### Passos

1. Acessar a aplicação Firmus.
2. Realizar login com credenciais válidas.
3. Localizar o item **Clientes** na navegação principal.
4. Clicar em **Clientes**.
5. Observar o carregamento da página.

### Resultado esperado

A página de Clientes deve carregar corretamente, sem erro inesperado, sem redirecionamento indevido e com o conteúdo principal do módulo visível.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Caso crítico para validar acesso básico ao módulo.

---

## TC-CLI-002 — Exibir lista de clientes quando existem registros cadastrados

| Campo | Informação |
|---|---|
| ID | TC-CLI-002 |
| Módulo | Clientes |
| Tipo | Funcional / Visual |
| Prioridade | Alta |
| Severidade se falhar | Alta |
| Status de design | Planejado |
| Status de execução | Não Executado |

### Pré-condições

- O usuário está autenticado.
- Existem clientes cadastrados no ambiente.
- A página de Clientes está acessível.

### Passos

1. Acessar a área de Clientes.
2. Verificar se a listagem de clientes é exibida.
3. Observar as informações apresentadas em cada registro.
4. Conferir se os registros possuem identificação clara.
5. Verificar se não há duplicação visual indevida.

### Resultado esperado

O sistema deve exibir a lista de clientes cadastrados de forma organizada, legível e sem duplicações indevidas. Cada cliente deve possuir informações suficientes para identificação.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Este teste valida a visibilidade da base de clientes quando há dados disponíveis.

---

## TC-CLI-003 — Exibir estado vazio quando não existem clientes cadastrados

| Campo | Informação |
|---|---|
| ID | TC-CLI-003 |
| Módulo | Clientes |
| Tipo | Estado vazio / Usabilidade |
| Prioridade | Média |
| Severidade se falhar | Média |
| Status de design | Planejado |
| Status de execução | Não Executado |

### Pré-condições

- O usuário está autenticado.
- Não existem clientes cadastrados no ambiente atual.

### Passos

1. Acessar a área de Clientes.
2. Observar a área onde a listagem de clientes seria exibida.
3. Verificar se existe mensagem de estado vazio.
4. Verificar se a mensagem orienta o usuário sobre o próximo passo.
5. Confirmar que a tela não parece quebrada ou incompleta.

### Resultado esperado

O sistema deve exibir um estado vazio claro, informando que ainda não há clientes cadastrados e orientando o usuário a cadastrar o primeiro cliente quando aplicável.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Caso importante para ambientes novos ou bases sem dados.

---

## TC-CLI-004 — Exibir ação de criação de cliente

| Campo | Informação |
|---|---|
| ID | TC-CLI-004 |
| Módulo | Clientes |
| Tipo | Funcional / Navegação |
| Prioridade | Alta |
| Severidade se falhar | Média |
| Status de design | Planejado |
| Status de execução | Não Executado |

### Pré-condições

- O usuário está autenticado.
- A página de Clientes está carregada.

### Passos

1. Acessar a área de Clientes.
2. Localizar a ação para cadastrar ou adicionar novo cliente.
3. Verificar se a ação está visível.
4. Acionar o botão ou link de criação.
5. Observar se o formulário, modal ou fluxo de cadastro é aberto.

### Resultado esperado

A ação de criação de cliente deve estar visível, acessível e deve abrir corretamente o fluxo de cadastro.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Caso necessário para garantir que o usuário consiga iniciar o fluxo principal do módulo.

---

## TC-CLI-005 — Criar cliente com dados válidos

| Campo | Informação |
|---|---|
| ID | TC-CLI-005 |
| Módulo | Clientes |
| Tipo | Funcional / Caminho feliz |
| Prioridade | Alta |
| Severidade se falhar | Alta |
| Status de design | Planejado |
| Status de execução | Não Executado |

### Pré-condições

- O usuário está autenticado.
- O formulário de criação de cliente está disponível.
- Dados válidos estão disponíveis para teste.

### Dados de teste

| Campo | Valor sugerido |
|---|---|
| Nome | Cliente Teste QA |
| E-mail | cliente.qa@example.com |
| Telefone | (41) 99999-9999 |

### Passos

1. Acessar a área de Clientes.
2. Iniciar o cadastro de um novo cliente.
3. Preencher o nome com um valor válido.
4. Preencher os dados de contato com valores válidos, quando disponíveis.
5. Preencher demais campos obrigatórios, se existirem.
6. Confirmar o cadastro.
7. Observar o comportamento do sistema.
8. Verificar se o cliente aparece na listagem.

### Resultado esperado

O cliente deve ser criado com sucesso, aparecer na lista de clientes e exibir dados coerentes com os valores informados. O sistema deve apresentar feedback claro de sucesso quando aplicável.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Caso principal de caminho feliz do módulo Clientes.

---

## TC-CLI-006 — Impedir criação de cliente preenchendo apenas o nome

| Campo | Informação |
|---|---|
| ID | TC-CLI-006 |
| Módulo | Clientes |
| Tipo | Negativo / Validação |
| Prioridade | Alta |
| Severidade se falhar | Alta |
| Status de design | Planejado |
| Status de execução | Não Executado |
| Bug relacionado | BUG-001 |

### Pré-condições

- O usuário está autenticado.
- O formulário de criação de cliente está disponível.
- A aplicação exige dados mínimos além do nome para um cadastro operacionalmente útil.

### Dados de teste

| Campo | Valor |
|---|---|
| Nome | Cliente Apenas Nome |
| E-mail | vazio |
| Telefone | vazio |
| Demais campos | vazio |

### Passos

1. Acessar a área de Clientes.
2. Iniciar o cadastro de um novo cliente.
3. Preencher apenas o campo **Nome**.
4. Deixar os demais campos vazios.
5. Confirmar o cadastro.
6. Observar se o sistema cria ou bloqueia o cliente.
7. Verificar se o registro aparece na listagem.

### Resultado esperado

O sistema deve impedir a criação do cliente quando dados obrigatórios ou mínimos estiverem ausentes. Deve exibir mensagens claras de validação e não deve adicionar um novo registro incompleto à lista.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Este caso está relacionado ao `BUG-001`, encontrado no ciclo de execução 01.

---

## TC-CLI-007 — Impedir criação de cliente com contato ausente ou inválido

| Campo | Informação |
|---|---|
| ID | TC-CLI-007 |
| Módulo | Clientes |
| Tipo | Negativo / Validação |
| Prioridade | Alta |
| Severidade se falhar | Alta |
| Status de design | Planejado |
| Status de execução | Não Executado |
| Bug relacionado | BUG-002 |

### Pré-condições

- O usuário está autenticado.
- O formulário de criação de cliente está disponível.
- O contato do cliente é necessário para a operação do Firmus.

### Dados de teste

| Campo | Valor |
|---|---|
| Nome | Cliente Contato Inválido |
| E-mail | cliente-sem-arroba.com |
| Telefone | abc123 |

### Passos

1. Acessar a área de Clientes.
2. Iniciar o cadastro de um novo cliente.
3. Preencher o nome com um valor válido.
4. Deixar o contato vazio ou preencher e-mail/telefone com dados inválidos.
5. Confirmar o cadastro.
6. Observar se o sistema aceita ou rejeita os dados.
7. Verificar se o cliente foi criado indevidamente.

### Resultado esperado

O sistema deve rejeitar contato ausente ou inválido quando essa informação for obrigatória. Deve apresentar mensagem clara de validação e impedir que um cliente sem contato válido seja salvo.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Este caso está relacionado ao `BUG-002`, encontrado no ciclo de execução 01.

---

## TC-CLI-008 — Visualizar detalhes de cliente existente

| Campo | Informação |
|---|---|
| ID | TC-CLI-008 |
| Módulo | Clientes |
| Tipo | Funcional / Consulta |
| Prioridade | Média |
| Severidade se falhar | Média |
| Status de design | Planejado |
| Status de execução | Não Executado |

### Pré-condições

- O usuário está autenticado.
- Existe pelo menos um cliente cadastrado.
- A listagem de clientes está visível.

### Passos

1. Acessar a área de Clientes.
2. Localizar um cliente existente na lista.
3. Abrir os detalhes do cliente, se a ação estiver disponível.
4. Verificar as informações apresentadas.
5. Conferir se os dados estão legíveis e organizados.
6. Verificar se não há campos quebrados, duplicados ou placeholders.

### Resultado esperado

O sistema deve exibir os detalhes do cliente de forma clara, com dados organizados, rótulos compreensíveis e sem informações quebradas ou duplicadas indevidamente.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Caso importante para validar consulta e leitura da base de clientes.

---

## TC-CLI-009 — Editar cliente existente com dados válidos

| Campo | Informação |
|---|---|
| ID | TC-CLI-009 |
| Módulo | Clientes |
| Tipo | Funcional / Edição |
| Prioridade | Média |
| Severidade se falhar | Alta |
| Status de design | Planejado |
| Status de execução | Não Executado |

### Pré-condições

- O usuário está autenticado.
- Existe pelo menos um cliente cadastrado.
- A ação de edição está disponível na versão testada.

### Dados de teste

| Campo | Valor |
|---|---|
| Nome atualizado | Cliente Teste QA Atualizado |
| E-mail atualizado | cliente.atualizado@example.com |
| Telefone atualizado | (41) 98888-8888 |

### Passos

1. Acessar a área de Clientes.
2. Localizar um cliente existente.
3. Acionar a opção de edição, se disponível.
4. Alterar campos permitidos com dados válidos.
5. Salvar as alterações.
6. Verificar se os dados atualizados aparecem na listagem ou nos detalhes.
7. Atualizar a página e conferir se a alteração permanece.

### Resultado esperado

O sistema deve salvar as alterações corretamente, atualizar os dados exibidos e não criar cliente duplicado como efeito colateral da edição.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Se a edição não estiver disponível na versão testada, marcar como **Não Aplicável** e registrar observação.

---

## TC-CLI-010 — Impedir edição com dados inválidos

| Campo | Informação |
|---|---|
| ID | TC-CLI-010 |
| Módulo | Clientes |
| Tipo | Negativo / Validação |
| Prioridade | Média |
| Severidade se falhar | Alta |
| Status de design | Planejado |
| Status de execução | Não Executado |

### Pré-condições

- O usuário está autenticado.
- Existe pelo menos um cliente cadastrado.
- A ação de edição está disponível na versão testada.

### Dados de teste

| Campo | Valor |
|---|---|
| Nome | vazio ou inválido |
| E-mail | email-invalido |
| Telefone | abc123 |

### Passos

1. Acessar a área de Clientes.
2. Localizar um cliente existente.
3. Acionar a opção de edição.
4. Alterar campos obrigatórios para valores vazios ou inválidos.
5. Tentar salvar as alterações.
6. Observar as mensagens exibidas.
7. Verificar se o registro original foi preservado.

### Resultado esperado

O sistema deve bloquear a edição com dados inválidos, exibir mensagens claras de validação e preservar os dados anteriores sem corromper o registro.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Se a edição não estiver disponível na versão testada, marcar como **Não Aplicável** e registrar observação.

---

## TC-CLI-011 — Excluir cliente após confirmação

| Campo | Informação |
|---|---|
| ID | TC-CLI-011 |
| Módulo | Clientes |
| Tipo | Funcional / Exclusão |
| Prioridade | Alta |
| Severidade se falhar | Alta |
| Status de design | Planejado |
| Status de execução | Não Executado |
| Bug relacionado | BUG-003 |

### Pré-condições

- O usuário está autenticado.
- Existe pelo menos um cliente cadastrado.
- A ação de exclusão está disponível.
- O cliente selecionado pode ser removido sem afetar massa crítica de teste.

### Passos

1. Acessar a área de Clientes.
2. Localizar um cliente existente.
3. Acionar a opção de exclusão.
4. Confirmar a exclusão no modal, popup ou mensagem de confirmação.
5. Observar o comportamento do sistema.
6. Verificar se o cliente foi removido da lista.
7. Atualizar a página.
8. Confirmar que o cliente excluído não reaparece.

### Resultado esperado

Após confirmação, o cliente deve ser removido da lista, o sistema deve apresentar feedback claro quando aplicável e o registro não deve reaparecer após refresh.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Este caso está relacionado ao `BUG-003`, encontrado no ciclo de execução 01.

---

## TC-CLI-012 — Cancelar exclusão de cliente

| Campo | Informação |
|---|---|
| ID | TC-CLI-012 |
| Módulo | Clientes |
| Tipo | Funcional / Segurança de ação |
| Prioridade | Média |
| Severidade se falhar | Média |
| Status de design | Planejado |
| Status de execução | Não Executado |

### Pré-condições

- O usuário está autenticado.
- Existe pelo menos um cliente cadastrado.
- A ação de exclusão está disponível.
- A confirmação de exclusão permite cancelar a operação.

### Passos

1. Acessar a área de Clientes.
2. Localizar um cliente existente.
3. Acionar a opção de exclusão.
4. Cancelar a exclusão no modal, popup ou mensagem de confirmação.
5. Observar o retorno para a tela anterior.
6. Verificar se o cliente continua na lista.

### Resultado esperado

Ao cancelar a exclusão, o cliente deve permanecer cadastrado, nenhum dado deve ser alterado e o sistema não deve apresentar mensagem falsa de exclusão concluída.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Caso importante para prevenir ações destrutivas acidentais.

---

## TC-CLI-013 — Navegar entre Clientes e outros módulos

| Campo | Informação |
|---|---|
| ID | TC-CLI-013 |
| Módulo | Clientes |
| Tipo | Navegação |
| Prioridade | Média |
| Severidade se falhar | Média |
| Status de design | Planejado |
| Status de execução | Não Executado |

### Pré-condições

- O usuário está autenticado.
- A sidebar ou navegação principal está disponível.
- A área de Clientes está acessível.

### Passos

1. Acessar a área de Clientes.
2. Navegar para outro módulo pela sidebar, como Dashboard ou Orçamentos.
3. Retornar para Clientes pela navegação principal.
4. Observar o carregamento da página.
5. Verificar se não há erro de rota ou perda indevida de sessão.

### Resultado esperado

A navegação entre Clientes e outros módulos deve funcionar corretamente, sem erro de rota, sem redirecionamento indevido e sem perda da sessão autenticada.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Caso importante para validar integração do módulo com a navegação geral do Firmus.

---

## TC-CLI-014 — Manter Clientes utilizável após refresh

| Campo | Informação |
|---|---|
| ID | TC-CLI-014 |
| Módulo | Clientes |
| Tipo | Sessão / Persistência visual |
| Prioridade | Média |
| Severidade se falhar | Média |
| Status de design | Planejado |
| Status de execução | Não Executado |

### Pré-condições

- O usuário está autenticado.
- A área de Clientes está aberta.

### Passos

1. Acessar a área de Clientes.
2. Aguardar o carregamento completo da página.
3. Atualizar a página pelo navegador.
4. Observar o recarregamento.
5. Verificar se a página continua utilizável.
6. Verificar se a sessão permanece válida quando aplicável.

### Resultado esperado

Após refresh, a página de Clientes deve recarregar corretamente, preservar a sessão válida e continuar exibindo listagem, estado vazio ou informações coerentes com o ambiente.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Caso importante para validar estabilidade do módulo durante uso real.

---

## TC-CLI-015 — Validar Clientes em viewport desktop

| Campo | Informação |
|---|---|
| ID | TC-CLI-015 |
| Módulo | Clientes |
| Tipo | Responsivo / Visual |
| Prioridade | Média |
| Severidade se falhar | Média |
| Status de design | Planejado |
| Status de execução | Não Executado |

### Pré-condições

- O usuário está autenticado.
- A página de Clientes está acessível.
- O navegador está em viewport desktop.

### Passos

1. Acessar a área de Clientes em viewport desktop.
2. Verificar alinhamento da listagem ou estado vazio.
3. Verificar legibilidade de textos e rótulos.
4. Verificar posicionamento de botões e ações.
5. Abrir o formulário de criação, se disponível.
6. Observar se o layout permanece organizado.

### Resultado esperado

A área de Clientes deve permanecer organizada em desktop, com textos legíveis, botões acessíveis, navegação visível e sem sobreposição ou overflow horizontal.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Caso voltado para qualidade visual e usabilidade em telas maiores.

---

## TC-CLI-016 — Validar Clientes em viewport mobile-like

| Campo | Informação |
|---|---|
| ID | TC-CLI-016 |
| Módulo | Clientes |
| Tipo | Responsivo / Usabilidade |
| Prioridade | Alta |
| Severidade se falhar | Média |
| Status de design | Planejado |
| Status de execução | Não Executado |

### Pré-condições

- O usuário está autenticado.
- A página de Clientes está acessível.
- O navegador está em viewport mobile-like ou DevTools mobile.

### Passos

1. Acessar a área de Clientes em viewport mobile-like.
2. Verificar se a navegação mobile está acessível conforme o padrão da aplicação.
3. Verificar se lista, cards ou estado vazio se adaptam à largura da tela.
4. Abrir o formulário de criação, se disponível.
5. Verificar se campos e botões continuam utilizáveis.
6. Observar se existe conteúdo cortado, sobreposto ou extrapolando a tela.

### Resultado esperado

A área de Clientes deve permanecer utilizável em viewport mobile-like, sem quebra visual, sem overflow horizontal e com botões, campos e informações acessíveis.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Caso importante para validar uso em telas menores.

---

## TC-CLI-017 — Não exibir placeholders, dados técnicos ou mensagens confusas

| Campo | Informação |
|---|---|
| ID | TC-CLI-017 |
| Módulo | Clientes |
| Tipo | Usabilidade / Qualidade de conteúdo |
| Prioridade | Média |
| Severidade se falhar | Baixa |
| Status de design | Planejado |
| Status de execução | Não Executado |

### Pré-condições

- O usuário está autenticado.
- A área de Clientes está acessível.
- Listagem, formulário ou detalhes estão disponíveis para revisão.

### Passos

1. Acessar a área de Clientes.
2. Revisar títulos, rótulos, botões e mensagens.
3. Abrir o formulário de criação, se disponível.
4. Abrir detalhes de um cliente, se disponível.
5. Procurar textos como `undefined`, `null`, `NaN`, `lorem ipsum` ou placeholders temporários.
6. Verificar se mensagens de erro são compreensíveis para o usuário final.

### Resultado esperado

O módulo Clientes não deve exibir placeholders, valores técnicos, mensagens quebradas ou textos confusos. Todas as informações devem estar claras, consistentes e em PT-BR.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Caso importante para polimento de produto e percepção profissional.

---

## TC-CLI-018 — Validar consistência da base após operações no módulo Clientes

| Campo | Informação |
|---|---|
| ID | TC-CLI-018 |
| Módulo | Clientes |
| Tipo | Funcional / Consistência |
| Prioridade | Alta |
| Severidade se falhar | Alta |
| Status de design | Planejado |
| Status de execução | Não Executado |

### Pré-condições

- O usuário está autenticado.
- A área de Clientes está acessível.
- A versão testada permite pelo menos uma operação de criação, edição ou exclusão.

### Passos

1. Acessar a área de Clientes.
2. Criar um cliente com dados válidos, se a ação estiver disponível.
3. Verificar se o cliente aparece na lista.
4. Editar o cliente, se a ação estiver disponível.
5. Verificar se os dados atualizados são exibidos corretamente.
6. Excluir o cliente, se a ação estiver disponível.
7. Verificar se o cliente foi removido.
8. Atualizar a página.
9. Confirmar se a base continua coerente após as operações.

### Resultado esperado

A base de clientes deve permanecer consistente após operações disponíveis. O sistema não deve criar duplicações indevidas, manter registros excluídos, perder dados válidos ou exibir estados contraditórios.

### Resultado atual

A preencher durante execução.

### Evidência

A adicionar se necessário.

### Observações

Caso de ponta a ponta manual para validar a confiabilidade geral do módulo.

---

## 7. Bugs relacionados ao módulo

| Bug | Título | Status |
|---|---|---|
| BUG-001 | Cliente pode ser criado preenchendo apenas o nome | Aberto |
| BUG-002 | Cliente pode ser criado sem informações de contato válidas | Aberto |
| BUG-003 | Ação de excluir cliente não remove o cliente após confirmação | Aberto |

---

## 8. Critérios de aceite do módulo Clientes

O módulo Clientes será considerado satisfatório quando:

- A página carregar corretamente.
- A listagem ou estado vazio estiver claro.
- Clientes válidos puderem ser cadastrados.
- Clientes incompletos ou inválidos forem bloqueados.
- Contatos inválidos forem rejeitados quando obrigatórios.
- Detalhes do cliente forem legíveis.
- Edição e exclusão funcionarem quando disponíveis.
- A exclusão remover o cliente após confirmação.
- O cancelamento de exclusão preservar o registro.
- A página permanecer utilizável após refresh.
- O layout funcionar em desktop e mobile-like viewport.
- Não houver placeholders, mensagens técnicas ou dados duplicados indevidamente.
- Bugs conhecidos forem corrigidos e retestados.

---

## 9. Observação sobre execução

Este arquivo descreve casos planejados e critérios esperados para o módulo Clientes.

Resultados reais devem ser registrados em documentos de execução, como:

```txt
test-executions/execution-cycle-01.md
```

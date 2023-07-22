
# Documentação Terraform para ECS Fargate

## Introdução

Este projeto Terraform provisiona uma infraestrutura básica para a execução de contêineres no Amazon ECS (Elastic Container Service) usando o serviço Fargate. O ECS é um serviço de gerenciamento de contêineres totalmente gerenciado pela AWS que permite executar e escalar aplicativos em contêineres Docker.

## Requisitos

Antes de prosseguir com a implementação da infraestrutura, certifique-se de ter as seguintes informações e recursos disponíveis:

1. Conta da AWS com permissões suficientes para criar recursos, como VPC, subnets, etc.
2. Chaves de acesso AWS (access key e secret key) com permissões apropriadas configuradas em suas variáveis Terraform.
3. Familiaridade básica com o Terraform e seus conceitos.

## Estrutura dos arquivos

O projeto é composto por vários arquivos Terraform que definem os recursos necessários para a execução do ECS Fargate:

- `config.tf`: Define a configuração do provedor AWS.
- `ecs.tf`: Define os recursos do ECS, como o cluster ECS, o serviço ECS e a definição de tarefa.
- `repository.tf`: Define o repositório ECR (Elastic Container Registry) para armazenar as imagens do contêiner.
- `terraform.tfvars`: Arquivo de variáveis que armazena informações específicas, como chaves de acesso AWS, região e nomes dos recursos.
- `variables.tf`: Declaração das variáveis Terraform usadas no projeto.
- `vpc.tf`: Define a VPC (Virtual Private Cloud), subnets e grupos de segurança necessários para o ECS.

## Instruções de uso

1. Certifique-se de ter o Terraform instalado em sua máquina local.

2. Crie um novo diretório para o projeto Terraform e copie os arquivos fornecidos (config.tf, ecs.tf, repository.tf, terraform.tfvars, variables.tf e vpc.tf) para esse diretório.

3. Preencha o arquivo `terraform.tfvars` com suas informações específicas, como região da AWS, chaves de acesso, nomes dos recursos, etc.

4. No terminal, navegue até o diretório do projeto Terraform e execute os seguintes comandos:

   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

   O comando `terraform init` inicializará o diretório do projeto Terraform e baixará os provedores e módulos necessários. O comando `terraform plan` mostrará uma visão geral dos recursos que serão criados. O comando `terraform apply` criará efetivamente a infraestrutura no ambiente da AWS.

5. Após a execução bem-sucedida do comando `terraform apply`, você poderá encontrar os recursos criados na sua conta da AWS, como a VPC, subnets, repositório ECR e o serviço ECS usando o Fargate.

6. Verifique o serviço ECS na AWS Management Console para garantir que tudo esteja funcionando conforme o esperado. Você deve ver o cluster ECS, o serviço ECS e a definição de tarefa criados.

## Personalização

Caso precise personalizar os recursos, como a quantidade de contêineres a serem executados ou a configuração do contêiner, você pode ajustar as variáveis no arquivo `terraform.tfvars`. Além disso, o arquivo `ecs.tf` contém a definição de tarefa do ECS, onde você pode adicionar configurações específicas do contêiner, como volumes, variáveis de ambiente, etc.

## Limpeza

Para evitar cobranças desnecessárias na AWS, lembre-se de remover todos os recursos criados quando não estiverem mais em uso. Para fazer isso, execute o seguinte comando no diretório do projeto Terraform:

```bash
terraform destroy
```

Este comando destruirá todos os recursos criados pelo Terraform, mas tenha cuidado, pois essa ação não pode ser desfeita. Certifique-se de que você deseja remover os recursos antes de executar este comando.

## Conclusão

Esse projeto Terraform constroi uma infraestrutura básica para executar contêineres no Amazon ECS usando o Fargate. É importante seguir as boas práticas de segurança e gerenciamento de recursos ao implantar infraestruturas na nuvem da AWS.

Created by: RODRIGO GALHARDO | CISO-CTO as a Service
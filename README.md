# Infraestrutura como Código - Repositório Terraform

Este repositório contém os arquivos e configurações necessárias para provisionar a infraestrutura diversa na AWS (Amazon Web Services). A infraestrutura é gerenciada como código usando o Terraform, uma ferramenta de infraestrutura como código de código aberto.

## Estrutura do Repositório

O repositório possui a seguinte estrutura de pasta:

```
/ecs-fargate
    ├── terraform
    │   ├── config.tf
    │   ├── ecs.tf
    │   ├── repository.tf
    │   ├── terraform.tfvars
    │   ├── variables.tf
    │   └── vpc.tf
    ├── README.md
    └── ...
```

- `/terraform`: Esta pasta contém todos os arquivos e configurações do Terraform que definem a infraestrutura de contêineres ECS Fargate. Os detalhes dos recursos são especificados nos arquivos `ecs.tf`, `repository.tf`, `vpc.tf`, etc.
- `README.md`: Este arquivo é uma documentação geral para o repositório, fornecendo informações sobre o projeto, sua finalidade e como usá-lo.

## Pré-requisitos

Antes de usar este repositório, certifique-se de ter o seguinte:

1. Conta da AWS: Crie uma conta na AWS para provisionar recursos na nuvem da AWS.
2. Chaves de Acesso AWS: Configure suas chaves de acesso AWS (Access Key e Secret Key) com as permissões apropriadas para criar e gerenciar recursos.
3. Terraform: Instale o Terraform em sua máquina local para executar os arquivos de configuração.
4. Conhecimento Básico do Terraform: É útil ter conhecimento básico do Terraform e suas funcionalidades antes de modificar a infraestrutura.

## Instruções de Uso

Siga as etapas abaixo para usar este repositório e provisionar a infraestrutura do ECS Fargate:

1. Clone o repositório: Use o comando `git clone` para clonar este repositório em sua máquina local.

2. Configure as variáveis: No diretório `/ecs-fargate/terraform`, preencha o arquivo `terraform.tfvars` com suas informações específicas, como região da AWS, chaves de acesso, nomes dos recursos, etc.

3. Inicialize o Terraform: No diretório `/ecs-fargate/terraform`, execute `terraform init` para inicializar o Terraform e baixar as dependências necessárias.

4. Planeje a infraestrutura: Execute `terraform plan` para visualizar as mudanças planejadas e verificar se não há erros.

5. Aplique a infraestrutura: Execute `terraform apply` para criar efetivamente a infraestrutura na AWS.

6. Verifique a infraestrutura: Verifique a AWS Management Console para confirmar que a infraestrutura foi criada corretamente.

7. Personalize a infraestrutura (opcional): Se desejar, personalize os recursos, ajustando as variáveis no arquivo `terraform.tfvars` ou modificando os arquivos de configuração do Terraform.

8. Limpeza: Quando não precisar mais da infraestrutura, execute `terraform destroy` para remover todos os recursos criados.

## Notas Importantes

- Certifique-se de que os recursos criados por este repositório estão de acordo com suas necessidades e conformidade de segurança. Revise as configurações antes de executar o Terraform para evitar cobranças não planejadas e evitar impactos indesejados em ambientes de produção.
- Use as boas práticas de segurança para proteger suas credenciais e certifique-se de armazená-las de forma segura.
- Este repositório é fornecido como um exemplo para fins educacionais e pode precisar de ajustes para atender aos requisitos específicos do seu projeto.

## Contribuição

Se você encontrar bugs, tiver melhorias ou sugestões, sinta-se à vontade para criar um BUG ou enviar um pull request. Estamos abertos a colaborações e contribuições para melhorar este projeto.

## Licença

Este repositório é licenciado sob a licença MIT. Consulte o arquivo LICENSE para obter mais detalhes sobre os direitos concedidos por esta licença.

---

Created by: RODRIGO GALHARDO | CISO-CTO as a Service
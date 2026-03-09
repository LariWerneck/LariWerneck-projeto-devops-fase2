# 🚀 Infraestrutura como Código (IaC) com Terraform na AWS

Este projeto demonstra o processo de automação e provisionamento de infraestrutura na AWS utilizando Terraform.

O objetivo foi substituir o caos dos cliques manuais no console da AWS pela prática de Infraestrutura como Código (IaC), garantindo que o ambiente seja totalmente reproduzível, versionado e preparado para pipelines DevOps modernos.

A atividade foi baseada no projeto original disponível em:
https://github.com/marialazara/laboratorio-devops

This repository is available in Portuguese (PT), English (EN), and French (FR).

Ce projet est documenté en portugais, anglais et français afin d’assurer l’accessibilité à un public plus large.

# 🎯 Objetivo do Projeto

- Resolver o caos dos cliques manuais através do provisionamento via código.
- Declarar e provisionar recursos na AWS (EC2, Security Groups, etc.) de forma automatizada.
- Manter a infraestrutura reproduzível e versionada.
- Compreender por que IaC é essencial para qualquer pipeline DevOps moderno.

# 🐳 Tecnologias Utilizadas

- Terraform
- HCL (HashiCorp Configuration Language)
- AWS CLI
- Amazon EC2
- Git / GitHub

# 🔨 Processo Executado

## 1 - Declaração de Recursos (main.tf)
```hcl
# Configuração do Provider AWS:
provider "aws" {
  region = "us-east-2"
}

# Declaração e provisionamento de uma instância EC2:
resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "Servidor-Terraform"
  }
}
```

## 2 - Inicialização do Terraform
```bash
# Inicializa o diretório de trabalho contendo os arquivos de configuração do Terraform:
terraform init
```

## 3 - Planejamento da Infraestrutura
```bash
# Valida a sintaxe e cria um plano de execução mostrando o que será provisionado:
terraform plan
```

## 4 - Provisionamento na AWS
```bash
# Aplica as mudanças necessárias para alcançar o estado desejado da configuração:
terraform apply -auto-approve
```

## 5 - Destruição dos Recursos
```bash
# Remove todos os recursos gerenciados pelo Terraform (para evitar custos extras no Free Tier):
terraform destroy -auto-approve
```

# ✅ Resultados

- Fim do provisionamento manual (caos de cliques) na AWS.
- Infraestrutura criada de forma rápida, previsível e segura.
- Estado da infraestrutura gerenciado automaticamente.
- Código pronto para ser integrado em pipelines de CI/CD.

# 🧠 Conceitos Aplicados

- Infraestrutura como Código (IaC)
- Provisionamento Declarativo
- Reprodutibilidade de Ambientes
- Versionamento de Infraestrutura
- Gerenciamento de Estado no Terraform
- Automação de Cloud Computing

# 🇺🇸 🚀 Infrastructure as Code (IaC) with Terraform on AWS

This project demonstrates the process of automation and infrastructure provisioning on AWS using Terraform.

The goal was to replace the chaos of manual clicks in the AWS console with the practice of Infrastructure as Code (IaC), ensuring the environment is fully reproducible, versioned, and ready for modern DevOps pipelines.

The activity was based on the original project available at: 
https://github.com/marialazara/laboratorio-devops

This repository is available in Portuguese (PT), English (EN), and French (FR).

Ce projet est documenté en portugais, anglais et français afin d’assurer l’accessibilité à un public plus large.

# 🎯 Project Objective

- Solve the chaos of manual clicks through code-based provisioning.
- Declare and provision AWS resources (EC2, Security Groups, etc.) in an automated way.
- Keep the infrastructure reproducible and versioned.
- Understand why IaC is essential for any modern DevOps pipeline.

# 🐳 Technologies Used

- Terraform
- HCL (HashiCorp Configuration Language)
- AWS CLI
- Amazon EC2
- Git / GitHub

# 🔨 Process Executed

## 1 - Resource Declaration (main.tf)
```hcl
# AWS Provider Configuration:
provider "aws" {
  region = "us-east-2"
}

# Declaration and provisioning of an EC2 instance:
resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Server"
  }
}
```

## 2 - Terraform Initialization
```bash
# Initializes the working directory containing the Terraform configuration files:
terraform init
```

## 3 - Infrastructure Planning
```bash
# Validates syntax and creates an execution plan showing what will be provisioned:
terraform plan
```

## 4 - Provisioning on AWS
```bash
# Applies the necessary changes to reach the desired state of the configuration:
terraform apply -auto-approve
```

## 5 - Resource Destruction
```bash
# Removes all resources managed by Terraform (to avoid extra costs in the Free Tier):
terraform destroy -auto-approve
```

# ✅ Results

- End of manual provisioning (click chaos) on AWS.
- Infrastructure created quickly, predictably, and securely.
- Infrastructure state managed automatically.
- Code ready to be integrated into CI/CD pipelines.

# 🧠 Applied Concepts

- Infrastructure as Code (IaC)
- Declarative Provisioning
- Environment Reproducibility
- Infrastructure Versioning
- State Management in Terraform
- Cloud Computing Automation

# 🇫🇷 🚀 Infrastructure as Code (IaC) avec Terraform sur AWS

Ce projet démontre le processus d'automatisation et de provisionnement d'infrastructure sur AWS en utilisant Terraform.

L'objectif était de remplacer le chaos des clics manuels dans la console AWS par la pratique de l'Infrastructure as Code (IaC), en garantissant que l'environnement soit totalement reproductible, versionné et prêt pour les pipelines DevOps modernes.

L'activité est basée sur le projet original disponible sur :
https://github.com/marialazara/laboratorio-devops

This repository is available in Portuguese (PT), English (EN), and French (FR).

Ce projet est documenté en portugais, anglais et français afin d’assurer l’accessibilité à un public plus large.

# 🎯 Objectif du Projet

- Résoudre le chaos des clics manuels grâce au provisionnement par code.
- Déclarer et provisionner des ressources AWS (EC2, Security Groups, etc.) de manière automatisée.
- Maintenir l'infrastructure reproductible et versionnée.
- Comprendre pourquoi l'IaC est essentielle pour tout pipeline DevOps moderne.

# 🐳 Technologies Utilisées

- Terraform
- HCL (HashiCorp Configuration Language)
- AWS CLI
- Amazon EC2
- Git / GitHub

# 🔨 Processus Exécuté

## 1 - Déclaration des Ressources (main.tf)
```hcl
# Configuration du Provider AWS :
provider "aws" {
  region = "us-east-2"
}

# Déclaration et provisionnement d'une instance EC2 :
resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "Serveur-Terraform"
  }
}
```

## 2 - Initialisation de Terraform
```bash
# Initialise le répertoire de travail contenant les fichiers de configuration de Terraform :
terraform init
```

## 3 - Planification de l'Infrastructure
```bash
# Valide la syntaxe et crée un plan d'exécution montrant ce qui sera provisionné :
terraform plan
```

## 4 - Provisionnement sur AWS
```bash
# Applique les modifications nécessaires pour atteindre l'état souhaité de la configuration :
terraform apply -auto-approve
```

## 5 - Destruction des Ressources
```bash
# Supprime toutes les ressources gérées par Terraform (pour éviter des coûts supplémentaires dans le Free Tier) :
terraform destroy -auto-approve
```

# ✅ Résultats

- Fin du provisionnement manuel (chaos des clics) sur AWS.
- Infrastructure créée de manière rapide, prévisible et sécurisée.
- État de l'infrastructure géré automatiquement.
- Code prêt à être intégré dans des pipelines CI/CD.

# 🧠 Concepts Appliqués

- Infrastructure as Code (IaC)
- Provisionnement Déclaratif
- Reproductibilité des Environnements
- Versionnage de l'Infrastructure
- Gestion de l'État (State) dans Terraform
- Automatisation du Cloud Computing

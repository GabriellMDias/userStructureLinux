## Exemplo de Script para criação de Estrutura de Usuários, Diretórios e Permissões no Linux

<br>

* O script em usersStructure.sh cria os seguintes grupos e usuários:

<p align="center">
    <img src='./Grupos.png' />
</p>

* Os seguintes diretórios também são criados:
<p align="center">
    <img src='./Diretorios.png' />
</p>

* Somente terão acesso aos diretórios os usuários que estão no grupo especificado em cada pasta. Com excessão somente da pasta "/publico"

* O script em "deleteUsers.sh" desfaz as alterações feitas por "usersStructure.sh"
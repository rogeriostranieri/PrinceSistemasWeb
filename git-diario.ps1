# Atualiza o repositório principal
Write-Host "Atualizando repositório principal..."
git status
git pull

# Commit e push dentro do submódulo PrinceSistemas
Write-Host "Entrando no submódulo PrinceSistemas..."
Set-Location PrinceSistemas

# Verifica se há algo para commitar no submódulo
$subStatus = git status --porcelain
if ($subStatus) {
    git add .
    $msgSub = Read-Host "Digite a mensagem do commit para o submódulo PrinceSistemas"
    git commit -m "$msgSub"
    git push
} else {
    Write-Host "Nada para commitar no submódulo PrinceSistemas."
}

# Volta para o diretório principal
Set-Location ..

# Commit e push no repositório principal
# Verifica se há algo para commitar no repositório principal
$mainStatus = git status --porcelain
if ($mainStatus) {
    git add .
    $msgMain = Read-Host "Digite a mensagem do commit para o repositório principal"
    git commit -m "$msgMain"
    git push
} else {
    Write-Host "Nada para commitar no repositório principal."
}

Write-Host "Processo concluído."

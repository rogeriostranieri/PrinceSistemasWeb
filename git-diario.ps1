git status
git pull

# Commit e push dentro do submódulo
Write-Host "Entrando no submódulo PrinceSistemas..."
cd PrinceSistemas
git add .
$msgSub = Read-Host "Digite a mensagem do commit para o submódulo"
git commit -m "$msgSub"
git push
cd ..

# Commit e push no repositório principal
git add .
$msgMain = Read-Host "Digite a mensagem do commit para o repositório principal"
git commit -m "$msgMain"
git push


$ErrorActionPreference = 'Stop'

function Assert-Exists {
    param(
        [string]$Path,
        [string]$Description
    )

    if (-not (Test-Path -LiteralPath $Path)) {
        throw "Missing $Description: $Path"
    }
}

function Assert-NotEmpty {
    param(
        [string]$Path,
        [string]$Description
    )

    $item = Get-Item -LiteralPath $Path
    if ($item.Length -le 0) {
        throw "$Description is empty: $Path"
    }
}

function Assert-Contains {
    param(
        [string]$Path,
        [string]$Pattern,
        [string]$Description
    )

    $content = Get-Content -LiteralPath $Path -Raw
    if ($content -notmatch $Pattern) {
        throw "$Description is missing required content in $Path. Expected pattern: $Pattern"
    }
}

$requiredPaths = @(
    @{ Path = 'index.html'; Description = 'home page' },
    @{ Path = 'alunos.html'; Description = 'students page' },
    @{ Path = 'contato.html'; Description = 'contact page' },
    @{ Path = 'participar.html'; Description = 'participation page' },
    @{ Path = 'css/styles.css'; Description = 'shared stylesheet' },
    @{ Path = 'js/main.js'; Description = 'main script' },
    @{ Path = 'curriculos/modelo.html'; Description = 'resume template' }
)

foreach ($entry in $requiredPaths) {
    Assert-Exists -Path $entry.Path -Description $entry.Description
    Assert-NotEmpty -Path $entry.Path -Description $entry.Description
}

Assert-Contains -Path 'index.html' -Pattern '<!DOCTYPE html>' -Description 'Home page'
Assert-Contains -Path 'index.html' -Pattern 'href="css/styles\.css"' -Description 'Home page stylesheet link'
Assert-Contains -Path 'index.html' -Pattern 'href="alunos\.html"' -Description 'Home page students link'
Assert-Contains -Path 'index.html' -Pattern 'href="participar\.html"' -Description 'Home page participation link'

Assert-Contains -Path 'alunos.html' -Pattern '<!DOCTYPE html>' -Description 'Students page'
Assert-Contains -Path 'alunos.html' -Pattern 'id="lista-alunos"' -Description 'Students page list container'
Assert-Contains -Path 'alunos.html' -Pattern 'class="student-link"' -Description 'Students page curriculum link'

Assert-Contains -Path 'contato.html' -Pattern '<!DOCTYPE html>' -Description 'Contact page'
Assert-Contains -Path 'contato.html' -Pattern 'Contato do projeto' -Description 'Contact page heading'

Assert-Contains -Path 'participar.html' -Pattern '<!DOCTYPE html>' -Description 'Participation page'
Assert-Contains -Path 'participar.html' -Pattern 'Como participar do projeto' -Description 'Participation page heading'
Assert-Contains -Path 'participar.html' -Pattern 'issues/new' -Description 'Participation page issue link'
Assert-Contains -Path 'participar.html' -Pattern 'settings/repositories' -Description 'Participation page invitation link'

Assert-Contains -Path 'curriculos/modelo.html' -Pattern '<!DOCTYPE html>' -Description 'Resume template'
Assert-Contains -Path 'curriculos/modelo.html' -Pattern 'Nome do Aluno' -Description 'Resume template heading'

Assert-Contains -Path 'css/styles.css' -Pattern ':root' -Description 'Stylesheet variables'
Assert-Contains -Path 'css/styles.css' -Pattern '\.site-header' -Description 'Stylesheet header rules'
Assert-Contains -Path 'css/styles.css' -Pattern '\.student-grid' -Description 'Stylesheet student grid rules'

Assert-Contains -Path 'js/main.js' -Pattern '\$\(function \(\)' -Description 'Main script startup block'
Assert-Contains -Path 'js/main.js' -Pattern 'total-alunos' -Description 'Main script student counter logic'

Write-Host 'Site integrity validation passed.'

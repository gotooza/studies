Remove-Item topPage.md

# パスの取得
$co = Convert-Path .

# \の数を求める、replaceした数からもとめてる？
$coCnt = $co.Length - ($co -replace "\\","").Length

# ディレクトリ取得
$coMain = $co.Split("\")[$coCnt]
$main = $coMain.Split(".")[1]
$coSub = $co.Split("\")[$coCnt-1]
$sub = $coSub.Split(".")[1]

# 初期化
$forma = "# " + $sub + " > " + $main + "`n`n| リンク |`n| :---- |"

$forma | Add-Content topPage.md -Encoding UTF8

$lines = (Get-ChildItem | Sort-Object { [regex]::Replace($_.Name, '\d+', { $args[0].Value.PadLeft(20) }) }) -as [string[]]
$i = 0
foreach ($line in $lines) {
 $topPage = $lines[$i]

    # topPageは対象外
    if ($topPage.IndexOf("topPage")) {
        $addTop = $topPage | foreach { $_ -replace ".md", "" }
        $addCon = $topPage | foreach { $_ -replace "\(", "%28" } | foreach { $_ -replace "\)", "%29" }
        $add = "|[" + $addTop + "](" + $addCon + ")|" | Add-Content topPage.md -Encoding UTF8
    }
 $i++
}
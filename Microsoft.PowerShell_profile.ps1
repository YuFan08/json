# 代理开启函数
function proxy {
    $env:HTTP_PROXY = "socks5://127.0.0.1:7897"
    $env:HTTPS_PROXY = "socks5://127.0.0.1:7897"
    Write-Host "已开启终端代理 (127.0.0.1:7897)" -ForegroundColor Green
}

# 代理关闭函数
function unproxy {
    $env:HTTP_PROXY = $null
    $env:HTTPS_PROXY = $null
    Write-Host "已关闭终端代理" -ForegroundColor Red
}
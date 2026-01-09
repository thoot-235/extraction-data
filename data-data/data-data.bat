@echo off
:: 第一步：强制设置UTF-8编码（解决中文乱码核心）
chcp 65001 >nul
:: 启用延迟扩展（避免变量解析问题）
setlocal enabledelayedexpansion

:: ===================== 配置区（请确认路径是否正确）=====================
:: 源目录：要查找.ms文件的根目录（请核对路径是否真实存在！）
set "SOURCE_DIR=E:\驾驶舱\magic-api\api"
:: 目标目录：复制到的文件夹
set "TARGET_DIR=F:\data-data"
:: 要查找的文件后缀
set "FILE_EXT=ms"
:: ==================================================================

:: 检查源目录是否存在（中文路径现在能正确识别）
if not exist "%SOURCE_DIR%" (
    echo [错误] 源目录不存在：%SOURCE_DIR%
    pause
    exit /b 1
)

:: 创建目标目录（不存在则创建）
if not exist "%TARGET_DIR%" (
    echo [信息] 目标目录不存在，正在创建：%TARGET_DIR%
    md "%TARGET_DIR%" >nul
    if errorlevel 1 (
        echo [错误] 创建目标目录失败：%TARGET_DIR%
        pause
        exit /b 1
    )
)

:: 递归查找并复制.ms文件
echo [信息] 开始查找 %SOURCE_DIR% 下所有.%FILE_EXT% 文件...
set "COPY_COUNT=0"

:: 核心：递归遍历所有.ms文件（解决中文路径遍历问题）
for /r "%SOURCE_DIR%" %%f in (*.%FILE_EXT%) do (
    echo [找到] %%f
    :: 复制文件（/y 覆盖重名文件，可删除/y取消覆盖）
    copy /y "%%f" "%TARGET_DIR%\" >nul
    if errorlevel 1 (
        echo [警告] 复制失败：%%f
    ) else (
        set /a COPY_COUNT+=1
        echo [成功] 已复制：%%f → %TARGET_DIR%
    )
)

:: 输出结果
echo.
echo ===================== 执行完成 =====================
echo 源目录：%SOURCE_DIR%
echo 目标目录：%TARGET_DIR%
echo 成功复制的.%FILE_EXT% 文件数量：!COPY_COUNT!
echo ====================================================

pause
endlocal
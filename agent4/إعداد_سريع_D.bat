@echo off
chcp 65001 >nul
echo ========================================
echo 🔧 إعداد Agent4 على البارتشن D:
echo ========================================
echo.

REM إنشاء المجلدات على D:
echo 📁 إنشاء المجلدات...
if not exist "D:\Agent4" mkdir "D:\Agent4"
if not exist "D:\Agent4\memory_db" mkdir "D:\Agent4\memory_db"
if not exist "D:\Agent4\custom_tools" mkdir "D:\Agent4\custom_tools"
if not exist "D:\Agent4\cache" mkdir "D:\Agent4\cache"
if not exist "D:\Agent4\logs" mkdir "D:\Agent4\logs"
if not exist "D:\Agent4\projects" mkdir "D:\Agent4\projects"
if not exist "D:\Agent4\backups" mkdir "D:\Agent4\backups"
if not exist "D:\Agent4\screenshots" mkdir "D:\Agent4\screenshots"
if not exist "D:\Agent4\ollama_models" mkdir "D:\Agent4\ollama_models"

echo ✅ تم إنشاء المجلدات
echo.

REM إعداد متغير البيئة لـ Ollama
echo 🔧 إعداد Ollama لاستخدام D:...
setx OLLAMA_MODELS "D:\Agent4\ollama_models"
echo ✅ تم تعيين متغير البيئة OLLAMA_MODELS
echo.

echo ========================================
echo ⚠️  مهم جداً:
echo ========================================
echo.
echo 1. أعد تشغيل Terminal/Command Prompt
echo 2. ثم قم بتشغيل:
echo    ollama pull deepseek-r1:32b
echo    ollama pull qwen2.5-coder:32b
echo.
echo 3. تحقق من المسار:
echo    echo %%OLLAMA_MODELS%%
echo.
echo ========================================
echo ✅ الإعداد مكتمل!
echo ========================================
pause

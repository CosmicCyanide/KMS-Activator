@echo off
title Windows 11 Pro Activation Script
color 1F

echo.
echo ==========================================
echo         Windows 11 Pro Activation
echo ==========================================
echo.

echo Setting the KMS client setup key...
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
echo KMS client setup key set successfully.
echo.

echo Connecting to KMS server...
slmgr /skms kms8.msguides.com
echo Connected to KMS server successfully.
echo.

echo Activating Windows...
slmgr /ato
if %errorlevel% neq 0 (
    echo Activation failed. Please check your network connection or KMS server.
) else (
    echo Activation successful!
)

echo.
echo Checking activation status...
slmgr /xpr
echo.

echo ==========================================
echo         Activation Process Complete
echo ==========================================
echo Press any key to exit...
pause > nul

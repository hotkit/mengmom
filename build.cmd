pushd %0\..

call fost-web\compile.cmd %*

IF ERRORLEVEL 1 (
    popd
    copy
) ELSE (
    popd
)

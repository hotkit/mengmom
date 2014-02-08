pushd %0\..
svn up .

IF NOT EXIST fost-web\. (
    call git clone git@github.com:Felspar/fost-web.git
    cd fost-web
    call git checkout -b develop
    call git pull origin develop
) ELSE (
    cd fost-web
    call git pull origin develop
)
cd ..

IF ERRORLEVEL 1 (
    popd
    copy
) ELSE (
    popd
)

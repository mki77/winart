@echo off
git clone -n https://github.com/microsoft/fluentui-system-icons.git --depth 1
pushd fluentui-system-icons
git checkout HEAD */IconAssets.xcassets/*32_regular.svg
for /f %%f in ('dir /b/s *.svg') do move %%f
rd /q/s ios
popd
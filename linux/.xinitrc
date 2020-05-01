# 输入法
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
# 系统设置中文
export LC_ALL=zh_CN.UTF-8
# 启动 fcitx
fcitx
# i3 启动
exec i3

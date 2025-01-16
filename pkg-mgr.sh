#!/bin/bash +x
theme_url=https://downloads.wordpress.org/theme
theme_list=theme.list
plugin_url=https://downloads.wordpress.org/plugin
plugin_list=plugin.list

download_plugin () {
    while read line;
    do
    wget "$plugin_url"/"$line".zip 
    unzip "$line".zip -d plugins
    rm -rf "$line".zip
    done < "$plugin_list"
}

download_theme () {
    while read line;
    do
    wget "$theme_url"/"$line".zip 
    unzip "$line".zip -d themes
    rm -rf "$line".zip
    done < "$theme_list"
}

download_theme
download_plugin
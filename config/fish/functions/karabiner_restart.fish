function karabiner_restart --description 'Restart Karabiner to reload its config file whenever it changes'
    launchctl kickstart -k gui/(id -u)/org.pqrs.karabiner.karabiner_console_user_server
end

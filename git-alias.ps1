Function glola {
    git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all
}


Function gst {
    git status
}


Function gloga {
    git log --oneline --decorate --graph --all
}


Function glgm {
    git log --graph --max-count=10
}

Function glol {
    git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
}
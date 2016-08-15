vim:
  pkg.installed: []

#/home/andhieka/.vimrc:
#  file:
#    - managed
#    - source: http://www.andhiekaputra.com/favs/.vimrc
#    - require:
#      - pkg: vim

git:
  pkg.installed: []

configs:
  git.latest:
    - name: https://github.com/andhieka/configs.git
    - rev: master
    - branch: master
    - target: /home/andhieka/Documents/git-projects/configs
    - user: andhieka
    - update_head: False
    - require:
      - pkg: git

/home/andhieka/.vimrc:
  file:
    - managed
    - source: /home/andhieka/Documents/git-projects/configs/.vimrc
    - user: andhieka
    - group: andhieka
    - require: [configs]

/home/andhieka/.gitconfig:
  file:
    - managed
    - source: /home/andhieka/Documents/git-projects/configs/.gitconfig
    - user: andhieka
    - group: andhieka
    - require: [configs]


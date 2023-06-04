kubeadm(1) -- Descrição do programa MarkDown para gerar MiniMan Pages Próprias por Rafael Quirino.
===============================================


SYNOPSIS
--------

`kubeadm` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`kubeadm` usado para administrar o cluster K8S.

OPÇÕES
------

* `reset`:
  resetar a instalação.

EXEMPLOS
--------

  Para gerar um novo token para algum WORKER node fazer join no MASTER-NODE(control-plane)
  `$> kubeadm token generate`
  `$> kubeadm token create <generated-token> --print-join-command --ttl=0 `


ARQUIVOS
--------

  kube-config.yaml - Arquivo gerado ao termino da configuração e start do K8S control-plane.


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)

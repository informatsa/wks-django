# wks-django
Repositorio de ejemplo workshop python + django

## Pre - requisitos
- Editor de texto ( ej. [Atom](https://atom.io/), [Sublime Text](https://www.sublimetext.com/) )
- Virtualbox ( descarga [Windows](http://download.virtualbox.org/virtualbox/5.1.28/VirtualBox-5.1.28-117968-Win.exe) )
- Vagrant ( descarga [Windows](https://releases.hashicorp.com/vagrant/2.0.0/vagrant_2.0.0_x86_64.msi?_ga=2.102720643.386209693.1506483624-1650078759.1505860255) )
- Cuenta [github](https://github.com/) ( usar correo informat )
- Git ( descarga [Windows](https://git-scm.com/download/win) )

## Preparación de ambiente de desarrollo
### Clonar proyecto
```
git clone https://github.com/informatsa/wks-django.git
```
Alternativa
[Descarga directa](https://github.com/informatsa/wks-django/archive/master.zip)

```
cd wks-django
```
### Crear máquina virtual
```
vagrant box add ubuntu/trusty64
vagrant up
```

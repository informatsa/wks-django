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
## Workshop
- Introducción
  - Herramientas de desarrollo
  - Lenguaje de programación
  - django
  - postgresql
  - Git
  - configuración de máquina virtual
- Creado la primera aplicación
  - Creando un proyecto
  - Configuración de base de datos
  - Vistas
  - Formularios
  - Pruebas automatizadas
  - Mejorando aspecto
  - Sitio administrativo
- Deploy de aplicación
  - Amazon AWS
  - Intancia EC2
  - Preparación de ambiente de producción
  - Deploy aplicación
### Herramientas de desarrollo
[Vagrant](https://en.wikipedia.org/wiki/Vagrant_software): Vagrant es una herramienta para la creación y configuración de entornos de desarrollo virtualizados. Originalmente se desarrolló para VirtualBox y sistemas de configuración tales como Chef, Salt y Puppet. Sin embargo desde la versión 1.1 Vagrant es capaz de trabajar con múltiples proveedores, como VMware, Amazon EC2, LXC, DigitalOcean, etc.
[Documentación oficial](https://www.vagrantup.com/docs/)
[Sitio web oficial de vagrant](https://www.vagrantup.com/)
```
vagrant --help                   # ayuda en linea
vagrant up                       # levanta máquina virtual desde directorio actual
vagrant up --provider=virtualbox # levantar máquina con proveedor virtualbox
vagrant ssh                      # conecta a máquina virtual mediante ssh
vagrant halt                     # detiene máquina virtual activa
vagrant destroy                  # elimina máquina virtual
```


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
  - vagrant
  - git
  - python
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
### [Servicio git](https://es.wikipedia.org/wiki/Git)

Es un software de control de versiones diseñado por Linus Torvalds, pensando en la eficiencia y la confiabilidad del mantenimiento de versiones de aplicaciones cuando éstas tienen un gran número de archivos de código fuente. Al principio, Git se pensó como un motor de bajo nivel sobre el cual otros pudieran escribir la interfaz de usuario o front end como Cogito o StGIT. 3​ Sin embargo, Git se ha convertido desde entonces en un sistema de control de versiones con funcionalidad plena. 4​ Hay algunos proyectos de mucha relevancia que ya usan Git, en particular, el grupo de programación del núcleo Linux ...

[Sitio oficia](https://git-scm.com/)

[Documentación oficial](https://git-scm.com/doc)

[Ayuda rápida](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet)

Comando                                          | Descripción
-------------------------------------------------|---------------------------------------------------------------
git init                                         | crea nuevo repositorio git
git config --global user.name <nombre usuario>   | configura nombre usuario global  
git config --global user.email <correo usuario>  | configura correo usuario global  
git clone <repor>                                | clonar repositorio remoto a un directorio local   
git add                                          | agrega archivos al repositorio
git commit -m "mensaje"                          | confirmar cambios
git status                                       | lista cambios de archivos
git pull                                         | descarga desde el repositorio remoto últimas modificaciones  
git push                                         | envía a repositorio remoto nuevas modificaciones

### Python

Python es un lenguaje de programación interpretado cuya filosofía hace hincapié en una sintaxis que favorezca un código legible.
Se trata de un lenguaje de programación multiparadigma, ya que soporta orientación a objetos, programación imperativa y, en menor medida, programación funcional. Es un lenguaje interpretado, usa tipado dinámico y es multiplataforma.

[Sitio oficial](https://www.python.org/)

[Documentación oficial](https://docs.python.org/3/)

[Ayuda rápida](https://www.cheatography.com/torerohk/cheat-sheets/python-3-espanol/)

### [Django](https://es.wikipedia.org/wiki/Django_(framework))

Django es un framework de desarrollo web de código abierto, escrito en Python, que respeta el patrón de diseño conocido como Modelo–vista–controlador. Fue desarrollado en origen para gestionar varias páginas orientadas a noticias de la World Company de Lawrence, Kansas, y fue liberada al público bajo una licencia BSD en julio de 2005; el framework fue nombrado en alusión al guitarrista de jazz gitano Django Reinhardt. En junio de 2008 fue anunciado que la recién formada Django Software Foundation se haría cargo de Django en el futuro.

[Sitio oficial](https://www.djangoproject.com/)

[Documentación oficial](https://docs.djangoproject.com/en/1.11/)

[Ayuda rápida](http://www.cheat-sheets.org/saved-copy/django_reference_sheet.pdf)

```
# crear nuevo proyecto django
django-admin startproject nombre-proyecto

# crear nueva aplicación
django-admin startapp nombre-aplicacion

# ejecutar servidor de pruebas
python manage.py runserver
```
** Estructura de un proyecto **
```
.
├── manage.py
├── nueva_app
│   ├── admin.py
│   ├── apps.py
│   ├── __init__.py
│   ├── migrations
│   │   └── __init__.py
│   ├── models.py
│   ├── tests.py
│   └── views.py
└── nuevo_proyecto
    ├── __init__.py
    ├── settings.py
    ├── urls.py
    └── wsgi.py
```
** Ejemplo de template **
```
{% extends "base" %}
{% block title %}{{ title|title }}{% endblock %}
{% block intro %}
    Texto que puede ser remplazar cuando se sobre escribe este bloque
{% endblock %}
{% block content %}
    {% for entry in blog_entries %}
        {% ifchanged %}<h1>{{ entry.pub_date|date”F, y” }}</h1>{% endifchanged %}
        <h2>{{ entry.title }}</h2> <p>
        {{ entry.body|escape|urlizetrunc:"40"|linebreaks}}</p>
    {% endfor %}
{% endblock %}
```
**

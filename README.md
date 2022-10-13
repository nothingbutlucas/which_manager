# which_manager.sh

```bash

    ❯ ./which_manager.sh
    ┬ ┬┬ ┬┬┌─┐┬ ┬    ┌┬┐┌─┐┌┐┌┌─┐┌─┐┌─┐┬─┐
    │││├─┤││  ├─┤    │││├─┤│││├─┤│ ┬├┤ ├┬┘
    └┴┘┴ ┴┴└─┘┴ ┴────┴ ┴┴ ┴┘└┘┴ ┴└─┘└─┘┴└─

```

Este script pretende decirte facilmente que manejador de paquetes utiliza tu sistema

## Correrlo en local

1. Clonar el proyecto

```bash
    git clone https://github.com/nothingbutlucas/which_manager
```

2. Vas a la carpeta donde clonaste el proyecto

```bash
    cd which_manager
```

3. Dale permisos de ejecución al script

```bash
    chmod 744 which_manager.sh
```

4. *[Opcional]* Copiar el script a una ruta que este en tu PATH, yo estoy usando la ruta ~/.local/bin porque estoy en linux. En windows me parece que se puede configurar desde las variables del sistema. Esto nos permite ejecutar por consola el script sin tener que estar moviendolo de una carpeta a otra.

```bash
    cp which_manager.sh ~/.local/bin/
```

5. Ejecuta el script

```bash
    ./which_manager.sh
```

Output del script en un sistema con yum y dnf:

```bash

    ❯ ./which_manager.sh
    ┬ ┬┬ ┬┬┌─┐┬ ┬    ┌┬┐┌─┐┌┐┌┌─┐┌─┐┌─┐┬─┐
    │││├─┤││  ├─┤    │││├─┤│││├─┤│ ┬├┤ ├┬┘
    └┴┘┴ ┴┴└─┘┴ ┴────┴ ┴┴ ┴┘└┘┴ ┴└─┘└─┘┴└─

    [+] yum -> /usr/bin/yum

    [+] dnf -> /usr/bin/dnf

```

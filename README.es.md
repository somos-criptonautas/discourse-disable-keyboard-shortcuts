# Disable Keyboard Shortcuts

[ENGLISH](README.md) | **ESPAÑOL**

Mantenido por Criptonautas. Sin afiliación ni respaldo de Discourse (Civilized Discourse Construction Kit, Inc.).

Componente de tema que desactiva los atajos de teclado propios de Discourse para
todos: navegación con `j`/`k`, `?`, las secuencias con `g`, `r`, `l`, `b` y el resto
de la lista de la ayuda de atajos. Las teclas del navegador y del sistema no se
tocan.

Útil cuando los miembros disparan acciones sin querer (una `l` suelta da like a un
post, `g h` saca de la página) o cuando las teclas de una letra chocan con un lector
de pantalla o una extensión del navegador.

## Qué hace

- Pausa todos los atajos por defecto del servicio de atajos de core, salvo:
  - `Ctrl+Alt+F` (abrir búsqueda), `Ctrl/Cmd+P` (imprimir) y `Shift+F11` (editor a
    pantalla completa), que funcionan incluso escribiendo;
  - `o` / `Enter`, que abren el tema seleccionado.
- Oculta el botón de teclado del pie de la barra lateral y las pistas de atajos en
  los menús desplegables, porque la ayuda listaría teclas que no hacen nada.

No afecta: los atajos del editor (`Ctrl+B`, `Ctrl+I`, `Ctrl+Enter`…) ni los atajos
que añadan otros plugins o componentes. Los del editor siguen funcionando, pero sus
pistas en los menús desplegables también quedan ocultas.

## Instalación

1. Admin → Apariencia → Temas → **Componentes** → Instalar → *Desde un repositorio git*:
   `https://github.com/somos-criptonautas/discourse-disable-keyboard-shortcuts`
2. Añade el componente a tu(s) tema(s) activo(s).

Sin ajustes. Al quitar el componente vuelven todos los atajos.

## Límites conocidos

La lista de atajos está copiada de core. Un atajo que core añada en una versión
futura sigue activo hasta que se actualice la lista aquí.

## Licencia

MIT. Ver [LICENSE](LICENSE).

Texto de este README bajo [CC BY-NC-SA 4.0](CC-BY-NC-SA-4.0.txt).

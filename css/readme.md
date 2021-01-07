# rhinoCSS
Classes do rhinoCSS

# Para compilar

Antes deve ser instalado globalmente o less e o clean-css

```
npm i less -g
npm i clean-css -g
```

E então compilar:

```
lessc index.less dist/rhino.css
lessc index.less dist/rhino.min.css -clean-css
```
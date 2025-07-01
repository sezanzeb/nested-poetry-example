# nested-poetry-example

Using `poetry==2.1.3`

```bash
./reproduce_problem
```

in the subfolder, `env list` prints something different from `env info`

```bash
./workaround.sh
```

makes it work by unsetting VIRTUAL_ENV

## ??

```
python3 -m poetry run bash -c "echo $VIRTUAL_ENV"
```

prints nothing

```
python3 -m poetry run bash
echo $VIRTUAL_ENV
```

prints something

```
python3 -m poetry run bash -c "env | grep VIRTUAL_ENV"
```

also prints something

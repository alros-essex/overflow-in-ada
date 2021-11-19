# overflow-in-ada

An experiment to show how ADA prevents overflows at compile-time.

Compile with:

```
gnatmake -f overflow.adb  -largs -Wl,-v
```

It will compile but the executable will immediately fail at startup with:

```
raised CONSTRAINT_ERROR : overflow.adb:7 range check failed
```

Using gnatprove it is possible to detect the failure at compile-time:

```
gnatprove -P my_project.gpr
```

It fails with:

```
overflow.adb:7:08: medium: range check might fail (e.g. when X = 2.1474836470E+9)
```

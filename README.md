# elf_symbol_searcher

## Require

+ readelf
+ ldd
+ c++filt

## Usage

default

```
./elf_symbol_searcher -e <binary_path> -s "<symbol name>"
```

c++

```
./elf_symbol_searcher -e <binary_path> -s "<symbol name>" --demangle
```

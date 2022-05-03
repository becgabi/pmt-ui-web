# Projekt indítási lépések

## A legújabb stabil flutter előkészítése

### Flutter telepítése
2.10.3-stable

### Flutter ellenőrzés
Parancssorban:
```shell
flutter --version
```

## Flutter path beállítása (IDEA settings)
IDEA: Settings/Languages & Frameworks/Flutter: Flutter SDK path

## Flutter plugin telepítése (IDEA Plugins)
IDEA: Settings/Plugins: Flutter plugin telepítése
IDEA: Settings/Plugins: Dart plugin telepítése

## Projekt indítása
Chrome (web) target device kiválasztása
main.dart indítása (lib/app/main.dart)

## CORS probléma
Flutter web platformon az API kérések az alábbi hibával elakadnak:
```
Error: ApiException 400: HTTP connection failed: GET ... (Inner exception: XMLHttpRequest error.)
...
```
A gond az, hogy a chrome példány, amit flutter indít abban van CORS ellenőrzés, mert a web security enedélyezve van (természetesen).

Az alábbi tool telepítésével ez ki be kapcsolható:
```shell
dart pub global activate flutter_cors
```

### Probléma megoldása Mac alatt:

0. which flutter
1. Go to flutter\bin\cache and remove a file named: flutter_tools.stamp
2. Go to flutter\packages\flutter_tools\lib\src\web and open the file chrome.dart.
3. Find '--disable-extensions'
4. Add '--disable-web-security'

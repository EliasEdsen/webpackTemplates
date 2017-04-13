# Webpack Template

Шаблон для сборки Jade + Stylus + Coffee файлов.

В консоле запустить:
- `npm start` либо `npm run dev` - соберет версию для разработчика и запустит на localhost
- `npm test` либо `npm run test` - очистит директорию ./dist, соберет версию для разработчика и положит в ./dist
- `npm run prod` - очистит директорию ./dist, соберет продакшн версию с минификацией всех файлов и положит в ./dist
- `npm run deployLocalTest` - очистит директорию C:/OpenServer/domains/case/, соберет версию для разработчика и положит обратно
- `npm run deployLocalProd` - очистит директорию C:/OpenServer/domains/case/, соберет продакшн версию с минификацией всех файлов и положит обратно

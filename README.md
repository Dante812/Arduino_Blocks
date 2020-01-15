# Arduino_Blocks

## Installing module
***
1. для початку скачуємо архів з модулем командою
`sudo wget https://github.com/Miger4ik/Arduino_Blocks/archive/master.tar.gz`
2. розпаковуємо архів командою
`sudo tar xvf master.tar.gz`
3. створюємо папку модуля командою
`sudo mkdir /usr/abills/Abills/modules/Arduino_Blocks/`
4. записуємо всі файли модуля в дану папку командою
`sudo mv Arduino_Blocks-master/* /usr/abills/Abills/modules/Arduino_Blocks/`
5. видаляємо непотрібні файли командами:
`sudo rm master.tar.gz`
 `sudo rm -R Arduino_Blocks-master`
6. записуємо наш модуль в список модулів:
`sudo nano /usr/abills/libexec/config.pl`
в цьому файлі в хеші @MODULES потрібно додати елемент «'Arduino_Blocks'» зберігаємо зміни та виходимо з файлу
7. створюємо «symLink» js файлів командою
`sudo ln -s  /usr/abills/Abills/modules/Arduino_Blocks/arduino_blocks_js /usr/abills/cgi-    bin/styles/default_adm/js/modules/arduino_blocks_js`
8. тепер в інтерфейсі Abills в меню «Настройка» появиться модуль «Code_Creator»
***

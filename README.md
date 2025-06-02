Тех.Документацяи

## Очистка пользовательского пространства.
**Важно вот эти действия производим от пользователя root**
* Настройка окружения пользователя. Все в ключаемо в настройках графической оболочки питание, программы и т.д.
* Далее выбираем место куда скопируем всю директорию пользователя в данном примере будет копировать в opt.
```bash
mkdir /opt/b
cp -r /home/$USER /opt/backup
```
**Важно что бы пользователь назывался student**
* Далее берем скрипт который лежит тут в директории и сервис для systemd, сервис это файл который name.service ложим в:
```bash
cp name.service /etc/systemd/system

systemctl daemon-reload
```
* Далее нам нужно положить скрипт в папку /etc/cod-os
```bash
# Создаем папку cod-os
mdkir /etc/cod-os
# Ложим туда файл
cp clear-system.sh /etc/cod-os/
```
и все. Дальше уже дебажим что может вылезти.

**Важно**\
Скрипт основываеться на записи в лог файле и очистку будет производит раз в день. Если его еще раз дернуть он не очистит так как дата в файл уже записана.
Тут есть другой стрипт который называеться  **cs.sh**\ 
Его ложим туда же **/etc/cod-os**
```bash
cp cs.sh /etc/cod-os
```
* Создаем алиас

```bash
vim ~/.bashrc
И в самый низ добавляем 
alias cs="/etc/cod-os/./cs.sh"
```
## Установка софта.
* Wing Wing Personal
Скачиваем с сайта https://wingware.com/downloads/wing-personal версию нужного Wing

```bash 
wget https://wingware.com/pub/wing-personal/10.0.10.0/wing-personal10_10.0.10-0_amd64.deb

dpkg -i ./wing-personal10_10.0.10-0_amd64.deb
```
* PyCharm Community 
```bash 
add-apt-repository ppa:jetbrains-ppa
apt update
apt install pycharm-community
```
* Code::Blocks 
```bash
add-apt-repository universe
apt update
apt install codeblocks
```
* MinGW GNU C/C++ версии 12.3
```bash
wget http://ports.ubuntu.com/pool/universe/g/gcc-mingw-w64/gcc-mingw-w64_13.2.0-6ubuntu1+26.1_all.deb
dpkg -i ./gcc-mingw-w64_13.2.0-6ubuntu1+26.1_all.deb
```
* QT Creator
```bash
apt install qtcreator
```
* java
```bash
apt install default-jdk-17
```
* Eclipse (java)
```bash
snap install eclipse --classic
```
* FreePascal
```bash
apt install fpc
```
* lazarus-ide
```bash
apt-get install lazarus-ide
```
* VSCode
```bash
apt install code
```
* Plugins VSCode
```
Внутри самой IDE
```

* Scratch 2.0 
```bash
apt install wine
Далее скачиваем exe Запускаем
wine *.exe
Далее нужно установить какой не будь vpn и поставить все то что потрубует Scratch
```
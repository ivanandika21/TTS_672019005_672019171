# TTS_672019005_672019171

# Penjelasan Kode Program

> kedaikopi.model
> └ Kedaikopi.java

Class ini merupakan algoritma utama dari design pattern Model View Controller (MVC), yang berisi deklarasi variabel, setter dan getter untuk masing-masing variabel, lalu constructor untuk seluruh variabel. 

> kedaikopi.web
> └ KedaikopiController.java

Class yang kedua adalah sebagai bagian dari design pattern, yaitu sebagai controller segala lalu lintas request dan response dari Servlet seperti insertData, deleteData, dan lain-lain. Selain itu controller ini juga menyediakan method lain seperti doPost dan doGet. 

> kedaikopi.dao
> └ KedaikopiImpl.java

Selanjutnya ada class Servlet yang berguna untuk melakukan request terhadap suatu method dari class controller.

> kedaikopi.dao
> └ KedaikopiDao.java

Class ini merupakan interface yang digunakan untuk menetapkan perilaku atau alur algoritma dari suatu class yaitu KedaikopiImpl.java

> kedaikopi.util
> └ HibernateUtil.java

Class hibernate digunakan sebagai pengontrol koneksi antara web dan database MySQL. Didalamnya adalah sebuah kode program seperti OOP namun menjalankan fungsi SQL ke database.

> kedaikopi.util
> └ KedaikopiCon.java

Class yang terakhir adalah hanya digunakan untuk melakukan test koneksi dari console IDE

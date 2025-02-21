Nama: Hanin Atina Rahmania
NPM: 2106751234
Kelas: Game Development A
Tutorial 2

**Latihan: Playtest**
Apa saja pesan log yang dicetak pada panel Output?
>> “Reached Objective!”

Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
>> “Reached Objective!”

Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
>> Iya, lokasi scene ObjectiveArea memiliki kaitan dengan pesan log tercetak, yaitu “Reached Objective”, karena ObjectiveArea terletak pada kiri atas pada batas atas layar popout, sehingga ketika landasan digerakkan keatas dan mengenai collision object ObjectiveArea, pesan “Reached Objective!” ditampilkan.

**Latihan: Memanipulasi Node dan Scene**
Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?
>> Node bertipe Sprite berfungsi untuk menampilkan design atau bentuk saja.

Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?
>> Tipe StaticBody2D tidak akan bergerak/berpindah tempat kecuali digerakkan secara manual, sehingga sepertinya cocok digunakan untuk tembok atau lantai pada level. Sedangkan tipe RigidBody2D dapat terpengaruh dan berpindah posisi walaupun tidak sedang digerakkan secara manual, terlihat pada scene BlueShip yang ikut naik saat StonePlatform digerakkan keatas, dan jatuh kebawah saat StonePlatform kebawah.

Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?
>> BlueShip tetap jatuh dengan kecepatan sama berapapun mass yang diberikan.

Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?
>> BlueShip langsung melewati StonePlatform dan jatuh kebawah.

Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?
>> Visualisasi BlueShip pada scene MainLevel ikut berubah sesuai manipulasi, contohnya atribut Position mengatur posisi axis x dan y BlueShip pada scene MainLevel, kemudian atribut Rotation mengatur rotasi BlueShip, dan Scale mengatur ukuran BlueShip.

Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
>> Hal ini karena StonePlatform dan StonePlatform2 berada didalam PlatformBlue, sehingga posisi StonePlatform dan StonePlatform2 adalah relatif terhadap PlatformBlue, misalnya StonePlatform dengan posisi x = 0 dan y = 0 terletak pada titik tersebut relatif terhadap PlatformBlue.

# Arsenal Hub Android

Aplikasi Android Arsenal Hub berbasis WebView dengan tampilan mobile. Data pertandingan diambil dari API-Football (API-Sports), bukan skor contoh.

## Cara mendapatkan APK melalui GitHub Actions
1. Buat repository GitHub baru.
2. Upload seluruh isi folder proyek ini ke repository (bukan folder ZIP-nya).
3. Buka tab **Actions** dan pilih workflow **Build Arsenal Hub APK**.
4. Tekan **Run workflow**. Tunggu sampai proses selesai.
5. Buka hasil workflow, unduh artifact **Arsenal-Hub-debug-apk**, lalu ekstrak untuk mendapatkan `app-debug.apk`.
6. Instal APK di Android. Jika diminta, izinkan pemasangan dari sumber yang kamu pilih.

Workflow juga berjalan otomatis setiap kali kamu push perubahan ke branch `main`.

## API key
- Buat API key API-Football di https://www.api-football.com/
- Buka Arsenal Hub > Pengaturan, masukkan API key, lalu simpan.
- API key disimpan lokal di perangkat menggunakan localStorage WebView.
- Jangan membagikan APK yang sudah kamu isi API key pribadi. Untuk aplikasi publik, sebaiknya gunakan backend proxy agar key tidak tertanam di perangkat.
- Cakupan endpoint bergantung pada paket API. Lineup baru tersedia setelah dirilis oleh penyedia data.

## Identitas data
- Arsenal team ID: `42`
- Premier League league ID: `39`
- Season default: `2026` (ubah di Pengaturan bila paket/API kamu memakai musim berbeda).

## Build lokal
Memerlukan Android Studio, JDK 17, dan Android SDK. Jalankan:
`./gradlew assembleDebug`

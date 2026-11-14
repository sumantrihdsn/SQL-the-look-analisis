# SQL-the-look-analisis
mini analisa terkait dengan data the look e commerce
# 📊 Mini Project SQL: Analisis Data TheLook E-commerce

Proyek ini merupakan bagian dari portofolio **Data Analytics Bootcamp** yang berfokus pada penggunaan SQL (*Basic SQL* hingga *Simple JOIN*) menggunakan Google BigQuery untuk menjawab berbagai studi kasus dan kebutuhan tim bisnis di perusahaan fiktif **TheLook E-commerce**.

---

## 🎯 Tujuan Project
Sebagai seorang *Junior Data Analyst* di TheLook E-commerce, tujuan utama dari analisis ini adalah membantu tim bisnis (Product, Marketing, CRM, dan Manajemen) dalam memahami:
1. Karakteristik dan variasi produk yang dijual.
2. Daftar produk kategori premium untuk kebutuhan kampanye pemasaran.
3. Distribusi jumlah produk di setiap kategori.
4. Data pelanggan yang aktif melakukan transaksi/pemesanan.
5. Kontribusi nilai penjualan (*revenue*) dari masing-masing kategori produk.

---

## 🗄️ Dataset
Analisis ini menggunakan dataset publik yang tersedia di **Google BigQuery**:
* **Nama Dataset:** `bigquery-public-data.thelook_ecommerce`
* **Tabel yang Digunakan:**
  * `products`: Informasi detail mengenai katalog produk (nama, kategori, merek, harga retail, dll).
  * `users`: Informasi data profil pelanggan.
  * `orders`: Data transaksi pesanan yang dibuat oleh pelanggan.
  * `order_items`: Detail item pada setiap pesanan beserta harga jual transaksi (`sale_price`).

---

## ❓ Pertanyaan Bisnis & Konsep SQL
Berikut adalah 5 pertanyaan bisnis yang diselesaikan dalam proyek ini beserta materi SQL yang diterapkan:

1. **Analisis Produk (Tim Product)**
   * *Pertanyaan:* Bagaimana karakteristik 20 produk pertama yang dijual (nama, kategori, departemen, merek, dan harga retail)?
   * *Konsep SQL:* `SELECT`, `FROM`, `LIMIT`
2. **Identifikasi Produk Premium (Tim Marketing)**
   * *Pertanyaan:* Produk apa saja yang termasuk kategori premium (harga retail > $100) diurutkan dari harga tertinggi ke terendah?
   * *Konsep SQL:* `WHERE`, `ORDER BY`, `DESC`
3. **Evaluasi Kategori Produk (Tim Product)**
   * *Pertanyaan:* Kategori mana yang memiliki variasi jumlah produk terbanyak?
   * *Konsep SQL:* `COUNT`, `GROUP BY`, `ORDER BY`
4. **Mengenal Pelanggan dan Pesanan (Tim CRM)**
   * *Pertanyaan:* Siapa saja pelanggan yang melakukan pemesanan beserta detail ID pesanan, status, dan tanggal pemesanannya?
   * *Konsep SQL:* `INNER JOIN`, `ON`, Alias Tabel
5. **Analisis Penjualan per Kategori (Manajer Bisnis)**
   * *Pertanyaan:* Kategori produk mana yang menghasilkan total nilai penjualan (`sale_price`) terbesar?
   * *Konsep SQL:* `JOIN`, `SUM`, `GROUP BY`, `ORDER BY`

---

## 💡 Key Business Insights
*(Catatan: Silakan sesuaikan angka/nama kategori di bawah ini dengan hasil aktual yang muncul saat Anda menjalankan query di Google BigQuery)*

Berdasarkan hasil eksplorasi data pada **Pertanyaan 3 (Jumlah Produk per Kategori)** dan **Pertanyaan 5 (Total Penjualan per Kategori)**, ditemukan beberapa temuan utama:

1. **Dominasi Variasi Produk vs. Pendapatan:**
   * Kategori **[Isi Kategori Terbanyak di Soal 3, misal: Intimates / Jeans]** memiliki variasi SKU/jumlah produk terbanyak di katalog, yang menunjukkan fokus perusahaan dalam menyediakan banyak pilihan di kategori tersebut.
2. **Kontributor Pendapatan Utama (Revenue Driver):**
   * Kategori **[Isi Kategori Penjualan Tertinggi di Soal 5, misal: Outerwear & Coats]** menyumbang total nilai penjualan tertinggi. Hal ini mengindikasikan bahwa meskipun jumlah itemnya mungkin tidak sebanyak kategori lain, harga jual per item yang tinggi membuat kategori ini menjadi motor utama pendapatan perusahaan.
3. **Rekomendasi Bisnis:**
   * Tim Marketing dapat memfokuskan anggaran promosi pada kategori dengan *revenue* tinggi seperti **[Nama Kategori]**, sementara Tim Product perlu mengevaluasi kategori dengan jumlah produk banyak namun total penjualannya rendah untuk mencegah penumpukan stok (*overstock*).

---

## 📂 Struktur Repository
* `query_thelook_ecommerce.sql` — Kumpulan *query* SQL untuk menjawab ke-5 pertanyaan bisnis di atas. *(Sesuaikan nama file `.sql` Anda di sini)*
* `README.md` — Dokumentasi proyek, tujuan, dataset, dan rangkuman *insight*.

---

## 🛠️ Tools yang Digunakan
* **Google BigQuery** (Data Warehouse & SQL Execution)
* **GitHub** (Version Control & Portfolio Documentation)

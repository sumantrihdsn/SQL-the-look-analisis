1. menampilkan 20 produk pertama berdasarkan retail kategori, departemen, merk dan harga retail
select
  name,
  category,
  department,
  brand,
  retail_price
from bigquery-public-data.thelook_ecommerce.products
order by name ASC
limit 20;

3. evaluasi Kategori Produk
-- Mengetahui kategori dengan jumlah produk terbanyak
select
  category,
  count(id) as jml_produk
from bigquery-public-data.thelook_ecommerce.products
group by category
order by jml_produk DESC;

--insight
-- kategori produk yang paling tinggi adalah 'Intimates' dengan 2.363 produk
-- Sedangkan produk yang yang terendah adalah 'Clothing Sets' dengan 37 produk 

4. Gabungkan data pelanggan dan pesanan untuk melihat detail pesanan beserta nama pelanggan
select
o.order_id,
o.status as status_pesanan,
o.created_at as tgl_order,
u.first_name,
u.last_name
from bigquery-public-data.thelook_ecommerce.orders as o
join bigquery-public-data.thelook_ecommerce.users as u
on o.user_id = u.id
order by o.created_at ASC

--insight
-- Pesanan pertama terjadi tanggal 6-01-2019
-- Total pesanan ada 125.467 pesanan

5. Menganalisa penjualan per katagori

select
  p.category,
  round(sum(oi.sale_price),2) as total_penjualan
from bigquery-public-data.thelook_ecommerce.order_items as oi
join bigquery-public-data.thelook_ecommerce.products as p
on oi.product_id = p.id
group by 
  p.category
order by total_penjualan DESC;

--insight
-- Produk yg paling tinggi total penjualannya adalah 'Outerwear & Coats dengan total 1.304.349.53
-- sedangkan produk yang total penjualannya terendah adalah 'Clothing Sets'

-- ============================================
-- RIDA / MAH E NOOR STORE - Supabase Setup
-- Run this in Supabase SQL Editor
-- ============================================

-- 1. Create products table
CREATE TABLE IF NOT EXISTS products (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT,
  price NUMERIC(10,2) NOT NULL,
  original_price NUMERIC(10,2),
  category TEXT DEFAULT 'Lawn Suits',
  image_url TEXT,
  image_url_2 TEXT,
  image_url_3 TEXT,
  in_stock BOOLEAN DEFAULT true,
  featured BOOLEAN DEFAULT false,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 2. Create storage bucket for product images
INSERT INTO storage.buckets (id, name, public)
VALUES ('product-images', 'product-images', true)
ON CONFLICT DO NOTHING;

-- 3. Allow public read access to product images
CREATE POLICY "Public can view images"
ON storage.objects FOR SELECT
USING (bucket_id = 'product-images');

-- 4. Allow all uploads (admin will use this)
CREATE POLICY "Anyone can upload images"
ON storage.objects FOR INSERT
WITH CHECK (bucket_id = 'product-images');

CREATE POLICY "Anyone can update images"
ON storage.objects FOR UPDATE
USING (bucket_id = 'product-images');

CREATE POLICY "Anyone can delete images"
ON storage.objects FOR DELETE
USING (bucket_id = 'product-images');

-- 5. Allow public read on products
ALTER TABLE products ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Public can view products"
ON products FOR SELECT
USING (true);

CREATE POLICY "Anyone can manage products"
ON products FOR ALL
USING (true);

-- 6. Insert sample products (optional - delete after testing)
INSERT INTO products (name, description, price, original_price, category, featured) VALUES
('Mah e Noor Classic Lawn', '3-piece premium lawn suit with embroidered dupatta. Soft fabric, perfect for summer.', 3500, 4200, 'Lawn Suits', true),
('Rida Summer Collection', 'Elegant printed lawn with contrast trouser. Ready to wear style.', 2800, 3500, 'Lawn Suits', true),
('Mah e Noor Embroidered', 'Beautiful embroidered lawn suit with chiffon dupatta. Limited stock.', 4500, 5500, 'Embroidered', true);

PGDMP                      }            sales_db    17.5    17.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    24589    sales_db    DATABASE     {   CREATE DATABASE sales_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE sales_db;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    24591    online_sales    TABLE     �   CREATE TABLE public.online_sales (
    order_id integer NOT NULL,
    order_date date NOT NULL,
    product_id integer NOT NULL,
    amount numeric(10,2) NOT NULL
);
     DROP TABLE public.online_sales;
       public         heap r       postgres    false    4            �            1259    24590    online_sales_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.online_sales_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.online_sales_order_id_seq;
       public               postgres    false    4    218            �           0    0    online_sales_order_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.online_sales_order_id_seq OWNED BY public.online_sales.order_id;
          public               postgres    false    217            !           2604    24594    online_sales order_id    DEFAULT     ~   ALTER TABLE ONLY public.online_sales ALTER COLUMN order_id SET DEFAULT nextval('public.online_sales_order_id_seq'::regclass);
 D   ALTER TABLE public.online_sales ALTER COLUMN order_id DROP DEFAULT;
       public               postgres    false    217    218    218            �          0    24591    online_sales 
   TABLE DATA           P   COPY public.online_sales (order_id, order_date, product_id, amount) FROM stdin;
    public               postgres    false    218          �           0    0    online_sales_order_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.online_sales_order_id_seq', 22, true);
          public               postgres    false    217            #           2606    24596    online_sales online_sales_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.online_sales
    ADD CONSTRAINT online_sales_pkey PRIMARY KEY (order_id);
 H   ALTER TABLE ONLY public.online_sales DROP CONSTRAINT online_sales_pkey;
       public                 postgres    false    218            �   �   x�u�A� ����f1�_���Q�4 S�"����E��ڜ
�b����:`�����9���ྐྵ܋q��w"x/�_�#����ő���g�6�G��?��9��Q��D6JT�l�zb�=��+��;�'1"$J�D��(�����jZ�     
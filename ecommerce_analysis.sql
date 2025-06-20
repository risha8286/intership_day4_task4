PGDMP  &    9                }            ecommerce_analysis    17.5    17.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16390    ecommerce_analysis    DATABASE     �   CREATE DATABASE ecommerce_analysis WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
 "   DROP DATABASE ecommerce_analysis;
                     postgres    false            �            1259    16427 	   customers    TABLE     �   CREATE TABLE public.customers (
    customer_id numeric,
    first_name text,
    last_name text,
    email text,
    "country " text,
    country character varying(50)
);
    DROP TABLE public.customers;
       public         heap r       postgres    false            �            1259    16433    order_items    TABLE     �   CREATE TABLE public.order_items (
    order_item_id integer NOT NULL,
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    unit_price numeric(10,2) NOT NULL
);
    DROP TABLE public.order_items;
       public         heap r       postgres    false            �            1259    16432    order_items_order_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_items_order_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.order_items_order_item_id_seq;
       public               postgres    false    222            �           0    0    order_items_order_item_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.order_items_order_item_id_seq OWNED BY public.order_items.order_item_id;
          public               postgres    false    221            �            1259    16397    orders    TABLE     }   CREATE TABLE public.orders (
    order_id numeric,
    customer_id numeric,
    order_date date,
    total_amount numeric
);
    DROP TABLE public.orders;
       public         heap r       postgres    false            �            1259    16412    payments    TABLE     �   CREATE TABLE public.payments (
    payment_id numeric,
    order_id numeric,
    payment_date date,
    payment_amount numeric,
    payment_method numeric[]
);
    DROP TABLE public.payments;
       public         heap r       postgres    false            �            1259    16407    products    TABLE     z   CREATE TABLE public.products (
    product_id numeric,
    product_name text,
    category "char"[],
    price numeric
);
    DROP TABLE public.products;
       public         heap r       postgres    false            1           2604    16436    order_items order_item_id    DEFAULT     �   ALTER TABLE ONLY public.order_items ALTER COLUMN order_item_id SET DEFAULT nextval('public.order_items_order_item_id_seq'::regclass);
 H   ALTER TABLE public.order_items ALTER COLUMN order_item_id DROP DEFAULT;
       public               postgres    false    221    222    222            �          0    16427 	   customers 
   TABLE DATA           c   COPY public.customers (customer_id, first_name, last_name, email, "country ", country) FROM stdin;
    public               postgres    false    220   �       �          0    16433    order_items 
   TABLE DATA           `   COPY public.order_items (order_item_id, order_id, product_id, quantity, unit_price) FROM stdin;
    public               postgres    false    222   X       �          0    16397    orders 
   TABLE DATA           Q   COPY public.orders (order_id, customer_id, order_date, total_amount) FROM stdin;
    public               postgres    false    217   �       �          0    16412    payments 
   TABLE DATA           f   COPY public.payments (payment_id, order_id, payment_date, payment_amount, payment_method) FROM stdin;
    public               postgres    false    219   �       �          0    16407    products 
   TABLE DATA           M   COPY public.products (product_id, product_name, category, price) FROM stdin;
    public               postgres    false    218   �       �           0    0    order_items_order_item_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.order_items_order_item_id_seq', 7, true);
          public               postgres    false    221            4           2606    16438    order_items order_items_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (order_item_id);
 F   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_pkey;
       public                 postgres    false    222            2           1259    16439    idx_orders_order_date    INDEX     N   CREATE INDEX idx_orders_order_date ON public.orders USING btree (order_date);
 )   DROP INDEX public.idx_orders_order_date;
       public                 postgres    false    217            �   �   x�u�1�0��9��@UX*�R!�.Vj��ĮZ$
���X���%��-4��0pP>�JyJ�^3�-\���iH��F#.��ߚ�r���u��-`*a_�����)��:�� .F_�gO%BpS���e�Y��t�}�*M      �   M   x�E���0�f�Ȇ��]���|�A�|Qp(W����z���4j��A�#�y��?蒉�3:����>i�2���B      �      x������ � �      �      x������ � �      �      x������ � �     
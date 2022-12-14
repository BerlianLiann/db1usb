PGDMP         +                 z            retail    15.0    15.0                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16781    retail    DATABASE     }   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE retail;
                postgres    false            ?            1259    16783    barang    TABLE     ?   CREATE TABLE public.barang (
    no integer,
    kode_barang integer NOT NULL,
    nama_barang character varying(30),
    stok_awal character varying(25),
    stok_akhir character varying(15)
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16782    barang_kode_barang_seq    SEQUENCE     ?   CREATE SEQUENCE public.barang_kode_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.barang_kode_barang_seq;
       public          postgres    false    215                       0    0    barang_kode_barang_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.barang_kode_barang_seq OWNED BY public.barang.kode_barang;
          public          postgres    false    214            ?            1259    16790 	   pelanggan    TABLE     ?   CREATE TABLE public.pelanggan (
    no integer,
    kode_pelanggan integer NOT NULL,
    no_whatsap character varying(30),
    nama_pelanggan character varying(20),
    alamat character varying(50)
);
    DROP TABLE public.pelanggan;
       public         heap    postgres    false            ?            1259    16789    pelanggan_kode_pelanggan_seq    SEQUENCE     ?   CREATE SEQUENCE public.pelanggan_kode_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pelanggan_kode_pelanggan_seq;
       public          postgres    false    217                       0    0    pelanggan_kode_pelanggan_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pelanggan_kode_pelanggan_seq OWNED BY public.pelanggan.kode_pelanggan;
          public          postgres    false    216            ?            1259    16804 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    no integer,
    no_pembayaran integer NOT NULL,
    kode_pesanan integer,
    total_bayar integer,
    tanggal_bayar date,
    keterangan character varying(50)
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    16803    pembayaran_no_pembayaran_seq    SEQUENCE     ?   CREATE SEQUENCE public.pembayaran_no_pembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pembayaran_no_pembayaran_seq;
       public          postgres    false    221                       0    0    pembayaran_no_pembayaran_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pembayaran_no_pembayaran_seq OWNED BY public.pembayaran.no_pembayaran;
          public          postgres    false    220            ?            1259    16797    pesanan    TABLE       CREATE TABLE public.pesanan (
    no integer,
    kode_pesanan integer NOT NULL,
    kode_pelanggan integer,
    kode_barang integer,
    jumlah_pesanan integer,
    harga_jual integer,
    harga_beli integer,
    total_harga integer,
    tanggal_pesanan date
);
    DROP TABLE public.pesanan;
       public         heap    postgres    false            ?            1259    16796    pesanan_kode_pesanan_seq    SEQUENCE     ?   CREATE SEQUENCE public.pesanan_kode_pesanan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.pesanan_kode_pesanan_seq;
       public          postgres    false    219                       0    0    pesanan_kode_pesanan_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.pesanan_kode_pesanan_seq OWNED BY public.pesanan.kode_pesanan;
          public          postgres    false    218            t           2604    16786    barang kode_barang    DEFAULT     x   ALTER TABLE ONLY public.barang ALTER COLUMN kode_barang SET DEFAULT nextval('public.barang_kode_barang_seq'::regclass);
 A   ALTER TABLE public.barang ALTER COLUMN kode_barang DROP DEFAULT;
       public          postgres    false    215    214    215            u           2604    16793    pelanggan kode_pelanggan    DEFAULT     ?   ALTER TABLE ONLY public.pelanggan ALTER COLUMN kode_pelanggan SET DEFAULT nextval('public.pelanggan_kode_pelanggan_seq'::regclass);
 G   ALTER TABLE public.pelanggan ALTER COLUMN kode_pelanggan DROP DEFAULT;
       public          postgres    false    217    216    217            w           2604    16807    pembayaran no_pembayaran    DEFAULT     ?   ALTER TABLE ONLY public.pembayaran ALTER COLUMN no_pembayaran SET DEFAULT nextval('public.pembayaran_no_pembayaran_seq'::regclass);
 G   ALTER TABLE public.pembayaran ALTER COLUMN no_pembayaran DROP DEFAULT;
       public          postgres    false    221    220    221            v           2604    16800    pesanan kode_pesanan    DEFAULT     |   ALTER TABLE ONLY public.pesanan ALTER COLUMN kode_pesanan SET DEFAULT nextval('public.pesanan_kode_pesanan_seq'::regclass);
 C   ALTER TABLE public.pesanan ALTER COLUMN kode_pesanan DROP DEFAULT;
       public          postgres    false    218    219    219                      0    16783    barang 
   TABLE DATA           U   COPY public.barang (no, kode_barang, nama_barang, stok_awal, stok_akhir) FROM stdin;
    public          postgres    false    215   ?$                 0    16790 	   pelanggan 
   TABLE DATA           [   COPY public.pelanggan (no, kode_pelanggan, no_whatsap, nama_pelanggan, alamat) FROM stdin;
    public          postgres    false    217   ?%                 0    16804 
   pembayaran 
   TABLE DATA           m   COPY public.pembayaran (no, no_pembayaran, kode_pesanan, total_bayar, tanggal_bayar, keterangan) FROM stdin;
    public          postgres    false    221   ?&                 0    16797    pesanan 
   TABLE DATA           ?   COPY public.pesanan (no, kode_pesanan, kode_pelanggan, kode_barang, jumlah_pesanan, harga_jual, harga_beli, total_harga, tanggal_pesanan) FROM stdin;
    public          postgres    false    219   ?'                   0    0    barang_kode_barang_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.barang_kode_barang_seq', 1, false);
          public          postgres    false    214            !           0    0    pelanggan_kode_pelanggan_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pelanggan_kode_pelanggan_seq', 1, false);
          public          postgres    false    216            "           0    0    pembayaran_no_pembayaran_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pembayaran_no_pembayaran_seq', 1, false);
          public          postgres    false    220            #           0    0    pesanan_kode_pesanan_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.pesanan_kode_pesanan_seq', 1, false);
          public          postgres    false    218            y           2606    16788    barang barang_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (kode_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    215            {           2606    16795    pelanggan pelanggan_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (kode_pelanggan);
 B   ALTER TABLE ONLY public.pelanggan DROP CONSTRAINT pelanggan_pkey;
       public            postgres    false    217                       2606    16809    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (no_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    221            }           2606    16802    pesanan pesanan_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT pesanan_pkey PRIMARY KEY (kode_pesanan);
 >   ALTER TABLE ONLY public.pesanan DROP CONSTRAINT pesanan_pkey;
       public            postgres    false    219               ?   x?-?Kn? E?׫?
*!?y-J)4? R+u??(N;=??3??
5?-f??Icԑ'Ʀ?W2´???_?aU`K?`?V?[?3Vd??h??c.0wph?iH?V???&????`?	??c?K???!̡?????????JJ|??H??*?	?????B*ٿ??X???9h`W?8bQ3z?_??r??:???1H>??}/?-3[D?܊5??????"??RA(         >  x?M?Ir?0E??aR??H???xXЕ??#t:Y???ח?h	?k??????P&????hh??@?#G\?PL?7?ڦ?????'?Uh&4J?ZeH8???l8???a?b^2n5?? ???>q˘%L^Xϻ?0'?H?չ????u???'Nx",??e??1??w??|?d??猢g?gK?oZ&|???3???Y?l4?+PG????'N????P)??????????1????($wm^];?NQ???}?S?஍??ݹH3\?!????ܶѷ?Z?4?J???y?Br?Ƽ	??X?W?N????I|!~ ?s?         ?   x?m?;1?ڹ?"???=?Aܟ?v??j+??D???ՙI]?ǋU7э?????]H	yVʠ4??iRʡ,???*T??PN??:T???*I???P-T#iI?Tթ]FM?h????P3?$??֊"??$??????ﶏ??/???:w??i????5????VJ???ti           x?m??q1?7??\8y????????*Xx4?c?daB!?d??\DȰ?]???^bl?
l?J?$?r?`?6h???T??nWpp????_Ý:??N?8????tB7?$],9>??w????=??ѝt??U=??=xB?	]-?y:?d?Y>~?M??TW??TX?n??=iU??P??m4??PV???5?kUv)??c??1V??H7?.???>?Y??#?D?U?Ny}??T??`E???3wC????|>????ߪWu?     
PGDMP                      
    z            siakad    15.0    15.0 .    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    16397    siakad    DATABASE     }   CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE siakad;
                postgres    false            ?            1259    16437    dosen    TABLE     ?   CREATE TABLE public.dosen (
    pengajar character varying(90),
    matakuliah character varying(80),
    kode integer NOT NULL
);
    DROP TABLE public.dosen;
       public         heap    postgres    false            ?            1259    16436    dosen_kode_seq    SEQUENCE     ?   CREATE SEQUENCE public.dosen_kode_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.dosen_kode_seq;
       public          postgres    false    225            0           0    0    dosen_kode_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.dosen_kode_seq OWNED BY public.dosen.kode;
          public          postgres    false    224            ?            1259    16399 	   mahasiswa    TABLE     ~   CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            ?            1259    16398    mahasiswa_nim_seq    SEQUENCE     ?   CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswa_nim_seq;
       public          postgres    false    215            1           0    0    mahasiswa_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;
          public          postgres    false    214            ?            1259    16416 	   mahasiswi    TABLE     ~   CREATE TABLE public.mahasiswi (
    nim integer NOT NULL,
    nama character varying(90),
    alamat character varying(80)
);
    DROP TABLE public.mahasiswi;
       public         heap    postgres    false            ?            1259    16415    mahasiswi_nim_seq    SEQUENCE     ?   CREATE SEQUENCE public.mahasiswi_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswi_nim_seq;
       public          postgres    false    219            2           0    0    mahasiswi_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswi_nim_seq OWNED BY public.mahasiswi.nim;
          public          postgres    false    218            ?            1259    16423 
   mahasiswii    TABLE        CREATE TABLE public.mahasiswii (
    nim integer NOT NULL,
    nama character varying(90),
    alamat character varying(80)
);
    DROP TABLE public.mahasiswii;
       public         heap    postgres    false            ?            1259    16422    mahasiswii_nim_seq    SEQUENCE     ?   CREATE SEQUENCE public.mahasiswii_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.mahasiswii_nim_seq;
       public          postgres    false    221            3           0    0    mahasiswii_nim_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.mahasiswii_nim_seq OWNED BY public.mahasiswii.nim;
          public          postgres    false    220            ?            1259    16406    makul    TABLE     n   CREATE TABLE public.makul (
    idmk integer NOT NULL,
    namamk character varying(15),
    nilai integer
);
    DROP TABLE public.makul;
       public         heap    postgres    false            ?            1259    16405    makul_idmk_seq    SEQUENCE     ?   CREATE SEQUENCE public.makul_idmk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.makul_idmk_seq;
       public          postgres    false    217            4           0    0    makul_idmk_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.makul_idmk_seq OWNED BY public.makul.idmk;
          public          postgres    false    216            ?            1259    16430 
   matakuliah    TABLE     ?   CREATE TABLE public.matakuliah (
    matkul character varying(70),
    waktu character varying(60),
    sks integer NOT NULL
);
    DROP TABLE public.matakuliah;
       public         heap    postgres    false            ?            1259    16429    matakuliah_sks_seq    SEQUENCE     ?   CREATE SEQUENCE public.matakuliah_sks_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.matakuliah_sks_seq;
       public          postgres    false    223            5           0    0    matakuliah_sks_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.matakuliah_sks_seq OWNED BY public.matakuliah.sks;
          public          postgres    false    222            ?           2604    16440 
   dosen kode    DEFAULT     h   ALTER TABLE ONLY public.dosen ALTER COLUMN kode SET DEFAULT nextval('public.dosen_kode_seq'::regclass);
 9   ALTER TABLE public.dosen ALTER COLUMN kode DROP DEFAULT;
       public          postgres    false    225    224    225            ~           2604    16402    mahasiswa nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    214    215    215            ?           2604    16419    mahasiswi nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswi ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswi_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswi ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    218    219    219            ?           2604    16426    mahasiswii nim    DEFAULT     p   ALTER TABLE ONLY public.mahasiswii ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswii_nim_seq'::regclass);
 =   ALTER TABLE public.mahasiswii ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    221    220    221                       2604    16409 
   makul idmk    DEFAULT     h   ALTER TABLE ONLY public.makul ALTER COLUMN idmk SET DEFAULT nextval('public.makul_idmk_seq'::regclass);
 9   ALTER TABLE public.makul ALTER COLUMN idmk DROP DEFAULT;
       public          postgres    false    216    217    217            ?           2604    16433    matakuliah sks    DEFAULT     p   ALTER TABLE ONLY public.matakuliah ALTER COLUMN sks SET DEFAULT nextval('public.matakuliah_sks_seq'::regclass);
 =   ALTER TABLE public.matakuliah ALTER COLUMN sks DROP DEFAULT;
       public          postgres    false    223    222    223            )          0    16437    dosen 
   TABLE DATA           ;   COPY public.dosen (pengajar, matakuliah, kode) FROM stdin;
    public          postgres    false    225   /                 0    16399 	   mahasiswa 
   TABLE DATA           6   COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
    public          postgres    false    215   n/       #          0    16416 	   mahasiswi 
   TABLE DATA           6   COPY public.mahasiswi (nim, nama, alamat) FROM stdin;
    public          postgres    false    219   ?/       %          0    16423 
   mahasiswii 
   TABLE DATA           7   COPY public.mahasiswii (nim, nama, alamat) FROM stdin;
    public          postgres    false    221   ?/       !          0    16406    makul 
   TABLE DATA           4   COPY public.makul (idmk, namamk, nilai) FROM stdin;
    public          postgres    false    217   0       '          0    16430 
   matakuliah 
   TABLE DATA           8   COPY public.matakuliah (matkul, waktu, sks) FROM stdin;
    public          postgres    false    223   *0       6           0    0    dosen_kode_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dosen_kode_seq', 1, false);
          public          postgres    false    224            7           0    0    mahasiswa_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);
          public          postgres    false    214            8           0    0    mahasiswi_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswi_nim_seq', 1, false);
          public          postgres    false    218            9           0    0    mahasiswii_nim_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.mahasiswii_nim_seq', 1, false);
          public          postgres    false    220            :           0    0    makul_idmk_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.makul_idmk_seq', 1, false);
          public          postgres    false    216            ;           0    0    matakuliah_sks_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.matakuliah_sks_seq', 1, false);
          public          postgres    false    222            ?           2606    16442    dosen dosen_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_pkey PRIMARY KEY (kode);
 :   ALTER TABLE ONLY public.dosen DROP CONSTRAINT dosen_pkey;
       public            postgres    false    225            ?           2606    16404    mahasiswa mahasiswa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    215            ?           2606    16421    mahasiswi mahasiswi_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswi
    ADD CONSTRAINT mahasiswi_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswi DROP CONSTRAINT mahasiswi_pkey;
       public            postgres    false    219            ?           2606    16428    mahasiswii mahasiswii_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.mahasiswii
    ADD CONSTRAINT mahasiswii_pkey PRIMARY KEY (nim);
 D   ALTER TABLE ONLY public.mahasiswii DROP CONSTRAINT mahasiswii_pkey;
       public            postgres    false    221            ?           2606    16411    makul makul_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.makul
    ADD CONSTRAINT makul_pkey PRIMARY KEY (idmk);
 :   ALTER TABLE ONLY public.makul DROP CONSTRAINT makul_pkey;
       public            postgres    false    217            ?           2606    16435    matakuliah matakuliah_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.matakuliah
    ADD CONSTRAINT matakuliah_pkey PRIMARY KEY (sks);
 D   ALTER TABLE ONLY public.matakuliah DROP CONSTRAINT matakuliah_pkey;
       public            postgres    false    223            )   C   x???K)J?t,???N,????-(-I-ⴴ??0003??K̨LT?+-?tq	?44261?0?????? C?         9   x?322040?tJ-??L???M?-?*UI?KO??2Iq?%?&r&? ??=... ???      #      x?????? ? ?      %   )   x?32244???tJ-??L?Sp?,?H?KO?I?????? ??      !      x?????? ? ?      '   )   x?sJ,?,NI,I?HL??4?r????/J?4?????? ???     
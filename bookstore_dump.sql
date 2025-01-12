PGDMP                         |         	   bookstore    14.13 (Homebrew)    14.13 (Homebrew) "    \           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ]           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ^           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            _           1262    16457 	   bookstore    DATABASE     T   CREATE DATABASE bookstore WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE bookstore;
                hemangimahant    false            �            1259    16459    books    TABLE     �   CREATE TABLE public.books (
    b_id integer NOT NULL,
    b_title character varying(255),
    b_author character varying(255),
    b_genre character varying(100),
    b_availability character varying(50)
);
    DROP TABLE public.books;
       public         heap    hemangimahant    false            �            1259    16458    books_b_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_b_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.books_b_id_seq;
       public          hemangimahant    false    210            `           0    0    books_b_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.books_b_id_seq OWNED BY public.books.b_id;
          public          hemangimahant    false    209            �            1259    16475 	   publisher    TABLE     `   CREATE TABLE public.publisher (
    p_id integer NOT NULL,
    p_name character varying(255)
);
    DROP TABLE public.publisher;
       public         heap    hemangimahant    false            �            1259    16474    publisher_p_id_seq    SEQUENCE     �   CREATE SEQUENCE public.publisher_p_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.publisher_p_id_seq;
       public          hemangimahant    false    214            a           0    0    publisher_p_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.publisher_p_id_seq OWNED BY public.publisher.p_id;
          public          hemangimahant    false    213            �            1259    16482    rentals    TABLE     �   CREATE TABLE public.rentals (
    rental_id integer NOT NULL,
    student_id integer,
    book_id integer,
    rental_date date,
    return_date date
);
    DROP TABLE public.rentals;
       public         heap    hemangimahant    false            �            1259    16481    rentals_rental_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rentals_rental_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.rentals_rental_id_seq;
       public          hemangimahant    false    216            b           0    0    rentals_rental_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.rentals_rental_id_seq OWNED BY public.rentals.rental_id;
          public          hemangimahant    false    215            �            1259    16468    students    TABLE     o   CREATE TABLE public.students (
    s_id integer NOT NULL,
    s_name character varying(255),
    s_dob date
);
    DROP TABLE public.students;
       public         heap    hemangimahant    false            �            1259    16467    students_s_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.students_s_id_seq;
       public          hemangimahant    false    212            c           0    0    students_s_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.students_s_id_seq OWNED BY public.students.s_id;
          public          hemangimahant    false    211            �           2604    16462 
   books b_id    DEFAULT     h   ALTER TABLE ONLY public.books ALTER COLUMN b_id SET DEFAULT nextval('public.books_b_id_seq'::regclass);
 9   ALTER TABLE public.books ALTER COLUMN b_id DROP DEFAULT;
       public          hemangimahant    false    209    210    210            �           2604    16478    publisher p_id    DEFAULT     p   ALTER TABLE ONLY public.publisher ALTER COLUMN p_id SET DEFAULT nextval('public.publisher_p_id_seq'::regclass);
 =   ALTER TABLE public.publisher ALTER COLUMN p_id DROP DEFAULT;
       public          hemangimahant    false    214    213    214            �           2604    16485    rentals rental_id    DEFAULT     v   ALTER TABLE ONLY public.rentals ALTER COLUMN rental_id SET DEFAULT nextval('public.rentals_rental_id_seq'::regclass);
 @   ALTER TABLE public.rentals ALTER COLUMN rental_id DROP DEFAULT;
       public          hemangimahant    false    216    215    216            �           2604    16471    students s_id    DEFAULT     n   ALTER TABLE ONLY public.students ALTER COLUMN s_id SET DEFAULT nextval('public.students_s_id_seq'::regclass);
 <   ALTER TABLE public.students ALTER COLUMN s_id DROP DEFAULT;
       public          hemangimahant    false    211    212    212            S          0    16459    books 
   TABLE DATA           Q   COPY public.books (b_id, b_title, b_author, b_genre, b_availability) FROM stdin;
    public          hemangimahant    false    210   �$       W          0    16475 	   publisher 
   TABLE DATA           1   COPY public.publisher (p_id, p_name) FROM stdin;
    public          hemangimahant    false    214   	'       Y          0    16482    rentals 
   TABLE DATA           [   COPY public.rentals (rental_id, student_id, book_id, rental_date, return_date) FROM stdin;
    public          hemangimahant    false    216   (       U          0    16468    students 
   TABLE DATA           7   COPY public.students (s_id, s_name, s_dob) FROM stdin;
    public          hemangimahant    false    212   q(       d           0    0    books_b_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.books_b_id_seq', 21, true);
          public          hemangimahant    false    209            e           0    0    publisher_p_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.publisher_p_id_seq', 1, false);
          public          hemangimahant    false    213            f           0    0    rentals_rental_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.rentals_rental_id_seq', 7, true);
          public          hemangimahant    false    215            g           0    0    students_s_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.students_s_id_seq', 1, false);
          public          hemangimahant    false    211            �           2606    16466    books books_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (b_id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            hemangimahant    false    210            �           2606    16480    publisher publisher_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.publisher
    ADD CONSTRAINT publisher_pkey PRIMARY KEY (p_id);
 B   ALTER TABLE ONLY public.publisher DROP CONSTRAINT publisher_pkey;
       public            hemangimahant    false    214            �           2606    16487    rentals rentals_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rentals_pkey PRIMARY KEY (rental_id);
 >   ALTER TABLE ONLY public.rentals DROP CONSTRAINT rentals_pkey;
       public            hemangimahant    false    216            �           2606    16473    students students_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (s_id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            hemangimahant    false    212            �           2606    16493    rentals rentals_book_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rentals_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(b_id);
 F   ALTER TABLE ONLY public.rentals DROP CONSTRAINT rentals_book_id_fkey;
       public          hemangimahant    false    3518    210    216            �           2606    16488    rentals rentals_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rentals_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(s_id);
 I   ALTER TABLE ONLY public.rentals DROP CONSTRAINT rentals_student_id_fkey;
       public          hemangimahant    false    212    216    3520            S   G  x�mS�n�@<�_�/��y;��č���Jb��W�w�t�GE?#?VZ��hA��p���f�S�	�P$���ǈc��,d+�2�`�!c������	G�\A�Ґ�)ۍ��aPm��Vx���#R,k4�~����H	��\�.`A��*�1������}���KLIv��c�}Q���s}�+���"�s��U�
��������S_�8��͎�Zh����p�E=�ʷ������Rֆ�v��PL�;��Ս��q�y��MX%��T����v��@v�M�Pm��оQ�n֦ܯ9���[����)I¯5[�u�xyv�V�us6�:�i�Mx-�ŗ�0���:��q��8ƛ��k�������\�ӵ���D�e0�-:UE+���e��[]�H��g�9�Vm�~]�{v�a��ƨԡ�T)���8�:�сw�����.����G����ʖ�Kx��~G2�:]o�?U�� zA��!���c+�����u31��.�j+��u�ZM�0����>L��Rӗ'sϺ��Sx�x����S_�4��H9�Zo�����F�`p=�-����q������d�      W     x�e�=O1�g�Wdb�~3��h*N�"�4�,rq�$��������~�<�P��e
�`B˃�q�'�3rv�a�)D���؁�7A���)�N"Π����S��sLNp^.m�Rrj�������X{�!���������DW����Ҫ�@��IiT���	6f8	����G�pS�Wg$P�Pk� �F�h�RF�GO�y�V7jkq��3�|t�.���D�p�e1:����z	{��s�+��j��
�f�,E�EL���� �n�      Y   F   x�M���0߰K*�J�K���}��w ��{��(�P�ehO͉�,�m���g��
.$���H�'=�      U   u  x�E��n�0Dϻ_�`��$K:�q�րP .�K/�(�Pd@*	ܯ�V�39�of��'u��1F�ԡ�#'�NsX<�8��t�l�~���* mzM�-L���E�����y5ڴ���{�b�iu4YMw0�x����+��j3��`GWk8���ט��8hkq�� �����f:
�������|��r�m�d`��)��VQ/��$�}��]Ց�ϫ��s$Ef�ΗP�uE=���u�Ej`?s����E��"���H��[�+���҆3j�#u�=����_�MB�N6�]U_���h�7� ���������i����I=䧐��.���(i�ļ,N�E.�ӊ�ր�Zd��|)�׫8�z����	� k��     
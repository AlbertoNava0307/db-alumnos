PGDMP     .    1                z           postgres    10.18    10.18                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    12938    postgres    DATABASE     ?   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Mexico.1252' LC_CTYPE = 'Spanish_Mexico.1252';
    DROP DATABASE postgres;
             postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                  postgres    false    2821                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    4                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    2                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                  false            	           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                       false    1            ?            1259    25392    admin    TABLE     ?   CREATE TABLE public.admin (
    id integer NOT NULL,
    password character varying(255) NOT NULL,
    usuario character varying(255) NOT NULL
);
    DROP TABLE public.admin;
       public         postgres    false    4            ?            1259    25390    admin_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.admin_id_seq;
       public       postgres    false    4    200            
           0    0    admin_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.admin_id_seq OWNED BY public.admin.id;
            public       postgres    false    199            ?            1259    25386    alumno_generator    SEQUENCE     z   CREATE SEQUENCE public.alumno_generator
    START WITH 6
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.alumno_generator;
       public       postgres    false    4            ?            1259    25403    alumnos    TABLE     ?  CREATE TABLE public.alumnos (
    id integer NOT NULL,
    apellido_materno character varying(255) NOT NULL,
    apellido_paterno character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    fecha_nacimiento timestamp without time zone NOT NULL,
    grado_estudios_actual character varying(1) NOT NULL,
    nombre character varying(255) NOT NULL,
    sexo character varying(1) NOT NULL,
    telefono character varying(255) NOT NULL
);
    DROP TABLE public.alumnos;
       public         postgres    false    4            ?            1259    25401    alumnos_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.alumnos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.alumnos_id_seq;
       public       postgres    false    202    4                       0    0    alumnos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.alumnos_id_seq OWNED BY public.alumnos.id;
            public       postgres    false    201            ?            1259    25388    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public       postgres    false    4            {
           2604    25395    admin id    DEFAULT     d   ALTER TABLE ONLY public.admin ALTER COLUMN id SET DEFAULT nextval('public.admin_id_seq'::regclass);
 7   ALTER TABLE public.admin ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    199    200            |
           2604    25406 
   alumnos id    DEFAULT     h   ALTER TABLE ONLY public.alumnos ALTER COLUMN id SET DEFAULT nextval('public.alumnos_id_seq'::regclass);
 9   ALTER TABLE public.alumnos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    202    202            ?
          0    25392    admin 
   TABLE DATA               6   COPY public.admin (id, password, usuario) FROM stdin;
    public       postgres    false    200           ?
          0    25403    alumnos 
   TABLE DATA               ?   COPY public.alumnos (id, apellido_materno, apellido_paterno, email, fecha_nacimiento, grado_estudios_actual, nombre, sexo, telefono) FROM stdin;
    public       postgres    false    202   T                  0    0    admin_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.admin_id_seq', 2, true);
            public       postgres    false    199                       0    0    alumno_generator    SEQUENCE SET     >   SELECT pg_catalog.setval('public.alumno_generator', 6, true);
            public       postgres    false    197                       0    0    alumnos_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.alumnos_id_seq', 5, true);
            public       postgres    false    201                       0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);
            public       postgres    false    198            ~
           2606    25400    admin admin_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public         postgres    false    200            ?
           2606    25411    alumnos alumnos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT alumnos_pkey;
       public         postgres    false    202            ?
   $   x?3?,??/142?\F??)??y >?????? ?p

      ?
   ?   x?m?Mj?0??????d?X???$??@??n?=?
?d$܅O_Ʌ,??,?18?L??Ç?F?f????4?}?G`mK+?+?v?>??p^?p)9?kƔ"5\}?m?>̀???f?+E??? ?@)Υ?m	??X?}?0α???XΥvZ+?%)??c??󋁫??``?>??z?]r.aM????DM????#??YLY??Z??d??????6??+?TL??~`?)V>?kO???3     
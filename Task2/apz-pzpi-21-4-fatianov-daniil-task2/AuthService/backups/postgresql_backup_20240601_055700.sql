PGDMP       9                |           Drone-delivery-user-database    16.2    16.2 	    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    Drone-delivery-user-database    DATABASE     �   CREATE DATABASE "Drone-delivery-user-database" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Ukrainian_Ukraine.1251';
 .   DROP DATABASE "Drone-delivery-user-database";
                postgres    false            �            1259    16416    ddp_user    TABLE       CREATE TABLE public.ddp_user (
    id integer NOT NULL,
    birthday timestamp(6) with time zone,
    creation_date timestamp(6) with time zone,
    email character varying(255),
    gender character varying(255),
    name character varying(255),
    password character varying(255),
    phone character varying(255),
    role character varying(255),
    surname character varying(255),
    CONSTRAINT ddp_user_role_check CHECK (((role)::text = ANY ((ARRAY['USER'::character varying, 'ADMIN'::character varying])::text[])))
);
    DROP TABLE public.ddp_user;
       public         heap    postgres    false            �            1259    16424    ddp_user_seq    SEQUENCE     u   CREATE SEQUENCE public.ddp_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.ddp_user_seq;
       public          postgres    false            �          0    16416    ddp_user 
   TABLE DATA           t   COPY public.ddp_user (id, birthday, creation_date, email, gender, name, password, phone, role, surname) FROM stdin;
    public          postgres    false    215   _
       �           0    0    ddp_user_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.ddp_user_seq', 1, false);
          public          postgres    false    216                       2606    16423    ddp_user ddp_user_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.ddp_user
    ADD CONSTRAINT ddp_user_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.ddp_user DROP CONSTRAINT ddp_user_pkey;
       public            postgres    false    215            �      x������ � �     
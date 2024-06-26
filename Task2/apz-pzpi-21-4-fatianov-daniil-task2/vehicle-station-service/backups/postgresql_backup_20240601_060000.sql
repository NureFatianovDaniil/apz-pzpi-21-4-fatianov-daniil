PGDMP                        |        '   Drone-delivery-vehicle-station-database    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16425 '   Drone-delivery-vehicle-station-database    DATABASE     �   CREATE DATABASE "Drone-delivery-vehicle-station-database" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Ukrainian_Ukraine.1251';
 9   DROP DATABASE "Drone-delivery-vehicle-station-database";
                postgres    false            �            1259    24637    station    TABLE     �  CREATE TABLE public.station (
    id integer NOT NULL,
    altitude double precision,
    description character varying(255),
    latitude double precision,
    longitude double precision,
    number character varying(255),
    type character varying(255),
    CONSTRAINT station_type_check CHECK (((type)::text = ANY ((ARRAY['BASING'::character varying, 'RECEIVING'::character varying, 'USER'::character varying, 'DISPOSABLE'::character varying])::text[])))
);
    DROP TABLE public.station;
       public         heap    postgres    false            �            1259    24653    station_seq    SEQUENCE     t   CREATE SEQUENCE public.station_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.station_seq;
       public          postgres    false            �            1259    24645    vehicle    TABLE     �  CREATE TABLE public.vehicle (
    id integer NOT NULL,
    flight_distance double precision,
    lifting_capacity double precision,
    number character varying(255),
    status character varying(255),
    station_id integer,
    CONSTRAINT vehicle_status_check CHECK (((status)::text = ANY ((ARRAY['AVAILABLE'::character varying, 'READY'::character varying, 'SENT'::character varying])::text[])))
);
    DROP TABLE public.vehicle;
       public         heap    postgres    false            �            1259    24654    vehicle_seq    SEQUENCE     t   CREATE SEQUENCE public.vehicle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.vehicle_seq;
       public          postgres    false            �          0    24637    station 
   TABLE DATA           _   COPY public.station (id, altitude, description, latitude, longitude, number, type) FROM stdin;
    public          postgres    false    215   �       �          0    24645    vehicle 
   TABLE DATA           d   COPY public.vehicle (id, flight_distance, lifting_capacity, number, status, station_id) FROM stdin;
    public          postgres    false    216          �           0    0    station_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.station_seq', 1, false);
          public          postgres    false    217            �           0    0    vehicle_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.vehicle_seq', 1, false);
          public          postgres    false    218            "           2606    24644    station station_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.station
    ADD CONSTRAINT station_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.station DROP CONSTRAINT station_pkey;
       public            postgres    false    215            $           2606    24652    vehicle vehicle_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT vehicle_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.vehicle DROP CONSTRAINT vehicle_pkey;
       public            postgres    false    216            %           2606    24655 #   vehicle fkeixoqde7yk5c3oacpn6gotokn    FK CONSTRAINT     �   ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT fkeixoqde7yk5c3oacpn6gotokn FOREIGN KEY (station_id) REFERENCES public.station(id);
 M   ALTER TABLE ONLY public.vehicle DROP CONSTRAINT fkeixoqde7yk5c3oacpn6gotokn;
       public          postgres    false    216    4642    215            �      x������ � �      �      x������ � �     
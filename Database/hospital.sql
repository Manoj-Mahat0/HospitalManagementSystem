PGDMP         /                y            hospital    13.1    13.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24592    hospital    DATABASE     d   CREATE DATABASE hospital WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE hospital;
                postgres    false            �            1259    24683    bill    TABLE       CREATE TABLE public.bill (
    rno integer NOT NULL,
    medical_charge integer NOT NULL,
    ward_charge integer NOT NULL,
    testing_charge integer NOT NULL,
    other_charge integer NOT NULL,
    total integer NOT NULL,
    pid integer NOT NULL,
    date text
);
    DROP TABLE public.bill;
       public         heap    postgres    false            �            1259    24667 
   diagonosis    TABLE     �   CREATE TABLE public.diagonosis (
    pid integer NOT NULL,
    symptoms text NOT NULL,
    doctor text NOT NULL,
    date text NOT NULL,
    ward text,
    type text
);
    DROP TABLE public.diagonosis;
       public         heap    postgres    false            �            1259    24728    doctor    TABLE     H  CREATE TABLE public.doctor (
    did integer NOT NULL,
    dname character varying(20) NOT NULL,
    contact numeric(10,0) NOT NULL,
    age integer NOT NULL,
    gender character varying(10) NOT NULL,
    qualification character varying(20) NOT NULL,
    address text NOT NULL,
    specialist character varying(20) NOT NULL
);
    DROP TABLE public.doctor;
       public         heap    postgres    false            �            1259    24607    patient    TABLE       CREATE TABLE public.patient (
    pid integer NOT NULL,
    name character varying(30) NOT NULL,
    mob numeric(10,0) NOT NULL,
    age numeric(3,0) NOT NULL,
    gender character varying(7) NOT NULL,
    blood text NOT NULL,
    address text NOT NULL,
    des text NOT NULL
);
    DROP TABLE public.patient;
       public         heap    postgres    false            �          0    24683    bill 
   TABLE DATA           p   COPY public.bill (rno, medical_charge, ward_charge, testing_charge, other_charge, total, pid, date) FROM stdin;
    public          postgres    false    202   C       �          0    24667 
   diagonosis 
   TABLE DATA           M   COPY public.diagonosis (pid, symptoms, doctor, date, ward, type) FROM stdin;
    public          postgres    false    201   @       �          0    24728    doctor 
   TABLE DATA           f   COPY public.doctor (did, dname, contact, age, gender, qualification, address, specialist) FROM stdin;
    public          postgres    false    203   �       �          0    24607    patient 
   TABLE DATA           S   COPY public.patient (pid, name, mob, age, gender, blood, address, des) FROM stdin;
    public          postgres    false    200   �       3           2606    24690    bill bill_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.bill
    ADD CONSTRAINT bill_pkey PRIMARY KEY (rno);
 8   ALTER TABLE ONLY public.bill DROP CONSTRAINT bill_pkey;
       public            postgres    false    202            5           2606    24735    doctor doctor_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (did);
 <   ALTER TABLE ONLY public.doctor DROP CONSTRAINT doctor_pkey;
       public            postgres    false    203            1           2606    24614    patient patient_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (pid);
 >   ALTER TABLE ONLY public.patient DROP CONSTRAINT patient_pkey;
       public            postgres    false    200            6           2606    24673    diagonosis diagonosis_pid_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.diagonosis
    ADD CONSTRAINT diagonosis_pid_fkey FOREIGN KEY (pid) REFERENCES public.patient(pid);
 H   ALTER TABLE ONLY public.diagonosis DROP CONSTRAINT diagonosis_pid_fkey;
       public          postgres    false    200    201    2865            �   �   x�e�;N1��s�\ �g2�V��$�ElAC�b�$��)�������-���#�.�%�Z8��i{	�L�?��Mٛ�K[��:����^���M.D�iw:cB�z��s-~ءu��~�j�f�X%�q��:�}d�;����Y�T$Xj��|��`�}u�q�Xd���g*��%7����xT7�y��� �3Q��nC<�L+$�WѪ��p�|��p,E=���,��`i�      �   z   x�3�L-���S�����y�E�91%\Ɯ��9) ��Ģ��Ԓ������̼��T.��NtȦ����q���$fg�fr���(��&)+�[��gp�����!��?'W� ��-�      �   �   x�]��n� E��W�����e�&�Ժ��L�@U�I*�}+}(pϜ�(x�M��A�V���<}��c���a!!9�)9�h��-��C����������o�}D<ǹ���/8�!�f�&�u��9�u��#�es�t"�E�:��L�֮�h�j+�'߇D#���5�yf���􋬲��[��C�a�_I���د ��m#����Y�      �   �   x�=�1� �����ML���F���.�H� Ԁ4�ߋ�e��ys�٨����5"�(Ap8*GO�\��J�@>zT69
k��_p^�����abШ��y�\4��a�]>�~,�OLBT�k��;�Ew8�s�eN��-c��63�     
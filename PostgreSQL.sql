PGDMP     9                    {            NewMetricSolution    15.3    15.3                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    22592    NewMetricSolution    DATABASE     �   CREATE DATABASE "NewMetricSolution" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
 #   DROP DATABASE "NewMetricSolution";
                postgres    false            �            1259    22593    Departments    TABLE     �   CREATE TABLE public."Departments" (
    "Id" uuid NOT NULL,
    "Name" text,
    "SuperiorDepartmentId" uuid,
    "Employees" integer NOT NULL
);
 !   DROP TABLE public."Departments";
       public         heap    postgres    false            �            1259    22606    __EFMigrationsHistory    TABLE     �   CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);
 +   DROP TABLE public."__EFMigrationsHistory";
       public         heap    postgres    false            �          0    22593    Departments 
   TABLE DATA           Z   COPY public."Departments" ("Id", "Name", "SuperiorDepartmentId", "Employees") FROM stdin;
    public          postgres    false    214   �       �          0    22606    __EFMigrationsHistory 
   TABLE DATA           R   COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
    public          postgres    false    215   �       j           2606    22599    Departments PK_Departments 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Departments"
    ADD CONSTRAINT "PK_Departments" PRIMARY KEY ("Id");
 H   ALTER TABLE ONLY public."Departments" DROP CONSTRAINT "PK_Departments";
       public            postgres    false    214            l           2606    22610 .   __EFMigrationsHistory PK___EFMigrationsHistory 
   CONSTRAINT     {   ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");
 \   ALTER TABLE ONLY public."__EFMigrationsHistory" DROP CONSTRAINT "PK___EFMigrationsHistory";
       public            postgres    false    215            h           1259    22605 #   IX_Departments_SuperiorDepartmentId    INDEX     q   CREATE INDEX "IX_Departments_SuperiorDepartmentId" ON public."Departments" USING btree ("SuperiorDepartmentId");
 9   DROP INDEX public."IX_Departments_SuperiorDepartmentId";
       public            postgres    false    214            m           2606    22600 ;   Departments FK_Departments_Departments_SuperiorDepartmentId    FK CONSTRAINT     �   ALTER TABLE ONLY public."Departments"
    ADD CONSTRAINT "FK_Departments_Departments_SuperiorDepartmentId" FOREIGN KEY ("SuperiorDepartmentId") REFERENCES public."Departments"("Id") ON DELETE RESTRICT;
 i   ALTER TABLE ONLY public."Departments" DROP CONSTRAINT "FK_Departments_Departments_SuperiorDepartmentId";
       public          postgres    false    214    214    3178            �   �  x��R=o!��L��0@��ȉ�4i�+�w��=K����������}� �p�����d�آ&�����rl��?���4}Կ������h#�( �� 9D�!\|�:$���Ӿ�k;�m��O��(�9B�ڀ��#$�1TL����ֶ�z,��3�[��s����A�@�.�8����l�嬗H��7Y�"���1��;�*�OG��vZ.���O6I�)~@�8�j��2���tG1Wo���eU�?[�)s����
�t��Aj� 9��)�n~^���z����#��^�=(�2hY�C��xK��麷�����#J�}�Y�	��VjC�V�|l��>����΍F��ƼO!H�(��vJC/�Q�˛����G[��p�X�L��)��!��Z��_z��1��V�m��9�8�42B�z��Ӓg���~��z?��/���R0A      �      x������ � �     
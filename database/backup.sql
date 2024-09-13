PGDMP              
        |            morango    16.3    16.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    118550    morango    DATABASE     ~   CREATE DATABASE morango WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE morango;
                postgres    false            {           1247    118614    Gender    TYPE     O   CREATE TYPE public."Gender" AS ENUM (
    'MALE',
    'FEMALE',
    'OTHER'
);
    DROP TYPE public."Gender";
       public          postgres    false            u           1247    118594    Origin    TYPE     H   CREATE TYPE public."Origin" AS ENUM (
    'RAW_MATERIAL',
    'MADE'
);
    DROP TYPE public."Origin";
       public          postgres    false            r           1247    118588 
   Price_Type    TYPE     D   CREATE TYPE public."Price_Type" AS ENUM (
    'COST',
    'SALE'
);
    DROP TYPE public."Price_Type";
       public          postgres    false            l           1247    118565    Production_Status    TYPE     �   CREATE TYPE public."Production_Status" AS ENUM (
    'CREATED',
    'SCHEDULED',
    'OPEN',
    'IN_PROGRESS',
    'FINISHED',
    'STOPPED',
    'CANCELED'
);
 &   DROP TYPE public."Production_Status";
       public          postgres    false            o           1247    118580    Stock_Moviment    TYPE     Z   CREATE TYPE public."Stock_Moviment" AS ENUM (
    'INPUT',
    'TRANSIT',
    'OUTPUT'
);
 #   DROP TYPE public."Stock_Moviment";
       public          postgres    false            x           1247    118600    Unit_Measure    TYPE     i   CREATE TYPE public."Unit_Measure" AS ENUM (
    'UN',
    'KG',
    'L',
    'GR',
    'ML',
    'PC'
);
 !   DROP TYPE public."Unit_Measure";
       public          postgres    false            ~           1247    118622    UserType    TYPE     �   CREATE TYPE public."UserType" AS ENUM (
    'ERP',
    'PUBLIC',
    'API',
    'SYSTEM',
    'ANONYMOUS',
    'ROOT',
    'ADMIN'
);
    DROP TYPE public."UserType";
       public          postgres    false            �            1259    118553    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap    postgres    false            �            1259    118802    _production_item    TABLE     ]   CREATE TABLE public._production_item (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);
 $   DROP TABLE public._production_item;
       public         heap    postgres    false            �            1259    118780 
   categories    TABLE     ;  CREATE TABLE public.categories (
    id integer NOT NULL,
    description character varying(255) NOT NULL,
    active boolean DEFAULT true NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    118779    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    245            �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    244            �            1259    118734    composition_items    TABLE     t  CREATE TABLE public.composition_items (
    id integer NOT NULL,
    composition_id integer NOT NULL,
    sequence integer NOT NULL,
    product_id integer NOT NULL,
    quantity double precision NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 %   DROP TABLE public.composition_items;
       public         heap    postgres    false            �            1259    118733    composition_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.composition_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.composition_items_id_seq;
       public          postgres    false    235            �           0    0    composition_items_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.composition_items_id_seq OWNED BY public.composition_items.id;
          public          postgres    false    234            �            1259    118723    compositions    TABLE     O  CREATE TABLE public.compositions (
    id integer NOT NULL,
    product_id integer NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    production_steps json
);
     DROP TABLE public.compositions;
       public         heap    postgres    false            �            1259    118722    compositions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.compositions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.compositions_id_seq;
       public          postgres    false    233            �           0    0    compositions_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.compositions_id_seq OWNED BY public.compositions.id;
          public          postgres    false    232            �            1259    118762 	   customers    TABLE     	  CREATE TABLE public.customers (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    118761    customers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.customers_id_seq;
       public          postgres    false    241            �           0    0    customers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;
          public          postgres    false    240            �            1259    118771    groups    TABLE     $  CREATE TABLE public.groups (
    id integer NOT NULL,
    description character varying(255) NOT NULL,
    father_id integer,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.groups;
       public         heap    postgres    false            �            1259    118770    groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.groups_id_seq;
       public          postgres    false    243            �           0    0    groups_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;
          public          postgres    false    242            �            1259    118670 
   ocurrences    TABLE       CREATE TABLE public.ocurrences (
    id integer NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.ocurrences;
       public         heap    postgres    false            �            1259    118669    ocurrences_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ocurrences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.ocurrences_id_seq;
       public          postgres    false    223            �           0    0    ocurrences_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.ocurrences_id_seq OWNED BY public.ocurrences.id;
          public          postgres    false    222            �            1259    118743    prices    TABLE     w  CREATE TABLE public.prices (
    id integer NOT NULL,
    product_id integer NOT NULL,
    price double precision NOT NULL,
    type public."Price_Type" NOT NULL,
    is_current boolean DEFAULT true NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.prices;
       public         heap    postgres    false    882            �            1259    118742    prices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.prices_id_seq;
       public          postgres    false    237            �           0    0    prices_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.prices_id_seq OWNED BY public.prices.id;
          public          postgres    false    236            �            1259    118638 
   production    TABLE     R  CREATE TABLE public.production (
    id integer NOT NULL,
    description character varying(255) NOT NULL,
    prodution_quantity_estimated double precision NOT NULL,
    production_quantity_real double precision NOT NULL,
    lote text,
    expiration timestamp(3) without time zone,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "Production_Status" public."Production_Status" DEFAULT 'CREATED'::public."Production_Status" NOT NULL,
    final_product integer NOT NULL
);
    DROP TABLE public.production;
       public         heap    postgres    false    876    876            �            1259    118637    production_id_seq    SEQUENCE     �   CREATE SEQUENCE public.production_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.production_id_seq;
       public          postgres    false    217            �           0    0    production_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.production_id_seq OWNED BY public.production.id;
          public          postgres    false    216            �            1259    118661    production_steps    TABLE       CREATE TABLE public.production_steps (
    id integer NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 $   DROP TABLE public.production_steps;
       public         heap    postgres    false            �            1259    118660    production_steps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.production_steps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.production_steps_id_seq;
       public          postgres    false    221            �           0    0    production_steps_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.production_steps_id_seq OWNED BY public.production_steps.id;
          public          postgres    false    220            �            1259    118650    production_work    TABLE     �  CREATE TABLE public.production_work (
    id integer NOT NULL,
    production_id integer NOT NULL,
    step_id integer NOT NULL,
    raw_product_id integer NOT NULL,
    sequence integer NOT NULL,
    start_time timestamp(3) without time zone NOT NULL,
    end_time timestamp(3) without time zone NOT NULL,
    total_time double precision NOT NULL,
    initial_weight double precision NOT NULL,
    final_weight double precision NOT NULL,
    weight_loss double precision NOT NULL,
    machine text,
    photos bytea[],
    observation text,
    ocurrences json,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 #   DROP TABLE public.production_work;
       public         heap    postgres    false            �            1259    118649    production_work_id_seq    SEQUENCE     �   CREATE SEQUENCE public.production_work_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.production_work_id_seq;
       public          postgres    false    219            �           0    0    production_work_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.production_work_id_seq OWNED BY public.production_work.id;
          public          postgres    false    218            �            1259    118709    products    TABLE     �  CREATE TABLE public.products (
    id integer NOT NULL,
    description character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    sku character varying(255) NOT NULL,
    origin public."Origin" DEFAULT 'RAW_MATERIAL'::public."Origin" NOT NULL,
    unit_measure public."Unit_Measure" DEFAULT 'UN'::public."Unit_Measure" NOT NULL,
    category_id integer NOT NULL,
    group_id integer NOT NULL,
    supplier_id integer,
    nutritional_info text,
    active boolean DEFAULT true NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false    885    888    888    885            �            1259    118708    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    231            �           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    230            �            1259    118679    stock    TABLE     �  CREATE TABLE public.stock (
    id integer NOT NULL,
    document_number character varying(255) NOT NULL,
    document_date timestamp(6) without time zone NOT NULL,
    stock_moviment public."Stock_Moviment" NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.stock;
       public         heap    postgres    false    879            �            1259    118678    stock_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.stock_id_seq;
       public          postgres    false    225            �           0    0    stock_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.stock_id_seq OWNED BY public.stock.id;
          public          postgres    false    224            �            1259    118688    stock_items    TABLE     g  CREATE TABLE public.stock_items (
    id integer NOT NULL,
    stock_id integer NOT NULL,
    sequence integer NOT NULL,
    product_id integer NOT NULL,
    quantity double precision NOT NULL,
    unit_price double precision NOT NULL,
    total_price double precision NOT NULL,
    lote text,
    expiration timestamp(3) without time zone,
    suppliers integer,
    costumers integer,
    stock_location_id integer NOT NULL,
    observation text,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.stock_items;
       public         heap    postgres    false            �            1259    118687    stock_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.stock_items_id_seq;
       public          postgres    false    227            �           0    0    stock_items_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.stock_items_id_seq OWNED BY public.stock_items.id;
          public          postgres    false    226            �            1259    118699    stock_location    TABLE     ?  CREATE TABLE public.stock_location (
    id integer NOT NULL,
    description character varying(255) NOT NULL,
    active boolean DEFAULT true NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 "   DROP TABLE public.stock_location;
       public         heap    postgres    false            �            1259    118698    stock_location_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.stock_location_id_seq;
       public          postgres    false    229            �           0    0    stock_location_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.stock_location_id_seq OWNED BY public.stock_location.id;
          public          postgres    false    228            �            1259    118753 	   suppliers    TABLE     	  CREATE TABLE public.suppliers (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.suppliers;
       public         heap    postgres    false            �            1259    118752    suppliers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.suppliers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.suppliers_id_seq;
       public          postgres    false    239            �           0    0    suppliers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.suppliers_id_seq OWNED BY public.suppliers.id;
          public          postgres    false    238            �            1259    118790    users    TABLE     L  CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    user_type public."UserType" DEFAULT 'PUBLIC'::public."UserType" NOT NULL,
    gender public."Gender" NOT NULL,
    active boolean DEFAULT true NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false    894    891    894            �            1259    118789    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    247            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    246            �           2604    118783    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245            �           2604    118737    composition_items id    DEFAULT     |   ALTER TABLE ONLY public.composition_items ALTER COLUMN id SET DEFAULT nextval('public.composition_items_id_seq'::regclass);
 C   ALTER TABLE public.composition_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    118726    compositions id    DEFAULT     r   ALTER TABLE ONLY public.compositions ALTER COLUMN id SET DEFAULT nextval('public.compositions_id_seq'::regclass);
 >   ALTER TABLE public.compositions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    118765    customers id    DEFAULT     l   ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);
 ;   ALTER TABLE public.customers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            �           2604    118774 	   groups id    DEFAULT     f   ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);
 8   ALTER TABLE public.groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            �           2604    118673    ocurrences id    DEFAULT     n   ALTER TABLE ONLY public.ocurrences ALTER COLUMN id SET DEFAULT nextval('public.ocurrences_id_seq'::regclass);
 <   ALTER TABLE public.ocurrences ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    118746 	   prices id    DEFAULT     f   ALTER TABLE ONLY public.prices ALTER COLUMN id SET DEFAULT nextval('public.prices_id_seq'::regclass);
 8   ALTER TABLE public.prices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    118641    production id    DEFAULT     n   ALTER TABLE ONLY public.production ALTER COLUMN id SET DEFAULT nextval('public.production_id_seq'::regclass);
 <   ALTER TABLE public.production ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    118664    production_steps id    DEFAULT     z   ALTER TABLE ONLY public.production_steps ALTER COLUMN id SET DEFAULT nextval('public.production_steps_id_seq'::regclass);
 B   ALTER TABLE public.production_steps ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    118653    production_work id    DEFAULT     x   ALTER TABLE ONLY public.production_work ALTER COLUMN id SET DEFAULT nextval('public.production_work_id_seq'::regclass);
 A   ALTER TABLE public.production_work ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    118712    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    118682    stock id    DEFAULT     d   ALTER TABLE ONLY public.stock ALTER COLUMN id SET DEFAULT nextval('public.stock_id_seq'::regclass);
 7   ALTER TABLE public.stock ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    118691    stock_items id    DEFAULT     p   ALTER TABLE ONLY public.stock_items ALTER COLUMN id SET DEFAULT nextval('public.stock_items_id_seq'::regclass);
 =   ALTER TABLE public.stock_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    118702    stock_location id    DEFAULT     v   ALTER TABLE ONLY public.stock_location ALTER COLUMN id SET DEFAULT nextval('public.stock_location_id_seq'::regclass);
 @   ALTER TABLE public.stock_location ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    118756    suppliers id    DEFAULT     l   ALTER TABLE ONLY public.suppliers ALTER COLUMN id SET DEFAULT nextval('public.suppliers_id_seq'::regclass);
 ;   ALTER TABLE public.suppliers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    118793    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246    247            �          0    118553    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public          postgres    false    215   c�       �          0    118802    _production_item 
   TABLE DATA           4   COPY public._production_item ("A", "B") FROM stdin;
    public          postgres    false    248   �       �          0    118780 
   categories 
   TABLE DATA           U   COPY public.categories (id, description, active, created_at, updated_at) FROM stdin;
    public          postgres    false    245   �       �          0    118734    composition_items 
   TABLE DATA           w   COPY public.composition_items (id, composition_id, sequence, product_id, quantity, created_at, updated_at) FROM stdin;
    public          postgres    false    235   ��       �          0    118723    compositions 
   TABLE DATA           m   COPY public.compositions (id, product_id, description, created_at, updated_at, production_steps) FROM stdin;
    public          postgres    false    233   ��       �          0    118762 	   customers 
   TABLE DATA           E   COPY public.customers (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    241   o�       �          0    118771    groups 
   TABLE DATA           T   COPY public.groups (id, description, father_id, created_at, updated_at) FROM stdin;
    public          postgres    false    243   �       �          0    118670 
   ocurrences 
   TABLE DATA           M   COPY public.ocurrences (id, description, created_at, updated_at) FROM stdin;
    public          postgres    false    223   ��       �          0    118743    prices 
   TABLE DATA           a   COPY public.prices (id, product_id, price, type, is_current, created_at, updated_at) FROM stdin;
    public          postgres    false    237   ��       �          0    118638 
   production 
   TABLE DATA           �   COPY public.production (id, description, prodution_quantity_estimated, production_quantity_real, lote, expiration, created_at, updated_at, "Production_Status", final_product) FROM stdin;
    public          postgres    false    217   l�       �          0    118661    production_steps 
   TABLE DATA           S   COPY public.production_steps (id, description, created_at, updated_at) FROM stdin;
    public          postgres    false    221   3�       �          0    118650    production_work 
   TABLE DATA           �   COPY public.production_work (id, production_id, step_id, raw_product_id, sequence, start_time, end_time, total_time, initial_weight, final_weight, weight_loss, machine, photos, observation, ocurrences, created_at, updated_at) FROM stdin;
    public          postgres    false    219   ��       �          0    118709    products 
   TABLE DATA           �   COPY public.products (id, description, code, sku, origin, unit_measure, category_id, group_id, supplier_id, nutritional_info, active, created_at, updated_at) FROM stdin;
    public          postgres    false    231   ,�       �          0    118679    stock 
   TABLE DATA           k   COPY public.stock (id, document_number, document_date, stock_moviment, created_at, updated_at) FROM stdin;
    public          postgres    false    225   ��       �          0    118688    stock_items 
   TABLE DATA           �   COPY public.stock_items (id, stock_id, sequence, product_id, quantity, unit_price, total_price, lote, expiration, suppliers, costumers, stock_location_id, observation, created_at, updated_at) FROM stdin;
    public          postgres    false    227   �       �          0    118699    stock_location 
   TABLE DATA           Y   COPY public.stock_location (id, description, active, created_at, updated_at) FROM stdin;
    public          postgres    false    229   m�       �          0    118753 	   suppliers 
   TABLE DATA           E   COPY public.suppliers (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    239   ��       �          0    118790    users 
   TABLE DATA           �   COPY public.users (id, username, email, password, first_name, last_name, user_type, gender, active, created_at, updated_at) FROM stdin;
    public          postgres    false    247   f�       �           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 5, true);
          public          postgres    false    244            �           0    0    composition_items_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.composition_items_id_seq', 1, false);
          public          postgres    false    234            �           0    0    compositions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.compositions_id_seq', 7, true);
          public          postgres    false    232            �           0    0    customers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customers_id_seq', 6, true);
          public          postgres    false    240            �           0    0    groups_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.groups_id_seq', 10, true);
          public          postgres    false    242            �           0    0    ocurrences_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ocurrences_id_seq', 8, true);
          public          postgres    false    222            �           0    0    prices_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.prices_id_seq', 28, true);
          public          postgres    false    236            �           0    0    production_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.production_id_seq', 5, true);
          public          postgres    false    216            �           0    0    production_steps_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.production_steps_id_seq', 13, true);
          public          postgres    false    220            �           0    0    production_work_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.production_work_id_seq', 24, true);
          public          postgres    false    218            �           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 14, true);
          public          postgres    false    230            �           0    0    stock_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.stock_id_seq', 4, true);
          public          postgres    false    224            �           0    0    stock_items_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.stock_items_id_seq', 28, true);
          public          postgres    false    226            �           0    0    stock_location_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.stock_location_id_seq', 4, true);
          public          postgres    false    228            �           0    0    suppliers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.suppliers_id_seq', 6, true);
          public          postgres    false    238            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
          public          postgres    false    246            �           2606    118561 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public            postgres    false    215            �           2606    118788    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    245            �           2606    118741 (   composition_items composition_items_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.composition_items
    ADD CONSTRAINT composition_items_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.composition_items DROP CONSTRAINT composition_items_pkey;
       public            postgres    false    235            �           2606    118732    compositions compositions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.compositions
    ADD CONSTRAINT compositions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.compositions DROP CONSTRAINT compositions_pkey;
       public            postgres    false    233            �           2606    118769    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    241            �           2606    118778    groups groups_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
       public            postgres    false    243            �           2606    118677    ocurrences ocurrences_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ocurrences
    ADD CONSTRAINT ocurrences_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.ocurrences DROP CONSTRAINT ocurrences_pkey;
       public            postgres    false    223            �           2606    118751    prices prices_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.prices
    ADD CONSTRAINT prices_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.prices DROP CONSTRAINT prices_pkey;
       public            postgres    false    237            �           2606    118648    production production_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.production
    ADD CONSTRAINT production_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.production DROP CONSTRAINT production_pkey;
       public            postgres    false    217            �           2606    118668 &   production_steps production_steps_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.production_steps
    ADD CONSTRAINT production_steps_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.production_steps DROP CONSTRAINT production_steps_pkey;
       public            postgres    false    221            �           2606    118659 $   production_work production_work_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.production_work
    ADD CONSTRAINT production_work_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.production_work DROP CONSTRAINT production_work_pkey;
       public            postgres    false    219            �           2606    118721    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    231            �           2606    118697    stock_items stock_items_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.stock_items
    ADD CONSTRAINT stock_items_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.stock_items DROP CONSTRAINT stock_items_pkey;
       public            postgres    false    227            �           2606    118707 "   stock_location stock_location_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.stock_location
    ADD CONSTRAINT stock_location_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.stock_location DROP CONSTRAINT stock_location_pkey;
       public            postgres    false    229            �           2606    118686    stock stock_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_pkey;
       public            postgres    false    225            �           2606    118760    suppliers suppliers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT suppliers_pkey;
       public            postgres    false    239            �           2606    118801    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    247            �           1259    118810    _production_item_AB_unique    INDEX     d   CREATE UNIQUE INDEX "_production_item_AB_unique" ON public._production_item USING btree ("A", "B");
 0   DROP INDEX public."_production_item_AB_unique";
       public            postgres    false    248    248            �           1259    118811    _production_item_B_index    INDEX     V   CREATE INDEX "_production_item_B_index" ON public._production_item USING btree ("B");
 .   DROP INDEX public."_production_item_B_index";
       public            postgres    false    248            �           1259    118807    categories_description_key    INDEX     _   CREATE UNIQUE INDEX categories_description_key ON public.categories USING btree (description);
 .   DROP INDEX public.categories_description_key;
       public            postgres    false    245            �           1259    118805    products_code_key    INDEX     M   CREATE UNIQUE INDEX products_code_key ON public.products USING btree (code);
 %   DROP INDEX public.products_code_key;
       public            postgres    false    231            �           1259    118806    products_sku_key    INDEX     K   CREATE UNIQUE INDEX products_sku_key ON public.products USING btree (sku);
 $   DROP INDEX public.products_sku_key;
       public            postgres    false    231            �           1259    118809    users_email_key    INDEX     I   CREATE UNIQUE INDEX users_email_key ON public.users USING btree (email);
 #   DROP INDEX public.users_email_key;
       public            postgres    false    247            �           1259    118808    users_username_key    INDEX     O   CREATE UNIQUE INDEX users_username_key ON public.users USING btree (username);
 &   DROP INDEX public.users_username_key;
       public            postgres    false    247            �           2606    118897 (   _production_item _production_item_A_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public._production_item
    ADD CONSTRAINT "_production_item_A_fkey" FOREIGN KEY ("A") REFERENCES public.production(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public._production_item DROP CONSTRAINT "_production_item_A_fkey";
       public          postgres    false    4800    217    248            �           2606    118902 (   _production_item _production_item_B_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public._production_item
    ADD CONSTRAINT "_production_item_B_fkey" FOREIGN KEY ("B") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public._production_item DROP CONSTRAINT "_production_item_B_fkey";
       public          postgres    false    248    231    4815            �           2606    118877 7   composition_items composition_items_composition_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.composition_items
    ADD CONSTRAINT composition_items_composition_id_fkey FOREIGN KEY (composition_id) REFERENCES public.compositions(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 a   ALTER TABLE ONLY public.composition_items DROP CONSTRAINT composition_items_composition_id_fkey;
       public          postgres    false    235    4818    233            �           2606    118882 3   composition_items composition_items_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.composition_items
    ADD CONSTRAINT composition_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 ]   ALTER TABLE ONLY public.composition_items DROP CONSTRAINT composition_items_product_id_fkey;
       public          postgres    false    4815    231    235            �           2606    118872 )   compositions compositions_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.compositions
    ADD CONSTRAINT compositions_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public.compositions DROP CONSTRAINT compositions_product_id_fkey;
       public          postgres    false    231    233    4815            �           2606    118812    production final_product_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.production
    ADD CONSTRAINT final_product_fkey FOREIGN KEY (final_product) REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.production DROP CONSTRAINT final_product_fkey;
       public          postgres    false    217    4815    231            �           2606    118892    groups groups_father_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_father_id_fkey FOREIGN KEY (father_id) REFERENCES public.groups(id) ON UPDATE CASCADE ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_father_id_fkey;
       public          postgres    false    243    4828    243            �           2606    118887    prices prices_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prices
    ADD CONSTRAINT prices_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.prices DROP CONSTRAINT prices_product_id_fkey;
       public          postgres    false    231    4815    237            �           2606    118817 2   production_work production_work_production_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.production_work
    ADD CONSTRAINT production_work_production_id_fkey FOREIGN KEY (production_id) REFERENCES public.production(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 \   ALTER TABLE ONLY public.production_work DROP CONSTRAINT production_work_production_id_fkey;
       public          postgres    false    219    4800    217            �           2606    118822 3   production_work production_work_raw_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.production_work
    ADD CONSTRAINT production_work_raw_product_id_fkey FOREIGN KEY (raw_product_id) REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 ]   ALTER TABLE ONLY public.production_work DROP CONSTRAINT production_work_raw_product_id_fkey;
       public          postgres    false    4815    231    219            �           2606    118827 ,   production_work production_work_step_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.production_work
    ADD CONSTRAINT production_work_step_id_fkey FOREIGN KEY (step_id) REFERENCES public.production_steps(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 V   ALTER TABLE ONLY public.production_work DROP CONSTRAINT production_work_step_id_fkey;
       public          postgres    false    4804    221    219            �           2606    118857 "   products products_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_category_id_fkey;
       public          postgres    false    231    245    4831            �           2606    118862    products products_group_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.groups(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.products DROP CONSTRAINT products_group_id_fkey;
       public          postgres    false    231    4828    243            �           2606    118867 "   products products_supplier_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_supplier_id_fkey FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_supplier_id_fkey;
       public          postgres    false    231    4824    239            �           2606    118832 &   stock_items stock_items_costumers_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_items
    ADD CONSTRAINT stock_items_costumers_fkey FOREIGN KEY (costumers) REFERENCES public.customers(id) ON UPDATE CASCADE ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.stock_items DROP CONSTRAINT stock_items_costumers_fkey;
       public          postgres    false    227    241    4826            �           2606    118837 '   stock_items stock_items_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_items
    ADD CONSTRAINT stock_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public.stock_items DROP CONSTRAINT stock_items_product_id_fkey;
       public          postgres    false    227    231    4815            �           2606    118842 %   stock_items stock_items_stock_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_items
    ADD CONSTRAINT stock_items_stock_id_fkey FOREIGN KEY (stock_id) REFERENCES public.stock(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.stock_items DROP CONSTRAINT stock_items_stock_id_fkey;
       public          postgres    false    225    4808    227            �           2606    118847 .   stock_items stock_items_stock_location_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_items
    ADD CONSTRAINT stock_items_stock_location_id_fkey FOREIGN KEY (stock_location_id) REFERENCES public.stock_location(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 X   ALTER TABLE ONLY public.stock_items DROP CONSTRAINT stock_items_stock_location_id_fkey;
       public          postgres    false    227    229    4812            �           2606    118852 &   stock_items stock_items_suppliers_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_items
    ADD CONSTRAINT stock_items_suppliers_fkey FOREIGN KEY (suppliers) REFERENCES public.suppliers(id) ON UPDATE CASCADE ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.stock_items DROP CONSTRAINT stock_items_suppliers_fkey;
       public          postgres    false    227    4824    239            �   �   x�m���0kk�, �)�2�!2�����T���_N��u�s��衹��,�jv
�e�Q�X���yp5�> 3�,ftx�$�k��GY��nLE2Z&܈Wյ��Hd��U4UՂ�����yN���ߊ�r���9���.�      �      x������ � �      �   k   x�3�(J��,��,�4202�5��54P04�25�20ҳ47�4�-�e��[�_T���O�	Ɯ~�ə�y�9d`��_������YL���P���?���br����� sH�      �      x������ � �      �   �   x����� @�f
H�ɯ�� �JE��u��z@�����C��A�D�	��c'��a��M�~]�:���w&ae|(��*��ϐZY� �o{rm���:��F@���l]H<g����&@	�"�W�Fْn�6��S嗉��k�Z GHE�)W��A������/0|+      �   �   x���A
�0EדS�Z����;)���+7�$�@q$iO�Q������?<��
���@S���m%m�$��7]/umښ���p!7�g<�s��a�]�s���VNE�na����go�R����o�^��_:89^�	_���\���:_�      �   �   x����
�0���S�Z�4iM�fp��8v9%H�m T����p�xw�|���\0�@	�+a+)�lz��BնS���0�����8�39_���9���g\o�|@[�!e�$Q���;��A�(�"����!1�W(C
hC��V~w\����1�:'�j      �   �   x��ѱ�0�ڙ��K�N�JНc��؆�)�a�q���}��ʲDָ%�pge:s:t��t���ԙv��q��4F����#IpT3�ڡƀ�T1'�pFJ�G�+�TWhPB�e}#��g![ǜ�Q�ObA@[[^봋���Z-�da�:�Z�I�����8���m�4_b�|�      �   �   x���;�0�z}
.�Ȼ���!:$�PRs�/Ƙ�&#����;Ź����Ģ�%�E�I��e���j��	6��"�0� 8�<��!�` j����'4�@�-�!8�L�Ũ>�H¨M�	m���R���*��Ҁ0B���u��[f{P��>��(b�2E�+���}3�Ϸ�Q!}3e�<3e�e�ef�uf�mfJ�5��?b�      �   �   x��ϱ
�0��9y��@��%�ĭM�J[�:��:�X���F
�:�X�;��Y{Ώ�xnQ� �V��a��{$�H�H����Zi?�t��ߥk�D�H�/�l����B4�?E�j�J�(����lm��^,r�f�ڔK����u��ٮcH\�p�ћ���
�B��{��,ܴ�f(�!�?���      �   �   x���K�0D��)� (	����ZJ���m����X+��Ƭ�7�ь��&\��� V�"�Mjtb�Zm���M����O�������"��L#�"�Ѕ%��������e�5�����x\�����d��q��,R��D;�h�!.�+�2|o�X����pިcy�L)��ȴ[      �   )  x�͕���0Ek���D3��n�]�i�(Rh���߹�fw�M����G�s�� �I�P�{F"kL�5=I'%�ӱ;�.���_�a������~^p�x��sSI������t ���� �,�ZDd�*��+(v�u���
J@V���$��@@�AL�bJJ�@�V���$��@@�AL��b�I7���X���=똭i�b�;�rW�!G("S�.B=���6�cc�����eF�A�2�l�W�O�~l�'��"S�	����� %�Ȕz�����'Q�2�L�w�v]��uӯ      �   Z  x����J�0��W��Hҿug��9��x"H�fi�ѦezG^�7f�$�yhH!���mޏ��i�бc-gpu��bL�~�8m���e_>l7�-쮁̋��!��+�D�t�T5h��j��W�.���b�,p� �x�fkL�EN���7.Z5tBgI�Cb`�,ǈm48#�FvZ��A��CR���!��Ǥ��d��0
��,#���a}�Ed�+_�S'��I�r��t^��(|g��}S��ee%�`�mk��93O�{SXJ�B|s{ԋZp�Z�q��<�p8�F'������Qo�`��$s1ǢQt��6>7�i8I��j�6�z"���ؑo�P��eE?*q�8      �   h   x�3��ss542�4202�5��50T0��20 "NO���������������������)n.#N� C#��F
��j����˱��!�k	�Υ��=... �D�      �   O  x����j�0���S�R,�_�[�uctl0���λ���d�=��2�p���!��YE�6��[�~��{$�(�H���],|��].��:�ʌn�<�v��%S��L�K�G�{T�y^�A^���p�=���<�=����x���ꋼ4��y�J��K�a?_��3W;���K�s1󳀯�My��5dS��ɻM��k[�L�R[˟I�00���$~����O��T�\z���Yz�!�ǣqY�߀�:k!H,�S�𩣍�)!��ǫ�9�9�~lZ��|I�a���I)�$�[��W�Ӕ�8])B��jckj-���d��[e�rua�ꪍ���4M���[�      �   Z   x�3�t>�(7�(Q��(3Q��������D��R��@��������H��������Kj���ř%�d�`�pxaI&��MP��D�11z\\\ ~�=Z      �      x�3�tK�J�K���H�4202�5��54P04�25�20ҳ47�4�-�e�閚Y��������X�I�!ƜE�)�%�E
d`��V����E�BJ��Idd�pIPiQbY��q�&���"ˈ=... ��[G      �   �   x�����@뽧� ��T����lV�r���y~��Xa����|l.!�)+��He5�iN�ne��.:�o� Z`��:uu�j��9+�2�]3����S`-Ĝ�?����?�<x�dQL�5�0Ŭ�e�x)�(x��X��!F���β�?n	ݷj7����y�     
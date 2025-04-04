PGDMP                  
         }            EDPLUS    15.2    15.2 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    102667    EDPLUS    DATABASE     |   CREATE DATABASE "EDPLUS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE "EDPLUS";
                postgres    false                        2615    102668    Box    SCHEMA        CREATE SCHEMA "Box";
    DROP SCHEMA "Box";
                postgres    false                        2615    102669    Branch    SCHEMA        CREATE SCHEMA "Branch";
    DROP SCHEMA "Branch";
                postgres    false                        2615    103462    CRM    SCHEMA        CREATE SCHEMA "CRM";
    DROP SCHEMA "CRM";
                postgres    false                        2615    111986    Chat    SCHEMA        CREATE SCHEMA "Chat";
    DROP SCHEMA "Chat";
                postgres    false                        2615    102670    Company    SCHEMA        CREATE SCHEMA "Company";
    DROP SCHEMA "Company";
                postgres    false            	            2615    102671    Customer    SCHEMA        CREATE SCHEMA "Customer";
    DROP SCHEMA "Customer";
                postgres    false            
            2615    102672    Employee    SCHEMA        CREATE SCHEMA "Employee";
    DROP SCHEMA "Employee";
                postgres    false                        2615    102673    Fud    SCHEMA        CREATE SCHEMA "Fud";
    DROP SCHEMA "Fud";
                postgres    false                        2615    102674 	   Inventory    SCHEMA        CREATE SCHEMA "Inventory";
    DROP SCHEMA "Inventory";
                postgres    false                        2615    102675    Kitchen    SCHEMA        CREATE SCHEMA "Kitchen";
    DROP SCHEMA "Kitchen";
                postgres    false                        2615    102676    Settings    SCHEMA        CREATE SCHEMA "Settings";
    DROP SCHEMA "Settings";
                postgres    false                        2615    102677    User    SCHEMA        CREATE SCHEMA "User";
    DROP SCHEMA "User";
                postgres    false                        2615    103711    _company_1_branch_8    SCHEMA     #   CREATE SCHEMA _company_1_branch_8;
 !   DROP SCHEMA _company_1_branch_8;
                postgres    false            �            1259    102678    boxes_history    TABLE     �   CREATE TABLE "Box".boxes_history (
    id bigint NOT NULL,
    initial_date timestamp without time zone,
    finish_date timestamp without time zone,
    id_branches bigint,
    id_employees bigint,
    id_boxes bigint
);
     DROP TABLE "Box".boxes_history;
       Box         heap    postgres    false    6            �            1259    102681    movement_history_id_seq    SEQUENCE        CREATE SEQUENCE "Box".movement_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE "Box".movement_history_id_seq;
       Box          postgres    false    6            �            1259    102682    movement_history    TABLE       CREATE TABLE "Box".movement_history (
    id bigint DEFAULT nextval('"Box".movement_history_id_seq'::regclass) NOT NULL,
    id_branches bigint,
    id_boxes bigint,
    id_employees bigint,
    move double precision,
    comment text,
    date_move timestamp with time zone
);
 #   DROP TABLE "Box".movement_history;
       Box         heap    postgres    false    228    6            �            1259    102688    sales_history    TABLE     O  CREATE TABLE "Box".sales_history (
    id bigint NOT NULL,
    id_companies bigint,
    id_branches bigint,
    id_employees bigint,
    id_customers bigint,
    id_dishes_and_combos bigint,
    price double precision,
    amount double precision,
    total double precision,
    comment text,
    sale_day timestamp with time zone
);
     DROP TABLE "Box".sales_history;
       Box         heap    postgres    false    6            �            1259    102693    sales_history_id_seq    SEQUENCE     |   CREATE SEQUENCE "Box".sales_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE "Box".sales_history_id_seq;
       Box          postgres    false    230    6            �           0    0    sales_history_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "Box".sales_history_id_seq OWNED BY "Box".sales_history.id;
          Box          postgres    false    231            �            1259    102694    Ad    TABLE     �   CREATE TABLE "Branch"."Ad" (
    id bigint NOT NULL,
    id_branches bigint,
    img text,
    type character varying(7),
    description character varying(30)
);
    DROP TABLE "Branch"."Ad";
       Branch         heap    postgres    false    7            �            1259    102699 	   Ad_id_seq    SEQUENCE     v   CREATE SEQUENCE "Branch"."Ad_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE "Branch"."Ad_id_seq";
       Branch          postgres    false    7    232            �           0    0 	   Ad_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE "Branch"."Ad_id_seq" OWNED BY "Branch"."Ad".id;
          Branch          postgres    false    233            �            1259    102700    app    TABLE     Z  CREATE TABLE "Branch".app (
    id bigint NOT NULL,
    id_branches bigint,
    id_stripe_new_terminal text,
    expiration_date_new_terminal date DEFAULT (CURRENT_DATE + '15 days'::interval) NOT NULL,
    id_stripe_website_creation text,
    expiration_date_website_creation date DEFAULT (CURRENT_DATE + '15 days'::interval) NOT NULL,
    id_stripe_digital_menu text,
    expiration_date_digital_menu date DEFAULT (CURRENT_DATE + '15 days'::interval) NOT NULL,
    id_stripe_employee_schedules text,
    expiration_date_employee_schedules date DEFAULT (CURRENT_DATE + '15 days'::interval) NOT NULL
);
    DROP TABLE "Branch".app;
       Branch         heap    postgres    false    7            �            1259    102709 
   app_id_seq    SEQUENCE     u   CREATE SEQUENCE "Branch".app_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE "Branch".app_id_seq;
       Branch          postgres    false    234    7            �           0    0 
   app_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE "Branch".app_id_seq OWNED BY "Branch".app.id;
          Branch          postgres    false    235            �            1259    102710    billing_information    TABLE     I  CREATE TABLE "Branch".billing_information (
    id bigint NOT NULL,
    id_providers bigint,
    addres text,
    postal_code character varying(10),
    rfc text NOT NULL,
    curp text NOT NULL,
    business_name character varying(200),
    business_phone character varying(20),
    business_cell_phone character varying(20)
);
 )   DROP TABLE "Branch".billing_information;
       Branch         heap    postgres    false    7            �            1259    102715    billing_information_id_seq    SEQUENCE     �   CREATE SEQUENCE "Branch".billing_information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "Branch".billing_information_id_seq;
       Branch          postgres    false    7    236            �           0    0    billing_information_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "Branch".billing_information_id_seq OWNED BY "Branch".billing_information.id;
          Branch          postgres    false    237            �            1259    102716    boxes    TABLE     �   CREATE TABLE "Branch".boxes (
    id bigint NOT NULL,
    id_branches bigint,
    num_box smallint,
    ip_printer character varying(20)
);
    DROP TABLE "Branch".boxes;
       Branch         heap    postgres    false    7            �            1259    102719    boxes_id_seq    SEQUENCE     w   CREATE SEQUENCE "Branch".boxes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE "Branch".boxes_id_seq;
       Branch          postgres    false    238    7            �           0    0    boxes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE "Branch".boxes_id_seq OWNED BY "Branch".boxes.id;
          Branch          postgres    false    239            �            1259    102720 
   commanders    TABLE     �  CREATE TABLE "Branch".commanders (
    id bigint NOT NULL,
    id_branches bigint,
    id_employees bigint,
    id_customers bigint,
    total double precision NOT NULL,
    money_received double precision NOT NULL,
    change double precision NOT NULL,
    status integer NOT NULL,
    comentary text,
    commander_date timestamp without time zone NOT NULL,
    order_details json NOT NULL
);
     DROP TABLE "Branch".commanders;
       Branch         heap    postgres    false    7            �            1259    102725    commanders_id_seq    SEQUENCE     |   CREATE SEQUENCE "Branch".commanders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE "Branch".commanders_id_seq;
       Branch          postgres    false    240    7            �           0    0    commanders_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "Branch".commanders_id_seq OWNED BY "Branch".commanders.id;
          Branch          postgres    false    241            �            1259    102726    facture    TABLE     +  CREATE TABLE "Branch".facture (
    "Invoice Number" character varying(200) NOT NULL,
    id_companies bigint,
    id_branches bigint,
    id_employees bigint,
    id_customers bigint,
    id_commanders bigint,
    name_customer text NOT NULL,
    email_customer text,
    address text,
    transition_type character varying(300),
    payment_reference text,
    creation_date date DEFAULT CURRENT_DATE NOT NULL,
    payment_date date NOT NULL,
    type_of_documentation text,
    status character varying(100),
    paid boolean DEFAULT false NOT NULL
);
    DROP TABLE "Branch".facture;
       Branch         heap    postgres    false    7            �            1259    102733    managers    TABLE     l   CREATE TABLE "Branch".managers (
    id bigint NOT NULL,
    id_branches bigint,
    id_employees bigint
);
    DROP TABLE "Branch".managers;
       Branch         heap    postgres    false    7            �            1259    102736    managers_id_seq    SEQUENCE     z   CREATE SEQUENCE "Branch".managers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE "Branch".managers_id_seq;
       Branch          postgres    false    243    7            �           0    0    managers_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "Branch".managers_id_seq OWNED BY "Branch".managers.id;
          Branch          postgres    false    244            �            1259    102737    order    TABLE     g  CREATE TABLE "Branch"."order" (
    id bigint NOT NULL,
    id_branches bigint,
    id_commanders bigint,
    id_employees bigint,
    name_customer character varying(300),
    cellphone character varying(30),
    phone character varying(30),
    address text,
    comment text,
    status character varying(50) DEFAULT 'En preparacion'::character varying
);
    DROP TABLE "Branch"."order";
       Branch         heap    postgres    false    7            �            1259    102743    order_id_seq    SEQUENCE     w   CREATE SEQUENCE "Branch".order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE "Branch".order_id_seq;
       Branch          postgres    false    7    245            �           0    0    order_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE "Branch".order_id_seq OWNED BY "Branch"."order".id;
          Branch          postgres    false    246            �            1259    102744    pack_reservation    TABLE     &  CREATE TABLE "Branch".pack_reservation (
    id bigint NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    number_of_adult integer,
    number_of_children integer,
    price_for_children double precision,
    price_for_adult double precision,
    id_branches bigint
);
 &   DROP TABLE "Branch".pack_reservation;
       Branch         heap    postgres    false    7            �            1259    102749    pack_reservation_id_seq    SEQUENCE     �   CREATE SEQUENCE "Branch".pack_reservation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE "Branch".pack_reservation_id_seq;
       Branch          postgres    false    247    7            �           0    0    pack_reservation_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "Branch".pack_reservation_id_seq OWNED BY "Branch".pack_reservation.id;
          Branch          postgres    false    248            �            1259    102750 	   providers    TABLE     �  CREATE TABLE "Branch".providers (
    id bigint NOT NULL,
    id_branches bigint,
    name character varying(200),
    representative character varying(200),
    cell_phone character varying(15),
    phone character varying(15),
    email text,
    credit_limit double precision,
    credit_days smallint,
    comment text,
    business_name character varying(200),
    business_address text,
    business_rfc text,
    business_curp text,
    business_postal_code character varying(5),
    business_phone character varying(20),
    business_cell_phone character varying(20),
    website text,
    rfc text,
    curp text,
    category character varying(200),
    type character varying(25),
    business_representative character varying(300)
);
    DROP TABLE "Branch".providers;
       Branch         heap    postgres    false    7            �            1259    102755    providers_id_seq    SEQUENCE     {   CREATE SEQUENCE "Branch".providers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE "Branch".providers_id_seq;
       Branch          postgres    false    249    7            �           0    0    providers_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "Branch".providers_id_seq OWNED BY "Branch".providers.id;
          Branch          postgres    false    250            �            1259    102756    reservation    TABLE     �  CREATE TABLE "Branch".reservation (
    id bigint NOT NULL,
    id_branches bigint,
    id_tables bigint,
    id_pack_reservation bigint,
    customer_name character varying(100),
    customer_phone character varying(20),
    customer_email text,
    reservation_date date,
    reservation_time timestamp without time zone,
    reason text,
    number_of_adult integer,
    number_of_children integer,
    commentary text,
    status integer
);
 !   DROP TABLE "Branch".reservation;
       Branch         heap    postgres    false    7            �            1259    102761    reservation_id_seq    SEQUENCE     }   CREATE SEQUENCE "Branch".reservation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE "Branch".reservation_id_seq;
       Branch          postgres    false    251    7            �           0    0    reservation_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "Branch".reservation_id_seq OWNED BY "Branch".reservation.id;
          Branch          postgres    false    252            �            1259    102762    restaurant_area    TABLE     �   CREATE TABLE "Branch".restaurant_area (
    id bigint NOT NULL,
    id_branches bigint,
    name character varying(30),
    description text,
    floor integer
);
 %   DROP TABLE "Branch".restaurant_area;
       Branch         heap    postgres    false    7            �            1259    102767    restaurant_area_id_seq    SEQUENCE     �   CREATE SEQUENCE "Branch".restaurant_area_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE "Branch".restaurant_area_id_seq;
       Branch          postgres    false    253    7            �           0    0    restaurant_area_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE "Branch".restaurant_area_id_seq OWNED BY "Branch".restaurant_area.id;
          Branch          postgres    false    254            �            1259    102768    tables    TABLE     �   CREATE TABLE "Branch".tables (
    id bigint NOT NULL,
    id_branches bigint,
    id_restaurant_area bigint,
    name character varying(30),
    table_number integer,
    num_customers smallint DEFAULT 0
);
    DROP TABLE "Branch".tables;
       Branch         heap    postgres    false    7                        1259    102772    tables_id_seq    SEQUENCE     x   CREATE SEQUENCE "Branch".tables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE "Branch".tables_id_seq;
       Branch          postgres    false    7    255            �           0    0    tables_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE "Branch".tables_id_seq OWNED BY "Branch".tables.id;
          Branch          postgres    false    256            9           1259    103590    appointment    TABLE     s  CREATE TABLE "CRM".appointment (
    id bigint NOT NULL,
    id_prospects bigint,
    location text,
    notes text,
    affair text NOT NULL,
    meeting_date timestamp without time zone NOT NULL,
    duration_in_minutes numeric(10,2),
    id_companies bigint,
    id_branches bigint,
    id_employees bigint,
    end_date timestamp without time zone,
    color text
);
    DROP TABLE "CRM".appointment;
       CRM         heap    postgres    false    16            8           1259    103589    appointment_id_seq    SEQUENCE     z   CREATE SEQUENCE "CRM".appointment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE "CRM".appointment_id_seq;
       CRM          postgres    false    16    313            �           0    0    appointment_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "CRM".appointment_id_seq OWNED BY "CRM".appointment.id;
          CRM          postgres    false    312            @           1259    111967    history_prospects    TABLE     �   CREATE TABLE "CRM".history_prospects (
    id bigint NOT NULL,
    id_prospects bigint,
    id_users bigint,
    comment text NOT NULL,
    link text,
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 $   DROP TABLE "CRM".history_prospects;
       CRM         heap    postgres    false    16            ?           1259    111966    history_prospects_id_seq    SEQUENCE     �   CREATE SEQUENCE "CRM".history_prospects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE "CRM".history_prospects_id_seq;
       CRM          postgres    false    16    320            �           0    0    history_prospects_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE "CRM".history_prospects_id_seq OWNED BY "CRM".history_prospects.id;
          CRM          postgres    false    319            5           1259    103574    product_to_sell    TABLE     �   CREATE TABLE "CRM".product_to_sell (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    color character varying(40) DEFAULT 'rgba(6, 255, 118, 0.377)'::character varying NOT NULL,
    id_companies bigint
);
 "   DROP TABLE "CRM".product_to_sell;
       CRM         heap    postgres    false    16            4           1259    103573    product_to_sell_id_seq    SEQUENCE     ~   CREATE SEQUENCE "CRM".product_to_sell_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE "CRM".product_to_sell_id_seq;
       CRM          postgres    false    309    16            �           0    0    product_to_sell_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE "CRM".product_to_sell_id_seq OWNED BY "CRM".product_to_sell.id;
          CRM          postgres    false    308            ;           1259    103599 	   prospects    TABLE     �  CREATE TABLE "CRM".prospects (
    id bigint NOT NULL,
    name character varying(500) NOT NULL,
    email text NOT NULL,
    estimated_income numeric(10,2),
    probability numeric(10,2),
    cellphone character varying(20),
    phone character varying(20),
    grades text,
    planned_closure date,
    creation_date date DEFAULT CURRENT_DATE NOT NULL,
    company_name character varying(255),
    address text,
    website text,
    contact_name character varying(500),
    company_cellphone character varying(20),
    company_phone character varying(20),
    priority smallint DEFAULT 0 NOT NULL,
    color character varying(40),
    id_employees bigint,
    id_product_to_sell bigint,
    id_sales_team bigint,
    id_sales_stage bigint,
    id_companies bigint,
    id_branches bigint,
    type_customer boolean DEFAULT false NOT NULL,
    expected_closing_percentage numeric DEFAULT 0,
    category text,
    salesrep text,
    notes text
);
    DROP TABLE "CRM".prospects;
       CRM         heap    postgres    false    16            :           1259    103598    prospects_id_seq    SEQUENCE     x   CREATE SEQUENCE "CRM".prospects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE "CRM".prospects_id_seq;
       CRM          postgres    false    16    315            �           0    0    prospects_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE "CRM".prospects_id_seq OWNED BY "CRM".prospects.id;
          CRM          postgres    false    314            3           1259    103566    sales_stage    TABLE     �   CREATE TABLE "CRM".sales_stage (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    "position" smallint DEFAULT 0 NOT NULL,
    id_companies bigint
);
    DROP TABLE "CRM".sales_stage;
       CRM         heap    postgres    false    16            2           1259    103565    sales_stage_id_seq    SEQUENCE     z   CREATE SEQUENCE "CRM".sales_stage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE "CRM".sales_stage_id_seq;
       CRM          postgres    false    16    307            �           0    0    sales_stage_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "CRM".sales_stage_id_seq OWNED BY "CRM".sales_stage.id;
          CRM          postgres    false    306            7           1259    103582 
   sales_team    TABLE     �   CREATE TABLE "CRM".sales_team (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    commission numeric(10,2) DEFAULT 0 NOT NULL,
    id_companies bigint
);
    DROP TABLE "CRM".sales_team;
       CRM         heap    postgres    false    16            6           1259    103581    sales_team_id_seq    SEQUENCE     y   CREATE SEQUENCE "CRM".sales_team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE "CRM".sales_team_id_seq;
       CRM          postgres    false    16    311            �           0    0    sales_team_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE "CRM".sales_team_id_seq OWNED BY "CRM".sales_team.id;
          CRM          postgres    false    310            B           1259    111988    chats    TABLE     �   CREATE TABLE "Chat".chats (
    id_chat integer NOT NULL,
    chat_name character varying(100),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_one_id text,
    user_two_id text
);
    DROP TABLE "Chat".chats;
       Chat         heap    postgres    false    18            A           1259    111987    chats_id_chat_seq    SEQUENCE     �   CREATE SEQUENCE "Chat".chats_id_chat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE "Chat".chats_id_chat_seq;
       Chat          postgres    false    322    18            �           0    0    chats_id_chat_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "Chat".chats_id_chat_seq OWNED BY "Chat".chats.id_chat;
          Chat          postgres    false    321            G           1259    112031    message_status    TABLE     �   CREATE TABLE "Chat".message_status (
    id_status integer NOT NULL,
    message_id integer,
    user_id text,
    is_read boolean DEFAULT false NOT NULL,
    read_at timestamp without time zone
);
 "   DROP TABLE "Chat".message_status;
       Chat         heap    postgres    false    18            F           1259    112030    message_status_id_status_seq    SEQUENCE     �   CREATE SEQUENCE "Chat".message_status_id_status_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "Chat".message_status_id_status_seq;
       Chat          postgres    false    18    327            �           0    0    message_status_id_status_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "Chat".message_status_id_status_seq OWNED BY "Chat".message_status.id_status;
          Chat          postgres    false    326            E           1259    112011    messages    TABLE     �   CREATE TABLE "Chat".messages (
    id_message integer NOT NULL,
    chat_id integer,
    user_id text,
    content text NOT NULL,
    sent_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE "Chat".messages;
       Chat         heap    postgres    false    18            D           1259    112010    messages_id_message_seq    SEQUENCE     �   CREATE SEQUENCE "Chat".messages_id_message_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE "Chat".messages_id_message_seq;
       Chat          postgres    false    18    325            �           0    0    messages_id_message_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE "Chat".messages_id_message_seq OWNED BY "Chat".messages.id_message;
          Chat          postgres    false    324            C           1259    111995 
   user_chats    TABLE     ^   CREATE TABLE "Chat".user_chats (
    user_id bigint NOT NULL,
    chat_id integer NOT NULL
);
    DROP TABLE "Chat".user_chats;
       Chat         heap    postgres    false    18                       1259    102773    branches    TABLE     \  CREATE TABLE "Company".branches (
    id bigint NOT NULL,
    id_companies bigint,
    name_branch character varying(60) NOT NULL,
    alias character varying(30) NOT NULL,
    representative text,
    id_country bigint,
    municipality text NOT NULL,
    city text NOT NULL,
    cologne text NOT NULL,
    address character varying(40),
    num_ext character varying(8),
    num_int character varying(8),
    postal_code character varying(10) NOT NULL,
    email_branch text NOT NULL,
    cell_phone character varying(24),
    phone character varying(20),
    pack_branch bigint DEFAULT 0 NOT NULL,
    token_uber text,
    token_rappi text,
    website_creation date DEFAULT (CURRENT_DATE + '15 days'::interval),
    digital_menu date DEFAULT (CURRENT_DATE + '15 days'::interval),
    employee_schedules date DEFAULT (CURRENT_DATE + '15 days'::interval)
);
    DROP TABLE "Company".branches;
       Company         heap    postgres    false    8                       1259    102782    branches_id_seq    SEQUENCE     {   CREATE SEQUENCE "Company".branches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE "Company".branches_id_seq;
       Company          postgres    false    257    8            �           0    0    branches_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "Company".branches_id_seq OWNED BY "Company".branches.id;
          Company          postgres    false    258                       1259    102783 	   customers    TABLE     %  CREATE TABLE "Company".customers (
    id bigint NOT NULL,
    id_companies bigint,
    first_name character varying(50) NOT NULL,
    second_name character varying(50),
    last_name character varying(300),
    id_country bigint,
    states text NOT NULL,
    city text NOT NULL,
    street text NOT NULL,
    num_ext character varying(8),
    num_int character varying(8),
    postal_code character varying(10),
    email text NOT NULL,
    phone character varying(20),
    cell_phone character varying(20),
    points smallint,
    birthday date,
    company_name character varying(255),
    company_address text,
    website text,
    contact_name character varying(255),
    company_cellphone character varying(20),
    company_phone character varying(20),
    type_customer boolean DEFAULT false
);
     DROP TABLE "Company".customers;
       Company         heap    postgres    false    8                       1259    102788    customers_id_seq    SEQUENCE     |   CREATE SEQUENCE "Company".customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE "Company".customers_id_seq;
       Company          postgres    false    259    8            �           0    0    customers_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "Company".customers_id_seq OWNED BY "Company".customers.id;
          Company          postgres    false    260                       1259    102789 	   employees    TABLE     �  CREATE TABLE "Company".employees (
    id bigint NOT NULL,
    id_companies bigint,
    id_users bigint,
    id_roles_employees bigint,
    id_departments_employees bigint,
    id_branches bigint,
    city character varying(100),
    street character varying(200),
    num_ext character varying(5),
    num_int character varying(5),
    id_country bigint,
    phone character varying(15),
    cell_phone character varying(15),
    nip character varying(6) DEFAULT '0000'::character varying
);
     DROP TABLE "Company".employees;
       Company         heap    postgres    false    8                       1259    102793    employees_id_seq    SEQUENCE     |   CREATE SEQUENCE "Company".employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE "Company".employees_id_seq;
       Company          postgres    false    261    8            �           0    0    employees_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "Company".employees_id_seq OWNED BY "Company".employees.id;
          Company          postgres    false    262                       1259    102794    departments_employees    TABLE     �   CREATE TABLE "Employee".departments_employees (
    id bigint NOT NULL,
    id_companies bigint,
    description text,
    name_departaments character varying(100) NOT NULL
);
 -   DROP TABLE "Employee".departments_employees;
       Employee         heap    postgres    false    10                       1259    102799    departments_employees_id_seq    SEQUENCE     �   CREATE SEQUENCE "Employee".departments_employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE "Employee".departments_employees_id_seq;
       Employee          postgres    false    263    10            �           0    0    departments_employees_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE "Employee".departments_employees_id_seq OWNED BY "Employee".departments_employees.id;
          Employee          postgres    false    264            	           1259    102800    history_schedules    TABLE     �   CREATE TABLE "Employee".history_schedules (
    id bigint NOT NULL,
    id_branches bigint,
    id_employees bigint,
    id_schedules bigint,
    date_finish date NOT NULL,
    date_start date NOT NULL
);
 )   DROP TABLE "Employee".history_schedules;
       Employee         heap    postgres    false    10            
           1259    102803    history_schedules_id_seq    SEQUENCE     �   CREATE SEQUENCE "Employee".history_schedules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "Employee".history_schedules_id_seq;
       Employee          postgres    false    10    265            �           0    0    history_schedules_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "Employee".history_schedules_id_seq OWNED BY "Employee".history_schedules.id;
          Employee          postgres    false    266                       1259    102804    roles_employees    TABLE     �  CREATE TABLE "Employee".roles_employees (
    id bigint NOT NULL,
    id_companies bigint NOT NULL,
    name_role character varying(30) NOT NULL,
    commissions double precision NOT NULL,
    salary double precision,
    discount_for_product double precision,
    add_box boolean DEFAULT false NOT NULL,
    edit_box boolean DEFAULT false NOT NULL,
    delete_box boolean DEFAULT false NOT NULL,
    create_reservation boolean DEFAULT false NOT NULL,
    view_reservation boolean DEFAULT false NOT NULL,
    view_reports boolean DEFAULT false NOT NULL,
    add_customer boolean DEFAULT false NOT NULL,
    edit_customer boolean DEFAULT false NOT NULL,
    delete_customer boolean DEFAULT false NOT NULL,
    cancel_debt boolean DEFAULT false NOT NULL,
    offer_loan boolean DEFAULT false NOT NULL,
    get_fertilizer boolean DEFAULT false NOT NULL,
    view_customer_credits boolean DEFAULT false NOT NULL,
    send_email boolean DEFAULT false NOT NULL,
    add_employee boolean DEFAULT false NOT NULL,
    edit_employee boolean DEFAULT false NOT NULL,
    delete_employee boolean DEFAULT false NOT NULL,
    create_schedule boolean DEFAULT false NOT NULL,
    assign_schedule boolean DEFAULT false NOT NULL,
    view_schedule boolean DEFAULT false NOT NULL,
    create_type_user boolean DEFAULT false NOT NULL,
    create_employee_department boolean DEFAULT false NOT NULL,
    view_sale_history boolean DEFAULT false NOT NULL,
    delete_sale_history boolean DEFAULT false NOT NULL,
    view_movement_history boolean DEFAULT false NOT NULL,
    delete_movement_history boolean DEFAULT false NOT NULL,
    view_supplies boolean DEFAULT false NOT NULL,
    add_supplies boolean DEFAULT false NOT NULL,
    edit_supplies boolean DEFAULT false NOT NULL,
    delete_supplies boolean DEFAULT false NOT NULL,
    view_products boolean DEFAULT false NOT NULL,
    edit_products boolean DEFAULT false NOT NULL,
    delete_products boolean DEFAULT false NOT NULL,
    view_combo boolean DEFAULT false NOT NULL,
    add_combo boolean DEFAULT false NOT NULL,
    edit_combo boolean DEFAULT false NOT NULL,
    delete_combo boolean DEFAULT false NOT NULL,
    view_food_departament boolean DEFAULT false NOT NULL,
    add_food_departament boolean DEFAULT false NOT NULL,
    edit_food_departament boolean DEFAULT false NOT NULL,
    delete_food_departament boolean DEFAULT false NOT NULL,
    view_food_category boolean DEFAULT false NOT NULL,
    add_food_category boolean DEFAULT false NOT NULL,
    edit_food_category boolean DEFAULT false NOT NULL,
    delete_food_category boolean DEFAULT false NOT NULL,
    waste_report boolean DEFAULT false NOT NULL,
    add_provider boolean DEFAULT false NOT NULL,
    edit_provider boolean DEFAULT false NOT NULL,
    delete_provider boolean DEFAULT false NOT NULL,
    view_provider boolean DEFAULT false NOT NULL,
    sell boolean DEFAULT false NOT NULL,
    apply_discount boolean DEFAULT false NOT NULL,
    apply_returns boolean DEFAULT false NOT NULL,
    add_offers boolean DEFAULT false NOT NULL,
    edit_offers boolean DEFAULT false NOT NULL,
    delete_offers boolean DEFAULT false NOT NULL,
    change_coins boolean DEFAULT false NOT NULL,
    modify_hardware boolean DEFAULT false NOT NULL,
    modify_hardware_kitchen boolean DEFAULT false NOT NULL,
    give_permissions boolean DEFAULT false NOT NULL,
    currency character varying(10),
    type_of_salary character varying(15),
    app_point_sales boolean DEFAULT false NOT NULL,
    view_inventory boolean DEFAULT false NOT NULL,
    edit_inventory boolean DEFAULT false NOT NULL,
    employee_roles boolean DEFAULT true NOT NULL,
    edit_rol_employee boolean DEFAULT true NOT NULL,
    delete_rol_employee boolean DEFAULT true NOT NULL,
    employee_department boolean DEFAULT true NOT NULL,
    edit_employee_department boolean DEFAULT true NOT NULL,
    delete_employee_department boolean DEFAULT true NOT NULL,
    add_employee_roles boolean DEFAULT true NOT NULL,
    add_employee_department boolean DEFAULT true NOT NULL,
    view_employee boolean DEFAULT true NOT NULL
);
 '   DROP TABLE "Employee".roles_employees;
       Employee         heap    postgres    false    10                       1259    102867    roles_employees_id_seq    SEQUENCE     �   CREATE SEQUENCE "Employee".roles_employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE "Employee".roles_employees_id_seq;
       Employee          postgres    false    267    10            �           0    0    roles_employees_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE "Employee".roles_employees_id_seq OWNED BY "Employee".roles_employees.id;
          Employee          postgres    false    268                       1259    102868 	   schedules    TABLE     '  CREATE TABLE "Employee".schedules (
    id bigint NOT NULL,
    id_branches bigint,
    color character varying(10),
    name character varying(100),
    monday boolean,
    tuesday boolean,
    wednesday boolean,
    thursday boolean,
    friday boolean,
    saturday boolean,
    sunday boolean,
    ms time without time zone,
    mf time without time zone,
    ts time without time zone,
    tf time without time zone,
    ws time without time zone,
    wf time without time zone,
    ths time without time zone,
    thf time without time zone,
    fs time without time zone,
    ff time without time zone,
    sas time without time zone,
    saf time without time zone,
    sus time without time zone,
    suf time without time zone,
    time_worked character varying(10),
    tolerance_time integer
);
 !   DROP TABLE "Employee".schedules;
       Employee         heap    postgres    false    10                       1259    102871    schedules_id_seq    SEQUENCE     }   CREATE SEQUENCE "Employee".schedules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE "Employee".schedules_id_seq;
       Employee          postgres    false    269    10            �           0    0    schedules_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "Employee".schedules_id_seq OWNED BY "Employee".schedules.id;
          Employee          postgres    false    270                       1259    102872    country    TABLE     W   CREATE TABLE "Fud".country (
    id bigint NOT NULL,
    name character varying(50)
);
    DROP TABLE "Fud".country;
       Fud         heap    postgres    false    11                       1259    102875    country_id_seq    SEQUENCE     v   CREATE SEQUENCE "Fud".country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE "Fud".country_id_seq;
       Fud          postgres    false    11    271            �           0    0    country_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE "Fud".country_id_seq OWNED BY "Fud".country.id;
          Fud          postgres    false    272                       1259    102876 	   packs_fud    TABLE     Q   CREATE TABLE "Fud".packs_fud (
    id smallint NOT NULL,
    description text
);
    DROP TABLE "Fud".packs_fud;
       Fud         heap    postgres    false    11            �           0    0    COLUMN packs_fud.id    COMMENT     y   COMMENT ON COLUMN "Fud".packs_fud.id IS 'This is the pack that the user need 0-free (user) 1-pack1, 2-pack 2, 3-pack 3';
          Fud          postgres    false    273                       1259    102881    session     TABLE     �   CREATE TABLE "Fud"."session " (
    sid character varying NOT NULL,
    sess json NOT NULL,
    expire timestamp(6) without time zone
);
    DROP TABLE "Fud"."session ";
       Fud         heap    postgres    false    11                       1259    102886    tokens    TABLE       CREATE TABLE "Fud".tokens (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    expiry_time timestamp without time zone DEFAULT (CURRENT_TIMESTAMP + '00:05:00'::interval) NOT NULL
);
    DROP TABLE "Fud".tokens;
       Fud         heap    postgres    false    11                       1259    102893    tokens_id_seq    SEQUENCE     u   CREATE SEQUENCE "Fud".tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE "Fud".tokens_id_seq;
       Fud          postgres    false    275    11            �           0    0    tokens_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE "Fud".tokens_id_seq OWNED BY "Fud".tokens.id;
          Fud          postgres    false    276                       1259    102894    users    TABLE     r  CREATE TABLE "Fud".users (
    id bigint NOT NULL,
    photo text,
    user_name character varying(200) NOT NULL,
    email character varying(100) NOT NULL,
    password text NOT NULL,
    first_name character varying(100) NOT NULL,
    second_name character varying(100),
    last_name character varying(100) NOT NULL,
    rol_user smallint DEFAULT 2 NOT NULL,
    id_packs_fud smallint,
    language character varying(5),
    pack_database smallint DEFAULT 0,
    pack_branch smallint DEFAULT 0,
    navbar_1 smallint DEFAULT 0,
    navbar_2 smallint,
    navbar_3 smallint,
    edit_branch boolean DEFAULT true NOT NULL
);
    DROP TABLE "Fud".users;
       Fud         heap    postgres    false    11            �           0    0    COLUMN users.rol_user    COMMENT     Y   COMMENT ON COLUMN "Fud".users.rol_user IS '0--customer,1--emplooyes,2--manager,3---CEO';
          Fud          postgres    false    277            �           0    0    COLUMN users.id_packs_fud    COMMENT        COMMENT ON COLUMN "Fud".users.id_packs_fud IS 'This is the pack that the user need 0-free (user) 1-pack1, 2-pack 2, 3-pack 3';
          Fud          postgres    false    277                       1259    102901    users_id_seq    SEQUENCE     t   CREATE SEQUENCE "Fud".users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE "Fud".users_id_seq;
       Fud          postgres    false    11    277            �           0    0    users_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE "Fud".users_id_seq OWNED BY "Fud".users.id;
          Fud          postgres    false    278                       1259    102902    dish_and_combo_features    TABLE     �  CREATE TABLE "Inventory".dish_and_combo_features (
    id bigint NOT NULL,
    id_companies bigint,
    id_branches bigint,
    id_dishes_and_combos bigint,
    price_1 double precision NOT NULL,
    revenue_1 double precision NOT NULL,
    price_2 double precision,
    revenue_2 double precision,
    price_3 double precision,
    revenue_3 double precision,
    favorites boolean,
    sat_key text,
    purchase_unit character varying(12) NOT NULL,
    existence double precision,
    amount double precision NOT NULL,
    product_cost double precision NOT NULL,
    id_providers bigint,
    is_product boolean DEFAULT false NOT NULL
);
 0   DROP TABLE "Inventory".dish_and_combo_features;
    	   Inventory         heap    postgres    false    12                       1259    102907    dish_and_combo_features_id_seq    SEQUENCE     �   CREATE SEQUENCE "Inventory".dish_and_combo_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE "Inventory".dish_and_combo_features_id_seq;
    	   Inventory          postgres    false    12    279            �           0    0    dish_and_combo_features_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE "Inventory".dish_and_combo_features_id_seq OWNED BY "Inventory".dish_and_combo_features.id;
       	   Inventory          postgres    false    280                       1259    102908    product_and_suppiles_features    TABLE     Z  CREATE TABLE "Inventory".product_and_suppiles_features (
    id bigint NOT NULL,
    id_branches bigint,
    sale_price double precision,
    max_inventary double precision,
    minimum_inventory double precision,
    existence double precision,
    purchase_amount double precision,
    purchase_price double precision,
    sale_amount double precision,
    id_products_and_supplies bigint,
    currency_purchase character varying(10),
    currency_sale character varying(10),
    unit_inventory character varying(10),
    purchase_unity character varying(10),
    sale_unity character varying(10)
);
 6   DROP TABLE "Inventory".product_and_suppiles_features;
    	   Inventory         heap    postgres    false    12                       1259    102911 $   product_and_suppiles_features_id_seq    SEQUENCE     �   CREATE SEQUENCE "Inventory".product_and_suppiles_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE "Inventory".product_and_suppiles_features_id_seq;
    	   Inventory          postgres    false    12    281            �           0    0 $   product_and_suppiles_features_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE "Inventory".product_and_suppiles_features_id_seq OWNED BY "Inventory".product_and_suppiles_features.id;
       	   Inventory          postgres    false    282                       1259    102912    table_supplies_dish    TABLE     �   CREATE TABLE "Inventory".table_supplies_dish (
    id bigint NOT NULL,
    id_dish_and_combo_features bigint,
    id_product_and_suppiles_features bigint,
    amount double precision,
    unity integer
);
 ,   DROP TABLE "Inventory".table_supplies_dish;
    	   Inventory         heap    postgres    false    12                       1259    102915    table_supplies_dish_id_seq    SEQUENCE     �   CREATE SEQUENCE "Inventory".table_supplies_dish_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE "Inventory".table_supplies_dish_id_seq;
    	   Inventory          postgres    false    12    283            �           0    0    table_supplies_dish_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "Inventory".table_supplies_dish_id_seq OWNED BY "Inventory".table_supplies_dish.id;
       	   Inventory          postgres    false    284                       1259    102916    table_taxes    TABLE     w   CREATE TABLE "Inventory".table_taxes (
    id bigint NOT NULL,
    id_taxes bigint,
    id_dishes_and_combos bigint
);
 $   DROP TABLE "Inventory".table_taxes;
    	   Inventory         heap    postgres    false    12                       1259    102919    table_taxes_id_seq    SEQUENCE     �   CREATE SEQUENCE "Inventory".table_taxes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE "Inventory".table_taxes_id_seq;
    	   Inventory          postgres    false    285    12            �           0    0    table_taxes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE "Inventory".table_taxes_id_seq OWNED BY "Inventory".table_taxes.id;
       	   Inventory          postgres    false    286                       1259    102920    taxes    TABLE     �   CREATE TABLE "Inventory".taxes (
    id bigint NOT NULL,
    name character varying(100),
    price_taxe double precision,
    local_taxe boolean,
    type_taxe integer,
    accounting_account text
);
    DROP TABLE "Inventory".taxes;
    	   Inventory         heap    postgres    false    12                        1259    102925    taxes_id_seq    SEQUENCE     z   CREATE SEQUENCE "Inventory".taxes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE "Inventory".taxes_id_seq;
    	   Inventory          postgres    false    287    12            �           0    0    taxes_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "Inventory".taxes_id_seq OWNED BY "Inventory".taxes.id;
       	   Inventory          postgres    false    288            !           1259    102926    dishes_and_combos    TABLE     )  CREATE TABLE "Kitchen".dishes_and_combos (
    id_companies bigint,
    img text,
    name character varying(100),
    description text,
    barcode text,
    id_product_department bigint,
    id_product_category bigint,
    id integer NOT NULL,
    is_a_product boolean DEFAULT false NOT NULL
);
 (   DROP TABLE "Kitchen".dishes_and_combos;
       Kitchen         heap    postgres    false    13            H           1259    112100    dishes_and_combos_id_seq    SEQUENCE     �   ALTER TABLE "Kitchen".dishes_and_combos ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "Kitchen".dishes_and_combos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            Kitchen          postgres    false    289    13            "           1259    102931     dishes_and_combos_id_serial_seq1    SEQUENCE     �   CREATE SEQUENCE "Kitchen".dishes_and_combos_id_serial_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE "Kitchen".dishes_and_combos_id_serial_seq1;
       Kitchen          postgres    false    13    289            �           0    0     dishes_and_combos_id_serial_seq1    SEQUENCE OWNED BY     c   ALTER SEQUENCE "Kitchen".dishes_and_combos_id_serial_seq1 OWNED BY "Kitchen".dishes_and_combos.id;
          Kitchen          postgres    false    290            #           1259    102932    product_category    TABLE     �   CREATE TABLE "Kitchen".product_category (
    id bigint NOT NULL,
    id_companies bigint,
    name character varying(100) NOT NULL,
    description text
);
 '   DROP TABLE "Kitchen".product_category;
       Kitchen         heap    postgres    false    13            $           1259    102937    product_category_id_seq    SEQUENCE     �   CREATE SEQUENCE "Kitchen".product_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE "Kitchen".product_category_id_seq;
       Kitchen          postgres    false    13    291                        0    0    product_category_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE "Kitchen".product_category_id_seq OWNED BY "Kitchen".product_category.id;
          Kitchen          postgres    false    292            %           1259    102938    product_department    TABLE     �   CREATE TABLE "Kitchen".product_department (
    id bigint NOT NULL,
    id_companies bigint,
    name character varying(100) NOT NULL,
    description text
);
 )   DROP TABLE "Kitchen".product_department;
       Kitchen         heap    postgres    false    13            &           1259    102943    product_department_id_seq    SEQUENCE     �   CREATE SEQUENCE "Kitchen".product_department_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "Kitchen".product_department_id_seq;
       Kitchen          postgres    false    293    13                       0    0    product_department_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "Kitchen".product_department_id_seq OWNED BY "Kitchen".product_department.id;
          Kitchen          postgres    false    294            '           1259    102944    products_and_supplies    TABLE       CREATE TABLE "Kitchen".products_and_supplies (
    id bigint NOT NULL,
    id_companies bigint,
    img text,
    barcode character varying(300) NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    use_inventory boolean,
    supplies boolean
);
 ,   DROP TABLE "Kitchen".products_and_supplies;
       Kitchen         heap    postgres    false    13            (           1259    102949    products_and_supplies_id_seq    SEQUENCE     �   CREATE SEQUENCE "Kitchen".products_and_supplies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE "Kitchen".products_and_supplies_id_seq;
       Kitchen          postgres    false    295    13                       0    0    products_and_supplies_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "Kitchen".products_and_supplies_id_seq OWNED BY "Kitchen".products_and_supplies.id;
          Kitchen          postgres    false    296            )           1259    102950    screen    TABLE     P   CREATE TABLE "Kitchen".screen (
    ip inet NOT NULL,
    id_branches bigint
);
    DROP TABLE "Kitchen".screen;
       Kitchen         heap    postgres    false    13            *           1259    102955    table_supplies_combo    TABLE     8  CREATE TABLE "Kitchen".table_supplies_combo (
    id bigint NOT NULL,
    id_dishes_and_combos bigint NOT NULL,
    id_products_and_supplies bigint NOT NULL,
    unity character varying(10),
    amount double precision,
    food_waste double precision DEFAULT 0,
    additional boolean DEFAULT false NOT NULL
);
 +   DROP TABLE "Kitchen".table_supplies_combo;
       Kitchen         heap    postgres    false    13            +           1259    102960    table_supplies_combo_id_seq    SEQUENCE     �   CREATE SEQUENCE "Kitchen".table_supplies_combo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE "Kitchen".table_supplies_combo_id_seq;
       Kitchen          postgres    false    298    13                       0    0    table_supplies_combo_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE "Kitchen".table_supplies_combo_id_seq OWNED BY "Kitchen".table_supplies_combo.id;
          Kitchen          postgres    false    299            ,           1259    102961    branch    TABLE     ;   CREATE TABLE "Settings".branch (
    id bigint NOT NULL
);
    DROP TABLE "Settings".branch;
       Settings         heap    postgres    false    14            -           1259    102964    company    TABLE     @   CREATE TABLE "Settings".company (
    color_company smallint
);
    DROP TABLE "Settings".company;
       Settings         heap    postgres    false    14            .           1259    102967 	   companies    TABLE     �  CREATE TABLE "User".companies (
    id bigint NOT NULL,
    id_users bigint,
    path_logo text,
    email_company character varying(100),
    alias character varying(100),
    description text,
    representative text,
    ceo text,
    id_country bigint,
    states text,
    municipality text,
    city text,
    cologne text,
    address character varying(50),
    num_int character varying(5),
    num_ext character varying(5),
    postal_code character varying(30),
    email character varying(100),
    cell_phone character varying(20),
    phone character varying(20),
    name character varying(100),
    pack_database bigint DEFAULT 0 NOT NULL,
    number_of_devices integer DEFAULT 1 NOT NULL
);
    DROP TABLE "User".companies;
       User         heap    postgres    false    15            /           1259    102973    companies_id_seq    SEQUENCE     y   CREATE SEQUENCE "User".companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE "User".companies_id_seq;
       User          postgres    false    15    302                       0    0    companies_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE "User".companies_id_seq OWNED BY "User".companies.id;
          User          postgres    false    303            0           1259    102974    subscription    TABLE     �   CREATE TABLE "User".subscription (
    id text NOT NULL,
    id_users bigint,
    id_companies bigint,
    id_branches bigint,
    id_packs_fud smallint,
    initial_date date,
    final_date date
);
     DROP TABLE "User".subscription;
       User         heap    postgres    false    15                       0    0     COLUMN subscription.id_packs_fud    COMMENT     �   COMMENT ON COLUMN "User".subscription.id_packs_fud IS 'This is the pack that the user need 0-free (user) 1-pack1, 2-pack 2, 3-pack 3';
          User          postgres    false    304            >           1259    103741    alumnos    TABLE     W   CREATE TABLE _company_1_branch_8.alumnos (
    id integer NOT NULL,
    nombre text
);
 (   DROP TABLE _company_1_branch_8.alumnos;
       _company_1_branch_8         heap    postgres    false    17            =           1259    103740    alumnos_id_seq    SEQUENCE     �   CREATE SEQUENCE _company_1_branch_8.alumnos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE _company_1_branch_8.alumnos_id_seq;
       _company_1_branch_8          postgres    false    17    318                       0    0    alumnos_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE _company_1_branch_8.alumnos_id_seq OWNED BY _company_1_branch_8.alumnos.id;
          _company_1_branch_8          postgres    false    317            <           1259    103730    apps    TABLE       CREATE TABLE _company_1_branch_8.apps (
    id text NOT NULL,
    id_company integer DEFAULT 1 NOT NULL,
    id_branch integer DEFAULT 8 NOT NULL,
    icon text,
    name character varying(20) NOT NULL,
    description text,
    labels text,
    code_table text NOT NULL
);
 %   DROP TABLE _company_1_branch_8.apps;
       _company_1_branch_8         heap    postgres    false    17            1           1259    102979    session    TABLE     �   CREATE TABLE public.session (
    sid character varying NOT NULL,
    sess json NOT NULL,
    expire timestamp(6) without time zone
);
    DROP TABLE public.session;
       public         heap    postgres    false            |           2604    102984    sales_history id    DEFAULT     r   ALTER TABLE ONLY "Box".sales_history ALTER COLUMN id SET DEFAULT nextval('"Box".sales_history_id_seq'::regclass);
 >   ALTER TABLE "Box".sales_history ALTER COLUMN id DROP DEFAULT;
       Box          postgres    false    231    230            }           2604    102985    Ad id    DEFAULT     f   ALTER TABLE ONLY "Branch"."Ad" ALTER COLUMN id SET DEFAULT nextval('"Branch"."Ad_id_seq"'::regclass);
 8   ALTER TABLE "Branch"."Ad" ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    233    232            ~           2604    102986    app id    DEFAULT     d   ALTER TABLE ONLY "Branch".app ALTER COLUMN id SET DEFAULT nextval('"Branch".app_id_seq'::regclass);
 7   ALTER TABLE "Branch".app ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    235    234            �           2604    102987    billing_information id    DEFAULT     �   ALTER TABLE ONLY "Branch".billing_information ALTER COLUMN id SET DEFAULT nextval('"Branch".billing_information_id_seq'::regclass);
 G   ALTER TABLE "Branch".billing_information ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    237    236            �           2604    102988    boxes id    DEFAULT     h   ALTER TABLE ONLY "Branch".boxes ALTER COLUMN id SET DEFAULT nextval('"Branch".boxes_id_seq'::regclass);
 9   ALTER TABLE "Branch".boxes ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    239    238            �           2604    102989    commanders id    DEFAULT     r   ALTER TABLE ONLY "Branch".commanders ALTER COLUMN id SET DEFAULT nextval('"Branch".commanders_id_seq'::regclass);
 >   ALTER TABLE "Branch".commanders ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    241    240            �           2604    102990    managers id    DEFAULT     n   ALTER TABLE ONLY "Branch".managers ALTER COLUMN id SET DEFAULT nextval('"Branch".managers_id_seq'::regclass);
 <   ALTER TABLE "Branch".managers ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    244    243            �           2604    102991    order id    DEFAULT     j   ALTER TABLE ONLY "Branch"."order" ALTER COLUMN id SET DEFAULT nextval('"Branch".order_id_seq'::regclass);
 ;   ALTER TABLE "Branch"."order" ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    246    245            �           2604    102992    pack_reservation id    DEFAULT     ~   ALTER TABLE ONLY "Branch".pack_reservation ALTER COLUMN id SET DEFAULT nextval('"Branch".pack_reservation_id_seq'::regclass);
 D   ALTER TABLE "Branch".pack_reservation ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    248    247            �           2604    102993    providers id    DEFAULT     p   ALTER TABLE ONLY "Branch".providers ALTER COLUMN id SET DEFAULT nextval('"Branch".providers_id_seq'::regclass);
 =   ALTER TABLE "Branch".providers ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    250    249            �           2604    102994    reservation id    DEFAULT     t   ALTER TABLE ONLY "Branch".reservation ALTER COLUMN id SET DEFAULT nextval('"Branch".reservation_id_seq'::regclass);
 ?   ALTER TABLE "Branch".reservation ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    252    251            �           2604    102995    restaurant_area id    DEFAULT     |   ALTER TABLE ONLY "Branch".restaurant_area ALTER COLUMN id SET DEFAULT nextval('"Branch".restaurant_area_id_seq'::regclass);
 C   ALTER TABLE "Branch".restaurant_area ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    254    253            �           2604    102996 	   tables id    DEFAULT     j   ALTER TABLE ONLY "Branch".tables ALTER COLUMN id SET DEFAULT nextval('"Branch".tables_id_seq'::regclass);
 :   ALTER TABLE "Branch".tables ALTER COLUMN id DROP DEFAULT;
       Branch          postgres    false    256    255                       2604    103593    appointment id    DEFAULT     n   ALTER TABLE ONLY "CRM".appointment ALTER COLUMN id SET DEFAULT nextval('"CRM".appointment_id_seq'::regclass);
 <   ALTER TABLE "CRM".appointment ALTER COLUMN id DROP DEFAULT;
       CRM          postgres    false    312    313    313                       2604    111970    history_prospects id    DEFAULT     z   ALTER TABLE ONLY "CRM".history_prospects ALTER COLUMN id SET DEFAULT nextval('"CRM".history_prospects_id_seq'::regclass);
 B   ALTER TABLE "CRM".history_prospects ALTER COLUMN id DROP DEFAULT;
       CRM          postgres    false    320    319    320                       2604    103577    product_to_sell id    DEFAULT     v   ALTER TABLE ONLY "CRM".product_to_sell ALTER COLUMN id SET DEFAULT nextval('"CRM".product_to_sell_id_seq'::regclass);
 @   ALTER TABLE "CRM".product_to_sell ALTER COLUMN id DROP DEFAULT;
       CRM          postgres    false    309    308    309                       2604    103602    prospects id    DEFAULT     j   ALTER TABLE ONLY "CRM".prospects ALTER COLUMN id SET DEFAULT nextval('"CRM".prospects_id_seq'::regclass);
 :   ALTER TABLE "CRM".prospects ALTER COLUMN id DROP DEFAULT;
       CRM          postgres    false    314    315    315                        2604    103569    sales_stage id    DEFAULT     n   ALTER TABLE ONLY "CRM".sales_stage ALTER COLUMN id SET DEFAULT nextval('"CRM".sales_stage_id_seq'::regclass);
 <   ALTER TABLE "CRM".sales_stage ALTER COLUMN id DROP DEFAULT;
       CRM          postgres    false    306    307    307                       2604    103585    sales_team id    DEFAULT     l   ALTER TABLE ONLY "CRM".sales_team ALTER COLUMN id SET DEFAULT nextval('"CRM".sales_team_id_seq'::regclass);
 ;   ALTER TABLE "CRM".sales_team ALTER COLUMN id DROP DEFAULT;
       CRM          postgres    false    310    311    311                       2604    111991    chats id_chat    DEFAULT     n   ALTER TABLE ONLY "Chat".chats ALTER COLUMN id_chat SET DEFAULT nextval('"Chat".chats_id_chat_seq'::regclass);
 <   ALTER TABLE "Chat".chats ALTER COLUMN id_chat DROP DEFAULT;
       Chat          postgres    false    322    321    322                       2604    112034    message_status id_status    DEFAULT     �   ALTER TABLE ONLY "Chat".message_status ALTER COLUMN id_status SET DEFAULT nextval('"Chat".message_status_id_status_seq'::regclass);
 G   ALTER TABLE "Chat".message_status ALTER COLUMN id_status DROP DEFAULT;
       Chat          postgres    false    327    326    327                       2604    112014    messages id_message    DEFAULT     z   ALTER TABLE ONLY "Chat".messages ALTER COLUMN id_message SET DEFAULT nextval('"Chat".messages_id_message_seq'::regclass);
 B   ALTER TABLE "Chat".messages ALTER COLUMN id_message DROP DEFAULT;
       Chat          postgres    false    325    324    325            �           2604    102997    branches id    DEFAULT     p   ALTER TABLE ONLY "Company".branches ALTER COLUMN id SET DEFAULT nextval('"Company".branches_id_seq'::regclass);
 =   ALTER TABLE "Company".branches ALTER COLUMN id DROP DEFAULT;
       Company          postgres    false    258    257            �           2604    102998    customers id    DEFAULT     r   ALTER TABLE ONLY "Company".customers ALTER COLUMN id SET DEFAULT nextval('"Company".customers_id_seq'::regclass);
 >   ALTER TABLE "Company".customers ALTER COLUMN id DROP DEFAULT;
       Company          postgres    false    260    259            �           2604    102999    employees id    DEFAULT     r   ALTER TABLE ONLY "Company".employees ALTER COLUMN id SET DEFAULT nextval('"Company".employees_id_seq'::regclass);
 >   ALTER TABLE "Company".employees ALTER COLUMN id DROP DEFAULT;
       Company          postgres    false    262    261            �           2604    103000    departments_employees id    DEFAULT     �   ALTER TABLE ONLY "Employee".departments_employees ALTER COLUMN id SET DEFAULT nextval('"Employee".departments_employees_id_seq'::regclass);
 K   ALTER TABLE "Employee".departments_employees ALTER COLUMN id DROP DEFAULT;
       Employee          postgres    false    264    263            �           2604    103001    history_schedules id    DEFAULT     �   ALTER TABLE ONLY "Employee".history_schedules ALTER COLUMN id SET DEFAULT nextval('"Employee".history_schedules_id_seq'::regclass);
 G   ALTER TABLE "Employee".history_schedules ALTER COLUMN id DROP DEFAULT;
       Employee          postgres    false    266    265            �           2604    103002    roles_employees id    DEFAULT     �   ALTER TABLE ONLY "Employee".roles_employees ALTER COLUMN id SET DEFAULT nextval('"Employee".roles_employees_id_seq'::regclass);
 E   ALTER TABLE "Employee".roles_employees ALTER COLUMN id DROP DEFAULT;
       Employee          postgres    false    268    267            �           2604    103003    schedules id    DEFAULT     t   ALTER TABLE ONLY "Employee".schedules ALTER COLUMN id SET DEFAULT nextval('"Employee".schedules_id_seq'::regclass);
 ?   ALTER TABLE "Employee".schedules ALTER COLUMN id DROP DEFAULT;
       Employee          postgres    false    270    269            �           2604    103004 
   country id    DEFAULT     f   ALTER TABLE ONLY "Fud".country ALTER COLUMN id SET DEFAULT nextval('"Fud".country_id_seq'::regclass);
 8   ALTER TABLE "Fud".country ALTER COLUMN id DROP DEFAULT;
       Fud          postgres    false    272    271            �           2604    103005 	   tokens id    DEFAULT     d   ALTER TABLE ONLY "Fud".tokens ALTER COLUMN id SET DEFAULT nextval('"Fud".tokens_id_seq'::regclass);
 7   ALTER TABLE "Fud".tokens ALTER COLUMN id DROP DEFAULT;
       Fud          postgres    false    276    275            �           2604    103006    users id    DEFAULT     b   ALTER TABLE ONLY "Fud".users ALTER COLUMN id SET DEFAULT nextval('"Fud".users_id_seq'::regclass);
 6   ALTER TABLE "Fud".users ALTER COLUMN id DROP DEFAULT;
       Fud          postgres    false    278    277            �           2604    103007    dish_and_combo_features id    DEFAULT     �   ALTER TABLE ONLY "Inventory".dish_and_combo_features ALTER COLUMN id SET DEFAULT nextval('"Inventory".dish_and_combo_features_id_seq'::regclass);
 N   ALTER TABLE "Inventory".dish_and_combo_features ALTER COLUMN id DROP DEFAULT;
    	   Inventory          postgres    false    280    279            �           2604    103008     product_and_suppiles_features id    DEFAULT     �   ALTER TABLE ONLY "Inventory".product_and_suppiles_features ALTER COLUMN id SET DEFAULT nextval('"Inventory".product_and_suppiles_features_id_seq'::regclass);
 T   ALTER TABLE "Inventory".product_and_suppiles_features ALTER COLUMN id DROP DEFAULT;
    	   Inventory          postgres    false    282    281            �           2604    103009    table_supplies_dish id    DEFAULT     �   ALTER TABLE ONLY "Inventory".table_supplies_dish ALTER COLUMN id SET DEFAULT nextval('"Inventory".table_supplies_dish_id_seq'::regclass);
 J   ALTER TABLE "Inventory".table_supplies_dish ALTER COLUMN id DROP DEFAULT;
    	   Inventory          postgres    false    284    283            �           2604    103010    table_taxes id    DEFAULT     z   ALTER TABLE ONLY "Inventory".table_taxes ALTER COLUMN id SET DEFAULT nextval('"Inventory".table_taxes_id_seq'::regclass);
 B   ALTER TABLE "Inventory".table_taxes ALTER COLUMN id DROP DEFAULT;
    	   Inventory          postgres    false    286    285            �           2604    103011    taxes id    DEFAULT     n   ALTER TABLE ONLY "Inventory".taxes ALTER COLUMN id SET DEFAULT nextval('"Inventory".taxes_id_seq'::regclass);
 <   ALTER TABLE "Inventory".taxes ALTER COLUMN id DROP DEFAULT;
    	   Inventory          postgres    false    288    287            �           2604    103013    product_category id    DEFAULT     �   ALTER TABLE ONLY "Kitchen".product_category ALTER COLUMN id SET DEFAULT nextval('"Kitchen".product_category_id_seq'::regclass);
 E   ALTER TABLE "Kitchen".product_category ALTER COLUMN id DROP DEFAULT;
       Kitchen          postgres    false    292    291            �           2604    103014    product_department id    DEFAULT     �   ALTER TABLE ONLY "Kitchen".product_department ALTER COLUMN id SET DEFAULT nextval('"Kitchen".product_department_id_seq'::regclass);
 G   ALTER TABLE "Kitchen".product_department ALTER COLUMN id DROP DEFAULT;
       Kitchen          postgres    false    294    293            �           2604    103015    products_and_supplies id    DEFAULT     �   ALTER TABLE ONLY "Kitchen".products_and_supplies ALTER COLUMN id SET DEFAULT nextval('"Kitchen".products_and_supplies_id_seq'::regclass);
 J   ALTER TABLE "Kitchen".products_and_supplies ALTER COLUMN id DROP DEFAULT;
       Kitchen          postgres    false    296    295            �           2604    103016    table_supplies_combo id    DEFAULT     �   ALTER TABLE ONLY "Kitchen".table_supplies_combo ALTER COLUMN id SET DEFAULT nextval('"Kitchen".table_supplies_combo_id_seq'::regclass);
 I   ALTER TABLE "Kitchen".table_supplies_combo ALTER COLUMN id DROP DEFAULT;
       Kitchen          postgres    false    299    298            �           2604    103017    companies id    DEFAULT     l   ALTER TABLE ONLY "User".companies ALTER COLUMN id SET DEFAULT nextval('"User".companies_id_seq'::regclass);
 ;   ALTER TABLE "User".companies ALTER COLUMN id DROP DEFAULT;
       User          postgres    false    303    302                       2604    103744 
   alumnos id    DEFAULT     �   ALTER TABLE ONLY _company_1_branch_8.alumnos ALTER COLUMN id SET DEFAULT nextval('_company_1_branch_8.alumnos_id_seq'::regclass);
 F   ALTER TABLE _company_1_branch_8.alumnos ALTER COLUMN id DROP DEFAULT;
       _company_1_branch_8          postgres    false    318    317    318            k          0    102678    boxes_history 
   TABLE DATA           j   COPY "Box".boxes_history (id, initial_date, finish_date, id_branches, id_employees, id_boxes) FROM stdin;
    Box          postgres    false    227   �f      m          0    102682    movement_history 
   TABLE DATA           l   COPY "Box".movement_history (id, id_branches, id_boxes, id_employees, move, comment, date_move) FROM stdin;
    Box          postgres    false    229   �f      n          0    102688    sales_history 
   TABLE DATA           �   COPY "Box".sales_history (id, id_companies, id_branches, id_employees, id_customers, id_dishes_and_combos, price, amount, total, comment, sale_day) FROM stdin;
    Box          postgres    false    230   �g      p          0    102694    Ad 
   TABLE DATA           I   COPY "Branch"."Ad" (id, id_branches, img, type, description) FROM stdin;
    Branch          postgres    false    232   �g      r          0    102700    app 
   TABLE DATA             COPY "Branch".app (id, id_branches, id_stripe_new_terminal, expiration_date_new_terminal, id_stripe_website_creation, expiration_date_website_creation, id_stripe_digital_menu, expiration_date_digital_menu, id_stripe_employee_schedules, expiration_date_employee_schedules) FROM stdin;
    Branch          postgres    false    234    m      t          0    102710    billing_information 
   TABLE DATA           �   COPY "Branch".billing_information (id, id_providers, addres, postal_code, rfc, curp, business_name, business_phone, business_cell_phone) FROM stdin;
    Branch          postgres    false    236   m      v          0    102716    boxes 
   TABLE DATA           G   COPY "Branch".boxes (id, id_branches, num_box, ip_printer) FROM stdin;
    Branch          postgres    false    238   :m      x          0    102720 
   commanders 
   TABLE DATA           �   COPY "Branch".commanders (id, id_branches, id_employees, id_customers, total, money_received, change, status, comentary, commander_date, order_details) FROM stdin;
    Branch          postgres    false    240   �m      z          0    102726    facture 
   TABLE DATA           	  COPY "Branch".facture ("Invoice Number", id_companies, id_branches, id_employees, id_customers, id_commanders, name_customer, email_customer, address, transition_type, payment_reference, creation_date, payment_date, type_of_documentation, status, paid) FROM stdin;
    Branch          postgres    false    242   v      {          0    102733    managers 
   TABLE DATA           C   COPY "Branch".managers (id, id_branches, id_employees) FROM stdin;
    Branch          postgres    false    243   "v      }          0    102737    order 
   TABLE DATA           �   COPY "Branch"."order" (id, id_branches, id_commanders, id_employees, name_customer, cellphone, phone, address, comment, status) FROM stdin;
    Branch          postgres    false    245   ?v                0    102744    pack_reservation 
   TABLE DATA           �   COPY "Branch".pack_reservation (id, name, description, number_of_adult, number_of_children, price_for_children, price_for_adult, id_branches) FROM stdin;
    Branch          postgres    false    247   !w      �          0    102750 	   providers 
   TABLE DATA           @  COPY "Branch".providers (id, id_branches, name, representative, cell_phone, phone, email, credit_limit, credit_days, comment, business_name, business_address, business_rfc, business_curp, business_postal_code, business_phone, business_cell_phone, website, rfc, curp, category, type, business_representative) FROM stdin;
    Branch          postgres    false    249   >w      �          0    102756    reservation 
   TABLE DATA           �   COPY "Branch".reservation (id, id_branches, id_tables, id_pack_reservation, customer_name, customer_phone, customer_email, reservation_date, reservation_time, reason, number_of_adult, number_of_children, commentary, status) FROM stdin;
    Branch          postgres    false    251   x      �          0    102762    restaurant_area 
   TABLE DATA           V   COPY "Branch".restaurant_area (id, id_branches, name, description, floor) FROM stdin;
    Branch          postgres    false    253   7x      �          0    102768    tables 
   TABLE DATA           j   COPY "Branch".tables (id, id_branches, id_restaurant_area, name, table_number, num_customers) FROM stdin;
    Branch          postgres    false    255   Tx      �          0    103590    appointment 
   TABLE DATA           �   COPY "CRM".appointment (id, id_prospects, location, notes, affair, meeting_date, duration_in_minutes, id_companies, id_branches, id_employees, end_date, color) FROM stdin;
    CRM          postgres    false    313   qx      �          0    111967    history_prospects 
   TABLE DATA           d   COPY "CRM".history_prospects (id, id_prospects, id_users, comment, link, creation_date) FROM stdin;
    CRM          postgres    false    320   �y      �          0    103574    product_to_sell 
   TABLE DATA           G   COPY "CRM".product_to_sell (id, name, color, id_companies) FROM stdin;
    CRM          postgres    false    309   �|      �          0    103599 	   prospects 
   TABLE DATA           �  COPY "CRM".prospects (id, name, email, estimated_income, probability, cellphone, phone, grades, planned_closure, creation_date, company_name, address, website, contact_name, company_cellphone, company_phone, priority, color, id_employees, id_product_to_sell, id_sales_team, id_sales_stage, id_companies, id_branches, type_customer, expected_closing_percentage, category, salesrep, notes) FROM stdin;
    CRM          postgres    false    315   �|      �          0    103566    sales_stage 
   TABLE DATA           H   COPY "CRM".sales_stage (id, name, "position", id_companies) FROM stdin;
    CRM          postgres    false    307   ��      �          0    103582 
   sales_team 
   TABLE DATA           G   COPY "CRM".sales_team (id, name, commission, id_companies) FROM stdin;
    CRM          postgres    false    311   T�      �          0    111988    chats 
   TABLE DATA           Y   COPY "Chat".chats (id_chat, chat_name, created_at, user_one_id, user_two_id) FROM stdin;
    Chat          postgres    false    322   ��      �          0    112031    message_status 
   TABLE DATA           Z   COPY "Chat".message_status (id_status, message_id, user_id, is_read, read_at) FROM stdin;
    Chat          postgres    false    327   ��      �          0    112011    messages 
   TABLE DATA           R   COPY "Chat".messages (id_message, chat_id, user_id, content, sent_at) FROM stdin;
    Chat          postgres    false    325   ��      �          0    111995 
   user_chats 
   TABLE DATA           6   COPY "Chat".user_chats (user_id, chat_id) FROM stdin;
    Chat          postgres    false    323   [�      �          0    102773    branches 
   TABLE DATA           '  COPY "Company".branches (id, id_companies, name_branch, alias, representative, id_country, municipality, city, cologne, address, num_ext, num_int, postal_code, email_branch, cell_phone, phone, pack_branch, token_uber, token_rappi, website_creation, digital_menu, employee_schedules) FROM stdin;
    Company          postgres    false    257   x�      �          0    102783 	   customers 
   TABLE DATA           0  COPY "Company".customers (id, id_companies, first_name, second_name, last_name, id_country, states, city, street, num_ext, num_int, postal_code, email, phone, cell_phone, points, birthday, company_name, company_address, website, contact_name, company_cellphone, company_phone, type_customer) FROM stdin;
    Company          postgres    false    259   �      �          0    102789 	   employees 
   TABLE DATA           �   COPY "Company".employees (id, id_companies, id_users, id_roles_employees, id_departments_employees, id_branches, city, street, num_ext, num_int, id_country, phone, cell_phone, nip) FROM stdin;
    Company          postgres    false    261   q�      �          0    102794    departments_employees 
   TABLE DATA           e   COPY "Employee".departments_employees (id, id_companies, description, name_departaments) FROM stdin;
    Employee          postgres    false    263   �      �          0    102800    history_schedules 
   TABLE DATA           u   COPY "Employee".history_schedules (id, id_branches, id_employees, id_schedules, date_finish, date_start) FROM stdin;
    Employee          postgres    false    265   ��      �          0    102804    roles_employees 
   TABLE DATA           ^  COPY "Employee".roles_employees (id, id_companies, name_role, commissions, salary, discount_for_product, add_box, edit_box, delete_box, create_reservation, view_reservation, view_reports, add_customer, edit_customer, delete_customer, cancel_debt, offer_loan, get_fertilizer, view_customer_credits, send_email, add_employee, edit_employee, delete_employee, create_schedule, assign_schedule, view_schedule, create_type_user, create_employee_department, view_sale_history, delete_sale_history, view_movement_history, delete_movement_history, view_supplies, add_supplies, edit_supplies, delete_supplies, view_products, edit_products, delete_products, view_combo, add_combo, edit_combo, delete_combo, view_food_departament, add_food_departament, edit_food_departament, delete_food_departament, view_food_category, add_food_category, edit_food_category, delete_food_category, waste_report, add_provider, edit_provider, delete_provider, view_provider, sell, apply_discount, apply_returns, add_offers, edit_offers, delete_offers, change_coins, modify_hardware, modify_hardware_kitchen, give_permissions, currency, type_of_salary, app_point_sales, view_inventory, edit_inventory, employee_roles, edit_rol_employee, delete_rol_employee, employee_department, edit_employee_department, delete_employee_department, add_employee_roles, add_employee_department, view_employee) FROM stdin;
    Employee          postgres    false    267   ��      �          0    102868 	   schedules 
   TABLE DATA           �   COPY "Employee".schedules (id, id_branches, color, name, monday, tuesday, wednesday, thursday, friday, saturday, sunday, ms, mf, ts, tf, ws, wf, ths, thf, fs, ff, sas, saf, sus, suf, time_worked, tolerance_time) FROM stdin;
    Employee          postgres    false    269   ��      �          0    102872    country 
   TABLE DATA           *   COPY "Fud".country (id, name) FROM stdin;
    Fud          postgres    false    271   k�      �          0    102876 	   packs_fud 
   TABLE DATA           3   COPY "Fud".packs_fud (id, description) FROM stdin;
    Fud          postgres    false    273   ~�      �          0    102881    session  
   TABLE DATA           6   COPY "Fud"."session " (sid, sess, expire) FROM stdin;
    Fud          postgres    false    274   �      �          0    102886    tokens 
   TABLE DATA           L   COPY "Fud".tokens (id, user_id, token, created_at, expiry_time) FROM stdin;
    Fud          postgres    false    275   �      �          0    102894    users 
   TABLE DATA           �   COPY "Fud".users (id, photo, user_name, email, password, first_name, second_name, last_name, rol_user, id_packs_fud, language, pack_database, pack_branch, navbar_1, navbar_2, navbar_3, edit_branch) FROM stdin;
    Fud          postgres    false    277   ї      �          0    102902    dish_and_combo_features 
   TABLE DATA             COPY "Inventory".dish_and_combo_features (id, id_companies, id_branches, id_dishes_and_combos, price_1, revenue_1, price_2, revenue_2, price_3, revenue_3, favorites, sat_key, purchase_unit, existence, amount, product_cost, id_providers, is_product) FROM stdin;
 	   Inventory          postgres    false    279   �      �          0    102908    product_and_suppiles_features 
   TABLE DATA             COPY "Inventory".product_and_suppiles_features (id, id_branches, sale_price, max_inventary, minimum_inventory, existence, purchase_amount, purchase_price, sale_amount, id_products_and_supplies, currency_purchase, currency_sale, unit_inventory, purchase_unity, sale_unity) FROM stdin;
 	   Inventory          postgres    false    281   0�      �          0    102912    table_supplies_dish 
   TABLE DATA           �   COPY "Inventory".table_supplies_dish (id, id_dish_and_combo_features, id_product_and_suppiles_features, amount, unity) FROM stdin;
 	   Inventory          postgres    false    283   r�      �          0    102916    table_taxes 
   TABLE DATA           N   COPY "Inventory".table_taxes (id, id_taxes, id_dishes_and_combos) FROM stdin;
 	   Inventory          postgres    false    285   ��      �          0    102920    taxes 
   TABLE DATA           e   COPY "Inventory".taxes (id, name, price_taxe, local_taxe, type_taxe, accounting_account) FROM stdin;
 	   Inventory          postgres    false    287   ��      �          0    102926    dishes_and_combos 
   TABLE DATA           �   COPY "Kitchen".dishes_and_combos (id_companies, img, name, description, barcode, id_product_department, id_product_category, id, is_a_product) FROM stdin;
    Kitchen          postgres    false    289   ɠ      �          0    102932    product_category 
   TABLE DATA           R   COPY "Kitchen".product_category (id, id_companies, name, description) FROM stdin;
    Kitchen          postgres    false    291   
�      �          0    102938    product_department 
   TABLE DATA           T   COPY "Kitchen".product_department (id, id_companies, name, description) FROM stdin;
    Kitchen          postgres    false    293   ��      �          0    102944    products_and_supplies 
   TABLE DATA           ~   COPY "Kitchen".products_and_supplies (id, id_companies, img, barcode, name, description, use_inventory, supplies) FROM stdin;
    Kitchen          postgres    false    295   �      �          0    102950    screen 
   TABLE DATA           4   COPY "Kitchen".screen (ip, id_branches) FROM stdin;
    Kitchen          postgres    false    297   ��      �          0    102955    table_supplies_combo 
   TABLE DATA           �   COPY "Kitchen".table_supplies_combo (id, id_dishes_and_combos, id_products_and_supplies, unity, amount, food_waste, additional) FROM stdin;
    Kitchen          postgres    false    298   ��      �          0    102961    branch 
   TABLE DATA           (   COPY "Settings".branch (id) FROM stdin;
    Settings          postgres    false    300   �      �          0    102964    company 
   TABLE DATA           4   COPY "Settings".company (color_company) FROM stdin;
    Settings          postgres    false    301   �      �          0    102967 	   companies 
   TABLE DATA             COPY "User".companies (id, id_users, path_logo, email_company, alias, description, representative, ceo, id_country, states, municipality, city, cologne, address, num_int, num_ext, postal_code, email, cell_phone, phone, name, pack_database, number_of_devices) FROM stdin;
    User          postgres    false    302   ,�      �          0    102974    subscription 
   TABLE DATA           w   COPY "User".subscription (id, id_users, id_companies, id_branches, id_packs_fud, initial_date, final_date) FROM stdin;
    User          postgres    false    304   ��      �          0    103741    alumnos 
   TABLE DATA           :   COPY _company_1_branch_8.alumnos (id, nombre) FROM stdin;
    _company_1_branch_8          postgres    false    318   �      �          0    103730    apps 
   TABLE DATA           s   COPY _company_1_branch_8.apps (id, id_company, id_branch, icon, name, description, labels, code_table) FROM stdin;
    _company_1_branch_8          postgres    false    316   �      �          0    102979    session 
   TABLE DATA           4   COPY public.session (sid, sess, expire) FROM stdin;
    public          postgres    false    305   ר                 0    0    movement_history_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"Box".movement_history_id_seq', 8, true);
          Box          postgres    false    228                       0    0    sales_history_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"Box".sales_history_id_seq', 182, true);
          Box          postgres    false    231            	           0    0 	   Ad_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('"Branch"."Ad_id_seq"', 86, true);
          Branch          postgres    false    233            
           0    0 
   app_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('"Branch".app_id_seq', 1, false);
          Branch          postgres    false    235                       0    0    billing_information_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"Branch".billing_information_id_seq', 1, false);
          Branch          postgres    false    237                       0    0    boxes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('"Branch".boxes_id_seq', 13, true);
          Branch          postgres    false    239                       0    0    commanders_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"Branch".commanders_id_seq', 154, true);
          Branch          postgres    false    241                       0    0    managers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"Branch".managers_id_seq', 1, false);
          Branch          postgres    false    244                       0    0    order_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('"Branch".order_id_seq', 17, true);
          Branch          postgres    false    246                       0    0    pack_reservation_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"Branch".pack_reservation_id_seq', 1, false);
          Branch          postgres    false    248                       0    0    providers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"Branch".providers_id_seq', 6, true);
          Branch          postgres    false    250                       0    0    reservation_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"Branch".reservation_id_seq', 1, false);
          Branch          postgres    false    252                       0    0    restaurant_area_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"Branch".restaurant_area_id_seq', 1, false);
          Branch          postgres    false    254                       0    0    tables_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('"Branch".tables_id_seq', 1, false);
          Branch          postgres    false    256                       0    0    appointment_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"CRM".appointment_id_seq', 23, true);
          CRM          postgres    false    312                       0    0    history_prospects_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"CRM".history_prospects_id_seq', 44, true);
          CRM          postgres    false    319                       0    0    product_to_sell_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"CRM".product_to_sell_id_seq', 1, true);
          CRM          postgres    false    308                       0    0    prospects_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('"CRM".prospects_id_seq', 11, true);
          CRM          postgres    false    314                       0    0    sales_stage_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"CRM".sales_stage_id_seq', 10, true);
          CRM          postgres    false    306                       0    0    sales_team_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('"CRM".sales_team_id_seq', 1, true);
          CRM          postgres    false    310                       0    0    chats_id_chat_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"Chat".chats_id_chat_seq', 19, true);
          Chat          postgres    false    321                       0    0    message_status_id_status_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"Chat".message_status_id_status_seq', 42, true);
          Chat          postgres    false    326                       0    0    messages_id_message_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"Chat".messages_id_message_seq', 48, true);
          Chat          postgres    false    324                       0    0    branches_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"Company".branches_id_seq', 44, true);
          Company          postgres    false    258                       0    0    customers_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"Company".customers_id_seq', 6, true);
          Company          postgres    false    260                        0    0    employees_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"Company".employees_id_seq', 78, true);
          Company          postgres    false    262            !           0    0    departments_employees_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('"Employee".departments_employees_id_seq', 31, true);
          Employee          postgres    false    264            "           0    0    history_schedules_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"Employee".history_schedules_id_seq', 86, true);
          Employee          postgres    false    266            #           0    0    roles_employees_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"Employee".roles_employees_id_seq', 36, true);
          Employee          postgres    false    268            $           0    0    schedules_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"Employee".schedules_id_seq', 7, true);
          Employee          postgres    false    270            %           0    0    country_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('"Fud".country_id_seq', 197, true);
          Fud          postgres    false    272            &           0    0    tokens_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('"Fud".tokens_id_seq', 58, true);
          Fud          postgres    false    276            '           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('"Fud".users_id_seq', 127, true);
          Fud          postgres    false    278            (           0    0    dish_and_combo_features_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"Inventory".dish_and_combo_features_id_seq', 110, true);
       	   Inventory          postgres    false    280            )           0    0 $   product_and_suppiles_features_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('"Inventory".product_and_suppiles_features_id_seq', 156, true);
       	   Inventory          postgres    false    282            *           0    0    table_supplies_dish_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"Inventory".table_supplies_dish_id_seq', 1, false);
       	   Inventory          postgres    false    284            +           0    0    table_taxes_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"Inventory".table_taxes_id_seq', 1, false);
       	   Inventory          postgres    false    286            ,           0    0    taxes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"Inventory".taxes_id_seq', 1, false);
       	   Inventory          postgres    false    288            -           0    0    dishes_and_combos_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"Kitchen".dishes_and_combos_id_seq', 2, true);
          Kitchen          postgres    false    328            .           0    0     dishes_and_combos_id_serial_seq1    SEQUENCE SET     R   SELECT pg_catalog.setval('"Kitchen".dishes_and_combos_id_serial_seq1', 77, true);
          Kitchen          postgres    false    290            /           0    0    product_category_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"Kitchen".product_category_id_seq', 9, true);
          Kitchen          postgres    false    292            0           0    0    product_department_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"Kitchen".product_department_id_seq', 11, true);
          Kitchen          postgres    false    294            1           0    0    products_and_supplies_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('"Kitchen".products_and_supplies_id_seq', 147, true);
          Kitchen          postgres    false    296            2           0    0    table_supplies_combo_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"Kitchen".table_supplies_combo_id_seq', 490, true);
          Kitchen          postgres    false    299            3           0    0    companies_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"User".companies_id_seq', 41, true);
          User          postgres    false    303            4           0    0    alumnos_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('_company_1_branch_8.alumnos_id_seq', 1, false);
          _company_1_branch_8          postgres    false    317                       2606    103019    boxes_history key_boxes_history 
   CONSTRAINT     \   ALTER TABLE ONLY "Box".boxes_history
    ADD CONSTRAINT key_boxes_history PRIMARY KEY (id);
 H   ALTER TABLE ONLY "Box".boxes_history DROP CONSTRAINT key_boxes_history;
       Box            postgres    false    227                       2606    103021 %   movement_history key_movement_history 
   CONSTRAINT     b   ALTER TABLE ONLY "Box".movement_history
    ADD CONSTRAINT key_movement_history PRIMARY KEY (id);
 N   ALTER TABLE ONLY "Box".movement_history DROP CONSTRAINT key_movement_history;
       Box            postgres    false    229                       2606    103023    sales_history key_sales_history 
   CONSTRAINT     \   ALTER TABLE ONLY "Box".sales_history
    ADD CONSTRAINT key_sales_history PRIMARY KEY (id);
 H   ALTER TABLE ONLY "Box".sales_history DROP CONSTRAINT key_sales_history;
       Box            postgres    false    230            "           2606    103025 *   billing_information billing_information_uq 
   CONSTRAINT     o   ALTER TABLE ONLY "Branch".billing_information
    ADD CONSTRAINT billing_information_uq UNIQUE (id_providers);
 V   ALTER TABLE ONLY "Branch".billing_information DROP CONSTRAINT billing_information_uq;
       Branch            postgres    false    236                        2606    103027    app id_key_app 
   CONSTRAINT     N   ALTER TABLE ONLY "Branch".app
    ADD CONSTRAINT id_key_app PRIMARY KEY (id);
 :   ALTER TABLE ONLY "Branch".app DROP CONSTRAINT id_key_app;
       Branch            postgres    false    234            *           2606    103029    facture id_key_facture 
   CONSTRAINT     d   ALTER TABLE ONLY "Branch".facture
    ADD CONSTRAINT id_key_facture PRIMARY KEY ("Invoice Number");
 B   ALTER TABLE ONLY "Branch".facture DROP CONSTRAINT id_key_facture;
       Branch            postgres    false    242                       2606    103031 	   Ad key_ad 
   CONSTRAINT     K   ALTER TABLE ONLY "Branch"."Ad"
    ADD CONSTRAINT key_ad PRIMARY KEY (id);
 7   ALTER TABLE ONLY "Branch"."Ad" DROP CONSTRAINT key_ad;
       Branch            postgres    false    232            $           2606    103033 +   billing_information key_billing_information 
   CONSTRAINT     k   ALTER TABLE ONLY "Branch".billing_information
    ADD CONSTRAINT key_billing_information PRIMARY KEY (id);
 W   ALTER TABLE ONLY "Branch".billing_information DROP CONSTRAINT key_billing_information;
       Branch            postgres    false    236            &           2606    103035    boxes key_boxes 
   CONSTRAINT     O   ALTER TABLE ONLY "Branch".boxes
    ADD CONSTRAINT key_boxes PRIMARY KEY (id);
 ;   ALTER TABLE ONLY "Branch".boxes DROP CONSTRAINT key_boxes;
       Branch            postgres    false    238            (           2606    103037    commanders key_commander 
   CONSTRAINT     X   ALTER TABLE ONLY "Branch".commanders
    ADD CONSTRAINT key_commander PRIMARY KEY (id);
 D   ALTER TABLE ONLY "Branch".commanders DROP CONSTRAINT key_commander;
       Branch            postgres    false    240            ,           2606    103039    managers key_managers 
   CONSTRAINT     U   ALTER TABLE ONLY "Branch".managers
    ADD CONSTRAINT key_managers PRIMARY KEY (id);
 A   ALTER TABLE ONLY "Branch".managers DROP CONSTRAINT key_managers;
       Branch            postgres    false    243            .           2606    103041    order key_order_id 
   CONSTRAINT     T   ALTER TABLE ONLY "Branch"."order"
    ADD CONSTRAINT key_order_id PRIMARY KEY (id);
 @   ALTER TABLE ONLY "Branch"."order" DROP CONSTRAINT key_order_id;
       Branch            postgres    false    245            0           2606    103043 %   pack_reservation key_pack_reservation 
   CONSTRAINT     e   ALTER TABLE ONLY "Branch".pack_reservation
    ADD CONSTRAINT key_pack_reservation PRIMARY KEY (id);
 Q   ALTER TABLE ONLY "Branch".pack_reservation DROP CONSTRAINT key_pack_reservation;
       Branch            postgres    false    247            4           2606    103045    reservation key_reservation 
   CONSTRAINT     [   ALTER TABLE ONLY "Branch".reservation
    ADD CONSTRAINT key_reservation PRIMARY KEY (id);
 G   ALTER TABLE ONLY "Branch".reservation DROP CONSTRAINT key_reservation;
       Branch            postgres    false    251            6           2606    103047 #   restaurant_area key_restaurant_area 
   CONSTRAINT     c   ALTER TABLE ONLY "Branch".restaurant_area
    ADD CONSTRAINT key_restaurant_area PRIMARY KEY (id);
 O   ALTER TABLE ONLY "Branch".restaurant_area DROP CONSTRAINT key_restaurant_area;
       Branch            postgres    false    253            2           2606    103049    providers key_suppliers_branch 
   CONSTRAINT     ^   ALTER TABLE ONLY "Branch".providers
    ADD CONSTRAINT key_suppliers_branch PRIMARY KEY (id);
 J   ALTER TABLE ONLY "Branch".providers DROP CONSTRAINT key_suppliers_branch;
       Branch            postgres    false    249            8           2606    103051    tables key_table 
   CONSTRAINT     P   ALTER TABLE ONLY "Branch".tables
    ADD CONSTRAINT key_table PRIMARY KEY (id);
 <   ALTER TABLE ONLY "Branch".tables DROP CONSTRAINT key_table;
       Branch            postgres    false    255            x           2606    103597    appointment id_key_appointment 
   CONSTRAINT     [   ALTER TABLE ONLY "CRM".appointment
    ADD CONSTRAINT id_key_appointment PRIMARY KEY (id);
 G   ALTER TABLE ONLY "CRM".appointment DROP CONSTRAINT id_key_appointment;
       CRM            postgres    false    313            �           2606    111975 *   history_prospects id_key_history_prospects 
   CONSTRAINT     g   ALTER TABLE ONLY "CRM".history_prospects
    ADD CONSTRAINT id_key_history_prospects PRIMARY KEY (id);
 S   ALTER TABLE ONLY "CRM".history_prospects DROP CONSTRAINT id_key_history_prospects;
       CRM            postgres    false    320            t           2606    103580 &   product_to_sell id_key_product_to_sell 
   CONSTRAINT     c   ALTER TABLE ONLY "CRM".product_to_sell
    ADD CONSTRAINT id_key_product_to_sell PRIMARY KEY (id);
 O   ALTER TABLE ONLY "CRM".product_to_sell DROP CONSTRAINT id_key_product_to_sell;
       CRM            postgres    false    309            z           2606    103608    prospects id_key_prospects 
   CONSTRAINT     W   ALTER TABLE ONLY "CRM".prospects
    ADD CONSTRAINT id_key_prospects PRIMARY KEY (id);
 C   ALTER TABLE ONLY "CRM".prospects DROP CONSTRAINT id_key_prospects;
       CRM            postgres    false    315            r           2606    103572    sales_stage id_key_sales_stage 
   CONSTRAINT     [   ALTER TABLE ONLY "CRM".sales_stage
    ADD CONSTRAINT id_key_sales_stage PRIMARY KEY (id);
 G   ALTER TABLE ONLY "CRM".sales_stage DROP CONSTRAINT id_key_sales_stage;
       CRM            postgres    false    307            v           2606    103588    sales_team id_key_sales_team 
   CONSTRAINT     Y   ALTER TABLE ONLY "CRM".sales_team
    ADD CONSTRAINT id_key_sales_team PRIMARY KEY (id);
 E   ALTER TABLE ONLY "CRM".sales_team DROP CONSTRAINT id_key_sales_team;
       CRM            postgres    false    311            �           2606    111994    chats chats_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY "Chat".chats
    ADD CONSTRAINT chats_pkey PRIMARY KEY (id_chat);
 :   ALTER TABLE ONLY "Chat".chats DROP CONSTRAINT chats_pkey;
       Chat            postgres    false    322            �           2606    112074 4   message_status message_status_message_id_user_id_key 
   CONSTRAINT     ~   ALTER TABLE ONLY "Chat".message_status
    ADD CONSTRAINT message_status_message_id_user_id_key UNIQUE (message_id, user_id);
 ^   ALTER TABLE ONLY "Chat".message_status DROP CONSTRAINT message_status_message_id_user_id_key;
       Chat            postgres    false    327    327            �           2606    112037 "   message_status message_status_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY "Chat".message_status
    ADD CONSTRAINT message_status_pkey PRIMARY KEY (id_status);
 L   ALTER TABLE ONLY "Chat".message_status DROP CONSTRAINT message_status_pkey;
       Chat            postgres    false    327            �           2606    112019    messages messages_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY "Chat".messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id_message);
 @   ALTER TABLE ONLY "Chat".messages DROP CONSTRAINT messages_pkey;
       Chat            postgres    false    325            �           2606    111999    user_chats user_chats_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY "Chat".user_chats
    ADD CONSTRAINT user_chats_pkey PRIMARY KEY (user_id, chat_id);
 D   ALTER TABLE ONLY "Chat".user_chats DROP CONSTRAINT user_chats_pkey;
       Chat            postgres    false    323    323            >           2606    103053    employees employees_uq 
   CONSTRAINT     X   ALTER TABLE ONLY "Company".employees
    ADD CONSTRAINT employees_uq UNIQUE (id_users);
 C   ALTER TABLE ONLY "Company".employees DROP CONSTRAINT employees_uq;
       Company            postgres    false    261            :           2606    103055    branches key_branches 
   CONSTRAINT     V   ALTER TABLE ONLY "Company".branches
    ADD CONSTRAINT key_branches PRIMARY KEY (id);
 B   ALTER TABLE ONLY "Company".branches DROP CONSTRAINT key_branches;
       Company            postgres    false    257            <           2606    103057    customers key_customer 
   CONSTRAINT     W   ALTER TABLE ONLY "Company".customers
    ADD CONSTRAINT key_customer PRIMARY KEY (id);
 C   ALTER TABLE ONLY "Company".customers DROP CONSTRAINT key_customer;
       Company            postgres    false    259            @           2606    103059    employees key_employees 
   CONSTRAINT     X   ALTER TABLE ONLY "Company".employees
    ADD CONSTRAINT key_employees PRIMARY KEY (id);
 D   ALTER TABLE ONLY "Company".employees DROP CONSTRAINT key_employees;
       Company            postgres    false    261            H           2606    103061    schedules key 
   CONSTRAINT     O   ALTER TABLE ONLY "Employee".schedules
    ADD CONSTRAINT key PRIMARY KEY (id);
 ;   ALTER TABLE ONLY "Employee".schedules DROP CONSTRAINT key;
       Employee            postgres    false    269            B           2606    103063    departments_employees key_areas 
   CONSTRAINT     a   ALTER TABLE ONLY "Employee".departments_employees
    ADD CONSTRAINT key_areas PRIMARY KEY (id);
 M   ALTER TABLE ONLY "Employee".departments_employees DROP CONSTRAINT key_areas;
       Employee            postgres    false    263            D           2606    103065 *   history_schedules key_history_schedules_id 
   CONSTRAINT     l   ALTER TABLE ONLY "Employee".history_schedules
    ADD CONSTRAINT key_history_schedules_id PRIMARY KEY (id);
 X   ALTER TABLE ONLY "Employee".history_schedules DROP CONSTRAINT key_history_schedules_id;
       Employee            postgres    false    265            F           2606    103067    roles_employees key_roles 
   CONSTRAINT     [   ALTER TABLE ONLY "Employee".roles_employees
    ADD CONSTRAINT key_roles PRIMARY KEY (id);
 G   ALTER TABLE ONLY "Employee".roles_employees DROP CONSTRAINT key_roles;
       Employee            postgres    false    267            L           2606    103069    packs_fud key 
   CONSTRAINT     J   ALTER TABLE ONLY "Fud".packs_fud
    ADD CONSTRAINT key PRIMARY KEY (id);
 6   ALTER TABLE ONLY "Fud".packs_fud DROP CONSTRAINT key;
       Fud            postgres    false    273            J           2606    103071    country key_country 
   CONSTRAINT     P   ALTER TABLE ONLY "Fud".country
    ADD CONSTRAINT key_country PRIMARY KEY (id);
 <   ALTER TABLE ONLY "Fud".country DROP CONSTRAINT key_country;
       Fud            postgres    false    271            R           2606    103073    users key_email_user 
   CONSTRAINT     O   ALTER TABLE ONLY "Fud".users
    ADD CONSTRAINT key_email_user UNIQUE (email);
 =   ALTER TABLE ONLY "Fud".users DROP CONSTRAINT key_email_user;
       Fud            postgres    false    277            T           2606    103075    users key_user 
   CONSTRAINT     K   ALTER TABLE ONLY "Fud".users
    ADD CONSTRAINT key_user PRIMARY KEY (id);
 7   ALTER TABLE ONLY "Fud".users DROP CONSTRAINT key_user;
       Fud            postgres    false    277            N           2606    103077    session  session_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY "Fud"."session "
    ADD CONSTRAINT session_pkey PRIMARY KEY (sid);
 @   ALTER TABLE ONLY "Fud"."session " DROP CONSTRAINT session_pkey;
       Fud            postgres    false    274            P           2606    103079    tokens tokens_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY "Fud".tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY "Fud".tokens DROP CONSTRAINT tokens_pkey;
       Fud            postgres    false    275            V           2606    103081 )   dish_and_combo_features key_dish_features 
   CONSTRAINT     l   ALTER TABLE ONLY "Inventory".dish_and_combo_features
    ADD CONSTRAINT key_dish_features PRIMARY KEY (id);
 X   ALTER TABLE ONLY "Inventory".dish_and_combo_features DROP CONSTRAINT key_dish_features;
    	   Inventory            postgres    false    279            X           2606    103083 3   product_and_suppiles_features key_product_features2 
   CONSTRAINT     v   ALTER TABLE ONLY "Inventory".product_and_suppiles_features
    ADD CONSTRAINT key_product_features2 PRIMARY KEY (id);
 b   ALTER TABLE ONLY "Inventory".product_and_suppiles_features DROP CONSTRAINT key_product_features2;
    	   Inventory            postgres    false    281            Z           2606    103085 +   table_supplies_dish key_table_supplies_dish 
   CONSTRAINT     n   ALTER TABLE ONLY "Inventory".table_supplies_dish
    ADD CONSTRAINT key_table_supplies_dish PRIMARY KEY (id);
 Z   ALTER TABLE ONLY "Inventory".table_supplies_dish DROP CONSTRAINT key_table_supplies_dish;
    	   Inventory            postgres    false    283            \           2606    103087    table_taxes key_table_taxes 
   CONSTRAINT     ^   ALTER TABLE ONLY "Inventory".table_taxes
    ADD CONSTRAINT key_table_taxes PRIMARY KEY (id);
 J   ALTER TABLE ONLY "Inventory".table_taxes DROP CONSTRAINT key_table_taxes;
    	   Inventory            postgres    false    285            ^           2606    103089    taxes key_taxes 
   CONSTRAINT     R   ALTER TABLE ONLY "Inventory".taxes
    ADD CONSTRAINT key_taxes PRIMARY KEY (id);
 >   ALTER TABLE ONLY "Inventory".taxes DROP CONSTRAINT key_taxes;
    	   Inventory            postgres    false    287            `           2606    112099 (   dishes_and_combos dishes_and_combos_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "Kitchen".dishes_and_combos
    ADD CONSTRAINT dishes_and_combos_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY "Kitchen".dishes_and_combos DROP CONSTRAINT dishes_and_combos_pkey;
       Kitchen            postgres    false    289            h           2606    103093    screen id_screen 
   CONSTRAINT     Q   ALTER TABLE ONLY "Kitchen".screen
    ADD CONSTRAINT id_screen PRIMARY KEY (ip);
 =   ALTER TABLE ONLY "Kitchen".screen DROP CONSTRAINT id_screen;
       Kitchen            postgres    false    297            f           2606    103095 !   products_and_supplies key_product 
   CONSTRAINT     b   ALTER TABLE ONLY "Kitchen".products_and_supplies
    ADD CONSTRAINT key_product PRIMARY KEY (id);
 N   ALTER TABLE ONLY "Kitchen".products_and_supplies DROP CONSTRAINT key_product;
       Kitchen            postgres    false    295            b           2606    103097 %   product_category key_product_category 
   CONSTRAINT     f   ALTER TABLE ONLY "Kitchen".product_category
    ADD CONSTRAINT key_product_category PRIMARY KEY (id);
 R   ALTER TABLE ONLY "Kitchen".product_category DROP CONSTRAINT key_product_category;
       Kitchen            postgres    false    291            d           2606    103099 )   product_department key_product_department 
   CONSTRAINT     j   ALTER TABLE ONLY "Kitchen".product_department
    ADD CONSTRAINT key_product_department PRIMARY KEY (id);
 V   ALTER TABLE ONLY "Kitchen".product_department DROP CONSTRAINT key_product_department;
       Kitchen            postgres    false    293            j           2606    103101    branch key_setting_branch 
   CONSTRAINT     [   ALTER TABLE ONLY "Settings".branch
    ADD CONSTRAINT key_setting_branch PRIMARY KEY (id);
 G   ALTER TABLE ONLY "Settings".branch DROP CONSTRAINT key_setting_branch;
       Settings            postgres    false    300            n           2606    103103     subscription id_key_subscription 
   CONSTRAINT     ^   ALTER TABLE ONLY "User".subscription
    ADD CONSTRAINT id_key_subscription PRIMARY KEY (id);
 J   ALTER TABLE ONLY "User".subscription DROP CONSTRAINT id_key_subscription;
       User            postgres    false    304            l           2606    103105    companies key_company 
   CONSTRAINT     S   ALTER TABLE ONLY "User".companies
    ADD CONSTRAINT key_company PRIMARY KEY (id);
 ?   ALTER TABLE ONLY "User".companies DROP CONSTRAINT key_company;
       User            postgres    false    302            ~           2606    103748    alumnos alumnos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY _company_1_branch_8.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY _company_1_branch_8.alumnos DROP CONSTRAINT alumnos_pkey;
       _company_1_branch_8            postgres    false    318            |           2606    103738    apps apps_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY _company_1_branch_8.apps
    ADD CONSTRAINT apps_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY _company_1_branch_8.apps DROP CONSTRAINT apps_pkey;
       _company_1_branch_8            postgres    false    316            p           2606    103107    session session_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (sid);
 >   ALTER TABLE ONLY public.session DROP CONSTRAINT session_pkey;
       public            postgres    false    305            �           2606    103108    boxes_history boxes_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".boxes_history
    ADD CONSTRAINT boxes_fk FOREIGN KEY (id_boxes) REFERENCES "Branch".boxes(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 ?   ALTER TABLE ONLY "Box".boxes_history DROP CONSTRAINT boxes_fk;
       Box          postgres    false    238    227    3622            �           2606    103113    movement_history boxes_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".movement_history
    ADD CONSTRAINT boxes_fk FOREIGN KEY (id_boxes) REFERENCES "Branch".boxes(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 B   ALTER TABLE ONLY "Box".movement_history DROP CONSTRAINT boxes_fk;
       Box          postgres    false    229    3622    238            �           2606    103118    sales_history branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".sales_history
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 B   ALTER TABLE ONLY "Box".sales_history DROP CONSTRAINT branches_fk;
       Box          postgres    false    230    3642    257            �           2606    103123    boxes_history branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".boxes_history
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 B   ALTER TABLE ONLY "Box".boxes_history DROP CONSTRAINT branches_fk;
       Box          postgres    false    257    227    3642            �           2606    103128    movement_history branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".movement_history
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY "Box".movement_history DROP CONSTRAINT branches_fk;
       Box          postgres    false    229    257    3642            �           2606    103133    sales_history companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".sales_history
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "Box".sales_history DROP CONSTRAINT companies_fk;
       Box          postgres    false    302    3692    230            �           2606    103138    sales_history customers_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".sales_history
    ADD CONSTRAINT customers_fk FOREIGN KEY (id_customers) REFERENCES "Company".customers(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "Box".sales_history DROP CONSTRAINT customers_fk;
       Box          postgres    false    3644    230    259            �           2606    103148    sales_history employees_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".sales_history
    ADD CONSTRAINT employees_fk FOREIGN KEY (id_employees) REFERENCES "Company".employees(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "Box".sales_history DROP CONSTRAINT employees_fk;
       Box          postgres    false    261    230    3648            �           2606    103153    boxes_history employees_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".boxes_history
    ADD CONSTRAINT employees_fk FOREIGN KEY (id_employees) REFERENCES "Company".employees(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "Box".boxes_history DROP CONSTRAINT employees_fk;
       Box          postgres    false    261    227    3648            �           2606    103158    movement_history employees_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Box".movement_history
    ADD CONSTRAINT employees_fk FOREIGN KEY (id_employees) REFERENCES "Company".employees(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 F   ALTER TABLE ONLY "Box".movement_history DROP CONSTRAINT employees_fk;
       Box          postgres    false    261    229    3648            �           2606    103163    reservation branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".reservation
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "Branch".reservation DROP CONSTRAINT branches_fk;
       Branch          postgres    false    257    251    3642            �           2606    103168    tables branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".tables
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 >   ALTER TABLE ONLY "Branch".tables DROP CONSTRAINT branches_fk;
       Branch          postgres    false    255    3642    257            �           2606    103173    pack_reservation branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".pack_reservation
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY "Branch".pack_reservation DROP CONSTRAINT branches_fk;
       Branch          postgres    false    247    257    3642            �           2606    103178    managers branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".managers
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 @   ALTER TABLE ONLY "Branch".managers DROP CONSTRAINT branches_fk;
       Branch          postgres    false    3642    257    243            �           2606    103183    boxes branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".boxes
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 =   ALTER TABLE ONLY "Branch".boxes DROP CONSTRAINT branches_fk;
       Branch          postgres    false    3642    238    257            �           2606    103188    restaurant_area branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".restaurant_area
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY "Branch".restaurant_area DROP CONSTRAINT branches_fk;
       Branch          postgres    false    257    253    3642            �           2606    103193    providers branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".providers
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 A   ALTER TABLE ONLY "Branch".providers DROP CONSTRAINT branches_fk;
       Branch          postgres    false    257    249    3642            �           2606    103198    Ad branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch"."Ad"
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 <   ALTER TABLE ONLY "Branch"."Ad" DROP CONSTRAINT branches_fk;
       Branch          postgres    false    232    3642    257            �           2606    103203    managers employees_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".managers
    ADD CONSTRAINT employees_fk FOREIGN KEY (id_employees) REFERENCES "Company".employees(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 A   ALTER TABLE ONLY "Branch".managers DROP CONSTRAINT employees_fk;
       Branch          postgres    false    243    3648    261            �           2606    103208    reservation pack_reservation_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".reservation
    ADD CONSTRAINT pack_reservation_fk FOREIGN KEY (id_pack_reservation) REFERENCES "Branch".pack_reservation(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY "Branch".reservation DROP CONSTRAINT pack_reservation_fk;
       Branch          postgres    false    3632    247    251            �           2606    103213     billing_information providers_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".billing_information
    ADD CONSTRAINT providers_fk FOREIGN KEY (id_providers) REFERENCES "Branch".providers(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY "Branch".billing_information DROP CONSTRAINT providers_fk;
       Branch          postgres    false    249    236    3634            �           2606    103218    tables restaurant_area_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".tables
    ADD CONSTRAINT restaurant_area_fk FOREIGN KEY (id_restaurant_area) REFERENCES "Branch".restaurant_area(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY "Branch".tables DROP CONSTRAINT restaurant_area_fk;
       Branch          postgres    false    255    3638    253            �           2606    103223    reservation tables_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Branch".reservation
    ADD CONSTRAINT tables_fk FOREIGN KEY (id_tables) REFERENCES "Branch".tables(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 A   ALTER TABLE ONLY "Branch".reservation DROP CONSTRAINT tables_fk;
       Branch          postgres    false    255    3640    251            �           2606    103619    prospects branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "CRM".prospects
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 >   ALTER TABLE ONLY "CRM".prospects DROP CONSTRAINT branches_fk;
       CRM          postgres    false    315    257    3642            �           2606    103644    appointment branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "CRM".appointment
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 @   ALTER TABLE ONLY "CRM".appointment DROP CONSTRAINT branches_fk;
       CRM          postgres    false    313    257    3642            �           2606    103614    prospects companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "CRM".prospects
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 ?   ALTER TABLE ONLY "CRM".prospects DROP CONSTRAINT companies_fk;
       CRM          postgres    false    315    302    3692            �           2606    103624    sales_stage companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "CRM".sales_stage
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 A   ALTER TABLE ONLY "CRM".sales_stage DROP CONSTRAINT companies_fk;
       CRM          postgres    false    302    3692    307            �           2606    103629    product_to_sell companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "CRM".product_to_sell
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY "CRM".product_to_sell DROP CONSTRAINT companies_fk;
       CRM          postgres    false    302    309    3692            �           2606    103634    sales_team companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "CRM".sales_team
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 @   ALTER TABLE ONLY "CRM".sales_team DROP CONSTRAINT companies_fk;
       CRM          postgres    false    3692    311    302            �           2606    103639    appointment companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "CRM".appointment
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 A   ALTER TABLE ONLY "CRM".appointment DROP CONSTRAINT companies_fk;
       CRM          postgres    false    313    3692    302            �           2606    111941 $   appointment fk_appointment_employees    FK CONSTRAINT     �   ALTER TABLE ONLY "CRM".appointment
    ADD CONSTRAINT fk_appointment_employees FOREIGN KEY (id_employees) REFERENCES "Company".employees(id);
 M   ALTER TABLE ONLY "CRM".appointment DROP CONSTRAINT fk_appointment_employees;
       CRM          postgres    false    313    261    3648            �           2606    111976    history_prospects prospects_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "CRM".history_prospects
    ADD CONSTRAINT prospects_fk FOREIGN KEY (id_prospects) REFERENCES "CRM".prospects(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY "CRM".history_prospects DROP CONSTRAINT prospects_fk;
       CRM          postgres    false    320    315    3706            �           2606    103609    prospects sales_stage_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "CRM".prospects
    ADD CONSTRAINT sales_stage_fk FOREIGN KEY (id_sales_stage) REFERENCES "CRM".sales_stage(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 A   ALTER TABLE ONLY "CRM".prospects DROP CONSTRAINT sales_stage_fk;
       CRM          postgres    false    315    307    3698            �           2606    111981    history_prospects users_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "CRM".history_prospects
    ADD CONSTRAINT users_fk FOREIGN KEY (id_users) REFERENCES "Fud".users(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "CRM".history_prospects DROP CONSTRAINT users_fk;
       CRM          postgres    false    320    277    3668            �           2606    112050    chats fk_user_one    FK CONSTRAINT     v   ALTER TABLE ONLY "Chat".chats
    ADD CONSTRAINT fk_user_one FOREIGN KEY (user_one_id) REFERENCES "Fud".users(email);
 ;   ALTER TABLE ONLY "Chat".chats DROP CONSTRAINT fk_user_one;
       Chat          postgres    false    277    322    3666            �           2606    112055    chats fk_user_two    FK CONSTRAINT     v   ALTER TABLE ONLY "Chat".chats
    ADD CONSTRAINT fk_user_two FOREIGN KEY (user_two_id) REFERENCES "Fud".users(email);
 ;   ALTER TABLE ONLY "Chat".chats DROP CONSTRAINT fk_user_two;
       Chat          postgres    false    277    322    3666            �           2606    112040 -   message_status message_status_message_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Chat".message_status
    ADD CONSTRAINT message_status_message_id_fkey FOREIGN KEY (message_id) REFERENCES "Chat".messages(id_message) ON DELETE CASCADE;
 W   ALTER TABLE ONLY "Chat".message_status DROP CONSTRAINT message_status_message_id_fkey;
       Chat          postgres    false    3718    325    327            �           2606    112084 *   message_status message_status_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Chat".message_status
    ADD CONSTRAINT message_status_user_id_fkey FOREIGN KEY (user_id) REFERENCES "Fud".users(email) ON DELETE CASCADE;
 T   ALTER TABLE ONLY "Chat".message_status DROP CONSTRAINT message_status_user_id_fkey;
       Chat          postgres    false    277    3666    327            �           2606    112020    messages messages_chat_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Chat".messages
    ADD CONSTRAINT messages_chat_id_fkey FOREIGN KEY (chat_id) REFERENCES "Chat".chats(id_chat) ON DELETE CASCADE;
 H   ALTER TABLE ONLY "Chat".messages DROP CONSTRAINT messages_chat_id_fkey;
       Chat          postgres    false    3714    322    325            �           2606    112068    messages messages_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Chat".messages
    ADD CONSTRAINT messages_user_id_fkey FOREIGN KEY (user_id) REFERENCES "Fud".users(email) ON DELETE CASCADE;
 H   ALTER TABLE ONLY "Chat".messages DROP CONSTRAINT messages_user_id_fkey;
       Chat          postgres    false    277    325    3666            �           2606    112005 "   user_chats user_chats_chat_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Chat".user_chats
    ADD CONSTRAINT user_chats_chat_id_fkey FOREIGN KEY (chat_id) REFERENCES "Chat".chats(id_chat) ON DELETE CASCADE;
 L   ALTER TABLE ONLY "Chat".user_chats DROP CONSTRAINT user_chats_chat_id_fkey;
       Chat          postgres    false    323    322    3714            �           2606    112000 "   user_chats user_chats_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Chat".user_chats
    ADD CONSTRAINT user_chats_user_id_fkey FOREIGN KEY (user_id) REFERENCES "Fud".users(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY "Chat".user_chats DROP CONSTRAINT user_chats_user_id_fkey;
       Chat          postgres    false    3668    277    323            �           2606    103228    employees branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".employees
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 B   ALTER TABLE ONLY "Company".employees DROP CONSTRAINT branches_fk;
       Company          postgres    false    3642    261    257            �           2606    103233    employees companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".employees
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "Company".employees DROP CONSTRAINT companies_fk;
       Company          postgres    false    3692    261    302            �           2606    103238    customers companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".customers
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "Company".customers DROP CONSTRAINT companies_fk;
       Company          postgres    false    259    302    3692            �           2606    103243    branches companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".branches
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 B   ALTER TABLE ONLY "Company".branches DROP CONSTRAINT companies_fk;
       Company          postgres    false    257    3692    302            �           2606    103248    branches country_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".branches
    ADD CONSTRAINT country_fk FOREIGN KEY (id_country) REFERENCES "Fud".country(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 @   ALTER TABLE ONLY "Company".branches DROP CONSTRAINT country_fk;
       Company          postgres    false    271    257    3658            �           2606    103253    customers country_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".customers
    ADD CONSTRAINT country_fk FOREIGN KEY (id_country) REFERENCES "Fud".country(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 A   ALTER TABLE ONLY "Company".customers DROP CONSTRAINT country_fk;
       Company          postgres    false    3658    259    271            �           2606    103258    employees country_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".employees
    ADD CONSTRAINT country_fk FOREIGN KEY (id_country) REFERENCES "Fud".country(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 A   ALTER TABLE ONLY "Company".employees DROP CONSTRAINT country_fk;
       Company          postgres    false    271    261    3658            �           2606    103263 "   employees departments_employees_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".employees
    ADD CONSTRAINT departments_employees_fk FOREIGN KEY (id_departments_employees) REFERENCES "Employee".departments_employees(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 O   ALTER TABLE ONLY "Company".employees DROP CONSTRAINT departments_employees_fk;
       Company          postgres    false    3650    263    261            �           2606    103268    employees roles_employees_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".employees
    ADD CONSTRAINT roles_employees_fk FOREIGN KEY (id_roles_employees) REFERENCES "Employee".roles_employees(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY "Company".employees DROP CONSTRAINT roles_employees_fk;
       Company          postgres    false    267    3654    261            �           2606    103273    employees users_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Company".employees
    ADD CONSTRAINT users_fk FOREIGN KEY (id_users) REFERENCES "Fud".users(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 ?   ALTER TABLE ONLY "Company".employees DROP CONSTRAINT users_fk;
       Company          postgres    false    3668    261    277            �           2606    103278    history_schedules branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Employee".history_schedules
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY "Employee".history_schedules DROP CONSTRAINT branches_fk;
       Employee          postgres    false    265    257    3642            �           2606    103283    roles_employees companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Employee".roles_employees
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY "Employee".roles_employees DROP CONSTRAINT companies_fk;
       Employee          postgres    false    3692    302    267            �           2606    103288 "   departments_employees companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Employee".departments_employees
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 P   ALTER TABLE ONLY "Employee".departments_employees DROP CONSTRAINT companies_fk;
       Employee          postgres    false    263    3692    302            �           2606    103293    history_schedules employees_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Employee".history_schedules
    ADD CONSTRAINT employees_fk FOREIGN KEY (id_employees) REFERENCES "Company".employees(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY "Employee".history_schedules DROP CONSTRAINT employees_fk;
       Employee          postgres    false    265    3648    261            �           2606    103298    roles_employees fk_company    FK CONSTRAINT     �   ALTER TABLE ONLY "Employee".roles_employees
    ADD CONSTRAINT fk_company FOREIGN KEY (id_companies) REFERENCES "User".companies(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY "Employee".roles_employees DROP CONSTRAINT fk_company;
       Employee          postgres    false    267    3692    302            �           2606    103303    history_schedules schedules_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Employee".history_schedules
    ADD CONSTRAINT schedules_fk FOREIGN KEY (id_schedules) REFERENCES "Employee".schedules(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY "Employee".history_schedules DROP CONSTRAINT schedules_fk;
       Employee          postgres    false    265    3656    269            �           2606    103308    users packs_fud_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Fud".users
    ADD CONSTRAINT packs_fud_fk FOREIGN KEY (id_packs_fud) REFERENCES "Fud".packs_fud(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 ;   ALTER TABLE ONLY "Fud".users DROP CONSTRAINT packs_fud_fk;
       Fud          postgres    false    3660    277    273            �           2606    103313    tokens tokens_user_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY "Fud".tokens
    ADD CONSTRAINT tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES "Fud".users(id);
 C   ALTER TABLE ONLY "Fud".tokens DROP CONSTRAINT tokens_user_id_fkey;
       Fud          postgres    false    277    275    3668            �           2606    103318 #   dish_and_combo_features branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Inventory".dish_and_combo_features
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 R   ALTER TABLE ONLY "Inventory".dish_and_combo_features DROP CONSTRAINT branches_fk;
    	   Inventory          postgres    false    279    257    3642            �           2606    103323 )   product_and_suppiles_features branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Inventory".product_and_suppiles_features
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 X   ALTER TABLE ONLY "Inventory".product_and_suppiles_features DROP CONSTRAINT branches_fk;
    	   Inventory          postgres    false    3642    281    257            �           2606    103328 $   dish_and_combo_features companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Inventory".dish_and_combo_features
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY "Inventory".dish_and_combo_features DROP CONSTRAINT companies_fk;
    	   Inventory          postgres    false    3692    279    302            �           2606    103333 .   table_supplies_dish dish_and_combo_features_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Inventory".table_supplies_dish
    ADD CONSTRAINT dish_and_combo_features_fk FOREIGN KEY (id_dish_and_combo_features) REFERENCES "Inventory".dish_and_combo_features(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 ]   ALTER TABLE ONLY "Inventory".table_supplies_dish DROP CONSTRAINT dish_and_combo_features_fk;
    	   Inventory          postgres    false    283    3670    279            �           2606    103338 4   table_supplies_dish product_and_suppiles_features_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Inventory".table_supplies_dish
    ADD CONSTRAINT product_and_suppiles_features_fk FOREIGN KEY (id_product_and_suppiles_features) REFERENCES "Inventory".product_and_suppiles_features(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 c   ALTER TABLE ONLY "Inventory".table_supplies_dish DROP CONSTRAINT product_and_suppiles_features_fk;
    	   Inventory          postgres    false    281    3672    283            �           2606    103343 6   product_and_suppiles_features products_and_supplies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Inventory".product_and_suppiles_features
    ADD CONSTRAINT products_and_supplies_fk FOREIGN KEY (id_products_and_supplies) REFERENCES "Kitchen".products_and_supplies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 e   ALTER TABLE ONLY "Inventory".product_and_suppiles_features DROP CONSTRAINT products_and_supplies_fk;
    	   Inventory          postgres    false    281    295    3686            �           2606    103348 $   dish_and_combo_features providers_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Inventory".dish_and_combo_features
    ADD CONSTRAINT providers_fk FOREIGN KEY (id_providers) REFERENCES "Branch".providers(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY "Inventory".dish_and_combo_features DROP CONSTRAINT providers_fk;
    	   Inventory          postgres    false    279    3634    249            �           2606    103353    table_taxes taxes_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Inventory".table_taxes
    ADD CONSTRAINT taxes_fk FOREIGN KEY (id_taxes) REFERENCES "Inventory".taxes(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "Inventory".table_taxes DROP CONSTRAINT taxes_fk;
    	   Inventory          postgres    false    285    3678    287            �           2606    103358    screen branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Kitchen".screen
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 ?   ALTER TABLE ONLY "Kitchen".screen DROP CONSTRAINT branches_fk;
       Kitchen          postgres    false    297    3642    257            �           2606    103363 "   products_and_supplies companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Kitchen".products_and_supplies
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 O   ALTER TABLE ONLY "Kitchen".products_and_supplies DROP CONSTRAINT companies_fk;
       Kitchen          postgres    false    295    3692    302            �           2606    103368    product_category companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Kitchen".product_category
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY "Kitchen".product_category DROP CONSTRAINT companies_fk;
       Kitchen          postgres    false    291    3692    302            �           2606    103373    product_department companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Kitchen".product_department
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY "Kitchen".product_department DROP CONSTRAINT companies_fk;
       Kitchen          postgres    false    293    3692    302            �           2606    103378    dishes_and_combos companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Kitchen".dishes_and_combos
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY "Kitchen".dishes_and_combos DROP CONSTRAINT companies_fk;
       Kitchen          postgres    false    289    3692    302            �           2606    103383 %   dishes_and_combos product_category_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Kitchen".dishes_and_combos
    ADD CONSTRAINT product_category_fk FOREIGN KEY (id_product_category) REFERENCES "Kitchen".product_category(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 R   ALTER TABLE ONLY "Kitchen".dishes_and_combos DROP CONSTRAINT product_category_fk;
       Kitchen          postgres    false    289    3682    291            �           2606    103388 '   dishes_and_combos product_department_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Kitchen".dishes_and_combos
    ADD CONSTRAINT product_department_fk FOREIGN KEY (id_product_department) REFERENCES "Kitchen".product_department(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY "Kitchen".dishes_and_combos DROP CONSTRAINT product_department_fk;
       Kitchen          postgres    false    289    3684    293            �           2606    103393 -   table_supplies_combo products_and_supplies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "Kitchen".table_supplies_combo
    ADD CONSTRAINT products_and_supplies_fk FOREIGN KEY (id_products_and_supplies) REFERENCES "Kitchen".products_and_supplies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 Z   ALTER TABLE ONLY "Kitchen".table_supplies_combo DROP CONSTRAINT products_and_supplies_fk;
       Kitchen          postgres    false    298    3686    295            �           2606    103398    subscription branches_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "User".subscription
    ADD CONSTRAINT branches_fk FOREIGN KEY (id_branches) REFERENCES "Company".branches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 B   ALTER TABLE ONLY "User".subscription DROP CONSTRAINT branches_fk;
       User          postgres    false    304    3642    257            �           2606    103403    subscription companies_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "User".subscription
    ADD CONSTRAINT companies_fk FOREIGN KEY (id_companies) REFERENCES "User".companies(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "User".subscription DROP CONSTRAINT companies_fk;
       User          postgres    false    304    3692    302            �           2606    103408    companies country_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "User".companies
    ADD CONSTRAINT country_fk FOREIGN KEY (id_country) REFERENCES "Fud".country(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 >   ALTER TABLE ONLY "User".companies DROP CONSTRAINT country_fk;
       User          postgres    false    302    3658    271            �           2606    103413    subscription packs_fud_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "User".subscription
    ADD CONSTRAINT packs_fud_fk FOREIGN KEY (id_packs_fud) REFERENCES "Fud".packs_fud(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY "User".subscription DROP CONSTRAINT packs_fud_fk;
       User          postgres    false    304    3660    273            �           2606    103418    companies users_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "User".companies
    ADD CONSTRAINT users_fk FOREIGN KEY (id_users) REFERENCES "Fud".users(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 <   ALTER TABLE ONLY "User".companies DROP CONSTRAINT users_fk;
       User          postgres    false    302    3668    277            �           2606    103423    subscription users_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "User".subscription
    ADD CONSTRAINT users_fk FOREIGN KEY (id_users) REFERENCES "Fud".users(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 ?   ALTER TABLE ONLY "User".subscription DROP CONSTRAINT users_fk;
       User          postgres    false    3668    304    277            k      x������ � �      m   �   x�]�Mn� �5>�\ 4ï�!� �i�,K ;���H��J��o�È�U`�4�?���^�J�R[�]���N��1�E�7X����FK�E�ҕ;C���\`J��H@.j5*��#�\`M0��o%��*Wޏz��P��7�������)?J~m<���vTp��(��ou+u���g]S���A��[s�F2���0?�*N�      n      x������ � �      p   <  x��X�nG<k���G�G�LOny§ @��t�C�ArRr }jWqL�
�K�HHP��V?����~��u˹�j\��P�`TR3Ïb����w������8Bq.�l��ѐdJf6��6���O��5,,a�p�^a�bîS]�ĉ�UE��q��U�u$k�5�h9���Ic,-�*m��tZ^��RJ��iȍ�l0�S0R]���&� �|���qߏ�yw�����x�қ�r1�Y�ؑ�3I�R(�?g��{������M�.|2���9���@9�C}�� q-�O�)R1%yYH`þ�	���S�M3�r��Z2����b�0Jk7E�7λPJ�n���Mq���4_@�
o��f��
����j�Z��J��	}V�@R2R�� �Km�����q���9	[Ú�0Х-�.hc�S�z�Ӓ��؁���=75�S7L޶&x~=C���KU+�f�+�2T�A�I)Yr���zpP���������7㩙�Q���:f��(�a�]N׳T�O�f��o�w�9�Lo���hѫ������]�9r�?�>��u>��ϗ�㼛�� bF�}-ѨZ�0����[���T��oO�~�}�ty�)� ���y�Q�cd,}3��3T_�x��������q~��� ��է�I(ъΡ�ц�
+���ٰb|���Y��z���� �%��bVR5E�-�x+.8�7 ��(�w�r���q�iɒ�'2Z�֨�JV�ьR�@|nķrԥ��y�!
s��H��ƪ��Vg��5��snE��ޔxH�?B�M�=0�fc@F51���4p�ҳ�Oi��W[q	bnB��-�u�gK�Z\O�y�[�j�M�B �$�Q?��R�K�����;*5j�lz*����(4ulN��Y�����?=<��<�L,0_[:�0�)�0�����]HL��~�]�	]�2m��t�P�ʲ8��h�ᚲ-�F��R�G9�L�M@��C��@� R=�0�f`�\��������ISN[ d�ga��E܍Xem�2�_�[���%�n�N9o���5b���,���5��[�g9�u�a>T�ٔy��{T;ZPr��Tȅ��ft�UɎ^L���0��A�r���_�I�'�j8�.UjJ!�oՎC�v��H�g�F�l�Er����]BI�uoǐ�����<��\M���r�����S̳�ci��������&�µ�H�=��A�q�dE�+�:W�w����;��|�O���d�d��*�Ŕ.�]4߽rn5|y���+��h
�
�l#h��*ךp)��&���ΧC�^���i����r      r      x������ � �      t      x������ � �      v   D   x�]���@���.Tq�X�	n�9h��XV�w���J�$�Α��+VQW�!ܦ��j����      x   g  x��[Mo�H=˿��9ntUu���e�9�u'��q����c���[�T��L���6 ��q������GӰ���o��ëd�
�Wv�B����r���Zo��տ�{��~�޶���>��m��O�����K��?��������������3�Ѱ|�~ڽ=��_�|�{]?~����-?.��&?���vf9�%91��Ŗ�쒇�X�
vQA@�*F'��b�;w�R�.g�O�.7+
�Yȭ�����ų�ENcm�\�*?ߪ���6�V��U��WN�"�ʉ���d��M��$��ƥ����M�OE2>�����ͅ}+?����b��P��
[�i�h��m�U<,T�����EZ2�]��F�T�*�*&��h��*j9J-w.3EW��Ӓ�3UW���Y2�q��*߂�(�Ÿ�T]�Z�&��j4Δ]��G��]�@vcK"uq��F�c�*�Zy�Aw���Z06L�粡o���� ��h`F]���T?��3=�lJv��_�>|o�Y7��ӓ���Z�U �BӒ��_w�_oۗm�m�m�$��/������GT���2-�[N=����7"�DX͂IR�d	�,�S�����7d{��BV2T�"�ӵ�2�i��Qg
D�b�K�*Nwh5&�����X��Ҵ�\�p�ņ
�n�\Bk���u�tu��:U:!�AF�� Ԩ�u�yX|Z1[7�L)�rB�X�@U�^�$�p$I{"%�-7�S|�G8|�B�9����-�!б��?l9jLCvɄ)���1�4�4z�l3	70*�3ޖ+Ѽ���@�!�Zf��b 7��8n�5`]��B�y�%���2���^�������\��4?�H
��(.֫��-́����t�����E3I�h�������\�.��r�VBr[b��G|Gy�ѝk0>�%�e�����f�|�6���c����D��� 濊ԯ�͞���J�x���Z,�d�{"�AQw��0�� ށ���$����Q˒�*P�C��Ҋ[]7����0�Cu�#��K�s�Η��;K��ʍ��8��e$}]?���r�q��=7�o�����4�sИ;`�h�As:6��z��])-��ͮ:k�z�SE���8��Xz�������'�B�ɾ��"Ӆq<2N�:p�u��t�)z�ޯ����/�������kq�J����.*�I^D�s/F��ru���Y���3���h*R�t��	+�=Aj�K3i\�M��̬���:�Uu�W4��+���&u��{� �Xn��
�"�N��H(�w+�-����H,r����Fے׳T�M}�K��|GO��F�Ӑ2E�����|�4S˅	�fn7&AC�2*��4���Iz|�xvgPʓ;b��,� �M��֒�n(����S�%MRi�<~����@��z��r$#�t��2��z���ԁj�&!TU��Y����� 0�H(���j�¨")�L�*�m�0�H:�݁0_-MaT���^]�*:*H(�%�z.=
�L�4�d�C�Ǥ��|��$�ý�~��%�5{W�09�%Vo�_9N#�Ĉ^����"�)d��O�kU'@;�i�E�a2��V�3�d�~�7�+ ���Y�������YN;Re�y�fy�ȕ#lR�8�����GsQ�Sdm\c�!{۲j����'���sw���5.Is���$]{��7e�}��yx|\��l���؝�)���hb]?I1=?�cR`]jB	��2{��­pB�&�����ĉ~I�Gy���m:6a�R�����!o�Ak`��ka�c�����NOˠO%�8<�t�$-1�I|���q���>|���q8_'��kp��%�;y��b�4GGnCxM8;�#�;{)~�ā�i�?�� t�8�w|닻� � ����W�ܨ �t�!kB��.�������4S-_�AnT �h�E��U8GEp���0���e{��@���02��ly���QA���$'�b�&�-��Y*%Vl��9Sf����5Z��$��u>���w�T������ns�{��4S�����{`x <��:�����;�wH<&	��	g���L{{47~��ζͿmz��[��������*}      z      x������ � �      {      x������ � �      }   �   x����
�0�ϛ��(&mm�
œ
�7/�,%Xٶ�oo6�?��)��vf2j
(=�B��u�h `�W_������bLi�f-^��H2���G@jd�& ��ș�TL����n[/��fq�П��A��Uų�Fm�bOذ��T.c��J^�����+��OGRO�u��P�xJ����!~�|�'��4�����4�����~,��\hl{            x������ � �      �   �   x���]� ǟ�)8��>��6����� :2����^̢qN��%�-����6+X�3JH��-�d�K��6��<ˋ�ﴵu$[�����X�g�j+O��T}���Bd��*%jizP�D��1�Jl���k!y��z���y6��i>{����T:"�Y���<j`c��ϒJ��R�'4aߠ��K��l��1v�%_�      �      x������ � �      �      x������ � �      �      x������ � �      �   O  x����r�0�u�����9�@ȶ�vѵT��)�P���7	!����O>���	!���T}Ɏ�kI8p��b��!7J ��sڽ���ص���r�h8̎�lJ�S]��Qe��s��Ӗ�J�[��j�vB92PF��KuH-z:Y��ж���wT��tYTF.@]K�Y�`�!�d|���F�DQ�ꐎ���`�Y5��n�D�/���'�EHm��P����׌��iM�4jj[��vR�B�l[+�PI�cH��?�6���N��#M�-mH�V<�қ:m�)���6	�$���{ab�Ι�JLX�4Z�[�~3%6�0�3^�_�s9����)��3�����      �   �  x���Mn�0���)t��Gr����v�f������	b�=UW=B.֡���%L<ϣ�7��6��:�O�����n���z���p}��v�ix�������8�\ ] _�UN�Ϳ�a^���DK�@���@+�X�4��"�"���p� �,I��U
bHg��Ar��
�<�o�ǧ���Uv���?*[E��,1�2�c��[�`�!	���D\Fͅ�͢��D��S
��KUJQ)k���pMU��T({���X�+�P��AYSY����g�4�N��]Oo�M8&n�� ��R���oי�mHJdP�Pg��D�v�yE��sq��#/k"�E�c�\�4~�
)���5��lX�� �
�T�HI���
X��G�l�;O�֖
S��NG�K�ڂɎ�4P9�����Qu�Įmұ�gԱ㒻6��=���՗�]%>5�5�������/j��՗�]eޟ9g
��Ӓ�U���$�l�>�ǹ=^uy�R+��g �^N�RƕK,��r>)˕�գ�����>ܭ)K�#�����7�EB�j/h��t���>�0��~�67���v<����:\��=)W��Kmn
�o��J~I�(lEs|϶�.�VmG��X	B�z3�}�o��_>��\^G��h&�[�\η��؁�@$#��r֭:$:6H�:0?hW1���1�      �      x�3����K/���������� 4��      �   3  x��W�r�6}��q��v�I˒�(j���q'q<V�Ng2ӁHHB@ڑ�����>�o}Տ�,(Qr,�Rǎ	
�]�=g�؅��v񁳟��Jr��FD�~���EY(c�Z�a+�����y�q�E��h�q�1|u:v��n�	�0�&�_�a7���?����`��FO�[����mژ�q�2��X�X��X
WHeع�a{���D��,�L$3ڠ��XmX*pF����h��ڔ�S+R)t!\k���լ(r��ݾ��i%�%1�kUJ�JL�N�Ia�4m���];���9^��&[{� )]a2aYĶ>���`{~<����a��aEQ]��v7k�1���\σ��1v���F�$�P�z��dU�����Wn/
��kd̔�|*t"y��ި��4�RQ�6�AW��.����bd��Ȏ+�T�W��A�j�l�� Xj�7yme.�B���߇�=/�͸��g���iL���*5g'���T��2�,瀣� L�*���0ɜ��2�p�YX����oK��;A��w�P��''�p�ᝧ</8���\�-%�MX-�]c<�P/�p��6�m<�����Z��r6�b�xw�Y��T���+�������|�ۥ<��\|��P\�4�����4Ş�J��%~���Ĵ��-�je�S\������(��J��w1��h۝�,�:��V�^\Γ�g-Wm�ML�SC���e�-J����i�*�O�eM!�
8d�j
+3��i�/�D.�gcY����νO�2�}8[�w75�%�L-W���%�¡��!�jF�̈́n�q�
ڻӰ4>��6��=��2�kj,�����/:5A!�n�r�b�����FhO�KVmgU���	Z@ P�r�P�~L������������#vr�^�����󗧿\��c��˳�˳��A*)�)�R**��J�����W����e�=�EG,��`�ͅW��X��VR��Iu�_��I`C���Jв�s WA�E3@��l�Dڤ�+J��uo��-sC��&��\�9�B��62�LE�
�����M�!)���p�0'��b��X!:CG �3�b��@�"���{3-�Q�;��=q3�#�_�z9����,)@��@ףCe�oaμF��CdY�1��\1W��~b������y7}��hj6�������V2�U��My�+���A8}t����M8��s���k2%����r�+y�bzؤ&!�"��dNGª<q9�P���
D��Z��g\�V;�T�pgfLS%�s+�A�zn �����ĳ��`$�E>����
yMA���A�<7sS�D�;VU�_��2��i13)����|��:�|J�E�h�b.���BHd�! �~Hɤ�$&>�{ƫP�q��	�	j�2r"i�Y
�:�J)����t��e*n��KLPh.
�ŎSA��`�K�2�l��)
�W�)4Z��q��[&���L��ٍ2��,xZI(1�ϧ��q�A��iTMQ8uڗ�E�%A>�ш����]*��6��m��k	�-/e;�zny�����Ś�#      �   G   x�3�(�/(M-.I,�4�4�2�t��+IL.IL�/�4�r:'�d�e&E8��&��y �1����� ��e      �      x�3�K�+I,�4�30�4����� 9�_      �   _   x�m̭�0P�L���K
4UL `5����O<$7�NX��x�Ȱ�в���ZSL����yn�\�Z�~�`�F5�.�U��6�9��e&�      �   �   x�}�;�PD�z�{�>�Xl E(�(E`����#[�kNl�͢G?_��׾?Oہ;��d	/��gxM��-a���	_pN���p��m�l %v0$.`Q8�J4�It�K$�tcc��a+�!+��!+��!+��!+��!+��!+��i�~4��\      �   �  x���M��0FשS�cտ]^q��l"��������:��HYE����G�����6_�������q$�V;kQi���c��ŕdk�:J�V0��@w梋k�V�y�6\�_H��O_~����r�D2wk%��3\t��Z���$[���i�H���쮟 ;b�*p=MVͷ��v��^��8΀���͊� 8P� SIؐ��8[*&� � ݧ���3���49�E�ܛ`�
��9��4�"���q?��ķ�q�����g�;gdUjZ�qkt���I��k}��<����<��w��R��D���(�)X��
W]����snt+Mk����
�[J��"�-��R�rɮ��ʍ8�����fEnEi�3~���3*����,�F�V>��%"�V@7��]��l��`Ѝ�T��\X5��nh��̊� � #�      �      x������ � �      �   a  x��W�n�6}����E�%�%�8�t�I;m�P�c���T�Ů��������,ˢd9�6��s���!�$b]�ռ���u���X�t~@��U��1<GA�L)��ԙY�3���I�b�
M��4F��I�՚����@Ǳ��^M�!�!ו�Qy��T6�;��I2��|�a��r_���M��G�=��0tT��<�����k�q-�_7Of����#��B�e�&ˁ�ܖE��/�&�Y2Vue&C��L�Eϑ���>����08EQ�'%e�u��6���:�z����Yڧ��4O7,�`T��h��xi��N �=ZG�'lc ��\��'�t�h+�AꢻJCު��ڎ���5�VU���+�9�vP��oQ��?>�XmCWf� �DIeý���80t��f��a��t��W8>�Aį5��\ݜ��ֶ��>�<>�	���Ƈ�E\��O�&�K������ɧ=���'mM!���B�l��?��>�>�,���MZ�}Amƞ���Wx|�.�.���p��ְ��-Ėw�2*��I��_AS�ѯ)�K��V�0K��*)8�K��Ѧd:�GPT��$!�kUkU)*�''Ć��	� �
�P���VְV���i�xEA�Q��a���eV�*���Զ�+c�����Y7C�jK��9�JR��àI�ҹ���n�55�VE�p	�҆�SPp�u���8����`��m�qJ<��O�hWP�I�q���K�j�DvZ*J\߃m߂㫜!|��v��aB8������Hu@�l}D@_ ����r��G�}~z�_�ޞ�W�����LT���&�B�~/]|�;��>Ta���*� e
u���KTK��,V:��ӯ�CRy�r���:��m ���~}��a���~�b��,���.�;��	6
L��!숬�S��˥�a?���@xhf����d%�m�E�����|�:xO���a�������p;
�,��w�7fj���W �����p�D58�������aCt�i�7�*&�8/�2�u����*ԩ��&+�2�r��Es��xz}�����w3�5��*��$ŅI�-���q����M      �   x   x�3�4�L.-.��M-R��442�,�)�c ��;������g�s�������������$#���܂ļJ�PbJJQjq1�DyjRqfI*B 9?�$1�����@h+�N����� �}=�      �   s  x�]�Mn�P���S��㼟��f�3tcFQ@��:��69K/VRA2,��C���&?�����,<N�����l5�Im�9ݦyKjh`��0�|$y�Ĝ���#�vC)�Go��QDDi2Hw>��/�'�W�O�}�{A��U�PBr�Z��ee*1�H�����)�BB�4Ps�]�b�������}�������i���{]n�s]����_^/�v]�.�.�]��m_w�����뗍U�A��zZM2:Y̒�ڏz9'���q@H�`L���Å3fL����
	�!�5�MH���RMх��{�-�CH�ܴBK5E	�i�+�TS�B�d��
-�h�|��f�c�x�.=���<��?ϧ��?C��      �   �   x�5�K
�@�oN��nYK�9��A�`�����߮x]U�{�0�qu7��6W?�}޲�]R��6OY:��������s?Na=/K
��B{Ι��8���_���}��(Y Y!%��T�R�+HC�!��J��(�֢�Z��kJ�(���Z��kJ�(�P�k���9���VZ      �   �   x����� E��.T��,�	��%
�i��s�Up���})�|Tl��5���Я H�8���hw��Њ��M?�x*:/�b��T6P|ط���^�+�5��a��8o������G.��W?u0���=�$+:x�~�N�g^Q��'~�p,u�.�߸Q�?�~����Y�y?��������4���?/ ���5      �   �   x�͕1
�@E뿧��ά�)������$�"<�c@TbD-�3��c���gX�u�0��� e?��d��8�xv�D��eg���ΘA��&�,�=d��(��Ψ�Θ����Z�;cR+}g��P��m&�(��y���7�6ͱ�h��W��V�*���^E�[٫hz+{Me��	��U4a{M��^�̂�+R^�Mk����|\_���~�in�U:v���=l�������\�8���S��N��      �   �   x���A
�0EדS��LBR�	\�q�M�&X�b=�g�b6��H�*����L�@�
�{-�R]um'����つ�� N�h���-"�A����N�d2zzo��S��|b�?<U��J'}��Y�.7��%�,��ҥYBr�F�'=�w����Ml�g��]l�[^9�X~���=[��~��&}��ş'b��|�{ E(�      �     x�U��r�8�k�)���G$K�qlǲ��d�$s�RBh�$�����GI���M��|���T2�J� v��AJ�}.�1m��hd(Ϊ�J׃��Y��ΑL�J[��Bt�����oI���Qa(X�ߚ�d��RW�!�hH�	�Z��J�3�v�x�
G�%��+�8(�=RM�T	dSV��aM;���NY���31럫�l�U.fa�e8�j�$����
����S#1��ٳ�W�b�͕vG]�=G" ۵�Xý��T2�s�x�!���$�#�s��]��Z+�	۾�!?y�s*l��V�(�U��
�,��aQ� �2�Bv�d���G��(ï��m���;�e�Ĺ�l]p����^,*)c��NS��U����'ɫ��w2�C�v<ܒ��|��4t�g# gi�>�/�(����0�(��֦�I(.6s2��Eiv��I,.����8����8�l����t�7���LŅ3I*.���髇�$����Ǝ�ѨȎ;��S�#��MJ��4r�h:cw��c��Tf��>��T��af
�թx�ᔧ�������i5u:�ں�����-i(.�2���q�K���K�&0L����I|X�E3U2MO�of��x�³?{��L׿�l"�l��\�L�+ߔ�S�Bq=d�E,l����X\;z�Y�_n�l
��b.��)�,t��o��d��FP5[s��#�t%s%���N�x�&����nX���m���'↎�償|*n�
橸1����36M�R�<7��{�Lč���!��c`��nm���Xi5�ż�x<sS�4�)�A�Pz����4cd�a��4n�������;����Foy�W�Gi�(qI�WTj�(m;�.�7�1˭�3��4��Ϡ:^�B�Oz�9h������F7�������S ۭٸSq�vk�-��q�4��{��#v6��.�!{�6��ȶ�z<!�m�*�CO* m��:�[ K�E�Rjd�-L92����d���{
>�����8�-�iq�g�3��t��-q��D�R���-q������(������c��X2Y�b�!����(�/93`�m`Gn�Nac��	�x����(
d��}���������np�:6�eF+����)yS��Ώ�n���R ���r)�sE�e�@5����YP��ya�^�9��P���d��"ʎu|�G4�S`)��s�av(�l��U�K0�ۡA ��к³͑�+}�<��@ו��̵�ԀؕiJ��Q@�����l=� cW�sj��BP��p�0��DW ����b)@w��*`w�͑b��A�@�bM�D7���6�6�n��I�k:�?�����38<��][.#ȻFA������-�jm�C��S����X��	:mc��4^�=U�h���ƍ� �������c+����B��~��>�����?�RG��+Fw�i��5��J�GSx`V�ş��L�ƟL]P"�����?>�2j      �   [   x�3����2F �D���9��IQp��/M�24���KJS2��9݊RS���R+��M8�K���2J2��
�b���� �Lp      �      x������ � �      �   �   x�]��m!@�3T1��m��X迄e�h�8�'}��\N�ldR�mf\���zC�@S����i�'p��X�{P�!P����B(���t�����t�5�$ =O����x>�X��B۽��������-Q�kȯbabx�n�b�S��6��u�9���&H7س���t��_�{���L�      �   	  x��WY���~��+|����[��⾰I����M��b~��{NO��:s�ƍ0��������b9�� �&��ϕj�m�3Fǽ���� �J�r}Fz�Ɣ���`�?�,�W��9;qޥQ�C�.�+Mɭ��f�_aI�Ga���3�D૏��F�y_t�����D�������}�Ӥi=L�f֠b^K��&�yL�Yqu�:9�T]O/|���[^ S����A��'t�:ǐ\��A|}!i����I����e���+���X:�Y�,�z�F���#֭�I%��	�a��'��B�)&)������8.2�|�a#�V�oF��R[:�h���i"��εw��i�tX�OK���xBF�K1ݲ�۩��8A��'���1���v��̪��J�Q-j�T���g���Z/¦2��>����OX�?Xɣò7�n��R�&se�.�/��%,� ]���H���P/����ꨐ�Z���'�K�0_'R@�l��5��i�O����Kp/����� ��0oa�8͜�m����D�@�nϭh�g�.�L�����_nw�j~]����|Hi8��l���'ĥv���%��Wb+�W��D��lyP�:��[s*͛��<�v��L�����H/�2ق�G����N�./��/���R�$N)�Tr{���b�N��D;s�`u��o��Ȗ��'�Z��R�Y�8��}��%���Y<f#}
�AQ7# �9`�����aޅn�sL��~��Lί���׻���O����:R�v_� :�5���W�J=D�oO��Y���� ��¶� %a��������yK��9����sgj,���\n��-9	�s��7Ȣ��p*���]���w�c�w�#}{.@y���n�aa(��˶,b�/"�o/)�Ѽ`VQ����HWL����0HZNr�Y؃�(�	Q(���>�Y}|�����@�8.�}�q��v~�h�bx9t�Կ���M��S��I�§�&��VH�f+�U��s���|����k{a�8����!vr�}�Z"l���g���'�Bۗd�Iu6��m��u
��y4��׀O�ϕ'4E �+�E�����A�D:ڝ"+i����u\te��=����m,�ya�KcO��M��{l��1i@���y���� ��l�A9YsʙN��s�3J;r�L������D�jV��;^YA������q'���U`��J���MѭQ�c�{(N[�̅P�g2�w�ֺ�{�XX�Uz:�R�m��m3uр�3+���s��V�w�~�j,�nQŽ����HQ��P�I�"�@z���5u�h�8ޛa+BJJ�͘�`�'a�.���=֗g��)U<�����$曆i7F�ʫ�A�	��|��ǤϿ��iq�^��v���;��.�����6�e<3����bV4�fz�e�����P����\�~�$�YWgo!$ ������Z�΍�kC���͚�`�0��Z2u���O��<�Վn2O�#Β3��a7���M��0�k��*la{0�!j�e��V@�j|��'��QNsw��x��"�����R�A�9(ma�ن�6��]��sԪ	�����'����4����7����r/�Q|�L��8JTϱ�fO�E l��MQr�mF3#K=�>;��1��y	<t�����]��@�(��ݑ��0M)��R�Zt�,o��%�7L������Ӗ��ʕ���ٝK/��5����F:>;�'�ɸ�~��Ǩb�����K?����FѮ����%��5����s�P��Nqfg�\��8�[��U>��1��&+�$YGz`���.r������>���%ۋ����dè��hG��U��gq�a�6�~�_a���U�1�.��K�I`���u��p��COb~�.�2����<*J�L��J�U>nqk���He����+u����'R]9{_�1��4�)b\TG5%c�
^��΍�����I�c�O�D0���l���:���de�YZ��-O��=_���VtX]��ly����/�Ǐ�ļ^      �   6   x�34��4� b$���P�����4.CC�B#NCNKK��c���� �E�      �   2   x�345��4D�&朾~`��YR�Lr���u����������� ��      �      x������ � �      �      x������ � �      �      x������ � �      �   1   x�3��,(�O)M.�W0Da����!g	P<9?7)FAd�8Ӹb���� |v6      �   �   x�U��
�0Dϻ_�?�`Z�נ=V�z��4b7d��o@A<��a��n�$Q��-��!�Ĵ�����5�ԜiR2!��%+1e.5�O�h�'��up�gL�M ����I<�s0N�?�����|S�-"�@~2�      �   h   x�U˱@0����)�H��Ub0Z��P�'�z~�X�/��Q��ld�`�1P@����:����L2lX^p޺�����g:$D�������)�y�o�l$      �   k   x�M�1�0F���)�@!Vw�b�������N]���y��@��|��t��0yN�!�|�"g=��H��h���"/�u؜l.�AsJ�-!����Q����F����!J      �      x������ � �      �   -   x�3���4�441���,��9ӸL,8����PQ�h� ��	�      �      x������ � �      �      x������ � �      �   P  x��W�r�6}���/}�Hƕ �$זkO����d�� E�$X�t}}���@�9��S{F�, �9�,�.		�>]U=�m�k�l�J��Pv�0]��r��*8���mF������\��$�21!����2��Fh@Iu���(KS묘��S��U�!�1�L ��on}�@�V�-L��ߨ�Sa�u9B�#!c�}s�q�����mXD��Y�ز�괟V_��X�T��m�j3v���rJD�nc�����>c�i�$U��b�.��4f9�6�h�O{�ߑҷ eoA�߂4���!�[�3~�u�@�ץ$(�lLS��^?�q ޒl͍��Ɓt��Z%1��'��6)��	Og߫�z~~q4�C$���H��zvu�t�maU��v�J��E/U�/�ݩ�c�#�!�Gr�v�8^H��e�+M�W1�I�0�+���ρ�`ri����1	�W�B�Ԕ��B�.un��3�	���Ԙ4��}*=��"B`)羹��c`t�S_���^��$ގ���B7�	�|�	�x$b	��w\��:�=���R?b�Q]Ñ���ܪC]�R�*�Ό�"�T !!|se�D1^�>���kH��(6�ѫ0�1��e�Z�X���n�"+tC(��X�r�	�D�7_p�P��u,5�4QI���E�[]�C����r��x䛻���A��xʟ���]�"_x�?�:�=�8���n�q��H< /�����b%ο�J�"D���P�)���� ��lm=6���%�m�ڕZ�װ�u:�gf�M���̭�C��\KU�3�v����d1��c��؎w� �e�VU�����&5k)^�cG��Ȉ��y���a�XW5�6����X�F�6��uǞ�qp��K]�O$�a��������<����H��S�|vr�p݉��j����蒅�=����w����I�����l~1v�C.��MCDʽ� ��H����rx��館T���f�L�"/:H6�V5�X�0�C7�'z���X��!���t�D�Mb-�DEH�Lc(����y �v���O�����W�u
_{�Na�P��<n\2	�Y�� ���d�g�jX/>�4=88��͟      �   N   x�+.M�705ϩ�O��+O�,��,�����4����44�1~\�`��E%���%y���Fņ��1z\\\ ���      �      x������ � �      �   �   x�U�M�@������XP+����b�>�Y�/!��C�>�.�a``fx��Y�i�@�@J�i
O
��*�op�(b?�fڔ��Wfgy�H�3���8��?*����<���܊$��2�/(E,q
���KV��V�R��Pto۪YX�>ӸІ�qE7~}���x�`M�e;���|>�]�� X�co�E�      �     x��Wɮ�V\����nf;0�`c(��1�1�dZ���k)�Dj��zy��T�NU��m�%���[$��I�&n���X���.��G�读��Ӽ
K=\��}S�e�e/M���?�l�*_;z���ˮ	�lG���}��Kʰ�~��!8� �S4F��HQ������^a>+\�o�~�*4w�M��:�`��(L�ly����a3�t|@�`�F�4B��,N��D�)������@��W����E��q� w,�(�U5aV���I�d�4�-��`��a��(��Ẋ6����ysݟ��y��3|+2�%�M��4��0m�nЍϻǡ���R�t��I���i¾o�n�xl���}��P�8NC��vX��<�r������&/l��t#���ǔ-����j� j��g.�T
��t�Qȭ��}�)J!CO2WI��ht�rM�<�G1�m��f��q�����H�%��TZPM�Ԕ+63q+a�i:9c�&��"N���ܬ�M!?���D�̼�8%B���$��Rϓ����⨻\n�?�iB ���|��jȴNY�<dFLs'\G��s�d�=&���w�R`6���������	�r#&7�J3��f��r�]vo�Zd����ޙ��[aQ� ��0����������Q3nQ;]�P�o���������s$�t��EŌژ�����Y�L-b7eE}jX׃�["�5�=���ζ_p�zn7a���1@T(��-f�2��$5&*�%�k�mƭ� �8\Ա�R>��G�1��X��A��x��i��4�h�o�(�G!�%j5��qbzެ�|����W�1H�y����$d�=BŅ��\YM}t&�r��<H�F����k�&�pc���,�y�0iI��"�~iy{O���k�$���?Rh�r��!��c�4Ec<x�!h�ө�b�d�/�wj7l����::�Fه"�Q5+�p����B����ǌ�S���^�ދ`�A�>U���+|��bI4��ʜ��l�m^�18D�@���Il:*�����~����'��D���-�V�a���)���x`�A�'/o?�8a@����W-iꭔ����5�-ܳ��A�4J �ꤞr T�t�ņ=ڱ�>n���?ټ~T�!,�^��KO!G���Z�mR%W�-l�����IB���a��@eKG��".�	J�;�������Q#|����)���p�HU3����H^�s��{�$��V߇��F���G[ϙ��΍��Ť��y6�m������� ��,��     
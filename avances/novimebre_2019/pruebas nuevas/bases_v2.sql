--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6
-- Dumped by pg_dump version 11.6

-- Started on 2019-11-18 19:35:35

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 2880 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16518)
-- Name: captive_administrador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.captive_administrador (
    id_usuario integer NOT NULL,
    nombre_usuario text NOT NULL,
    correo_electronico text NOT NULL,
    usuario_descripcion text NOT NULL,
    passwd_usuario text NOT NULL,
    tipo_usuario integer NOT NULL,
    id_estado integer NOT NULL,
    fecha_ultima_conexion date DEFAULT CURRENT_DATE NOT NULL,
    fecha_registro date DEFAULT CURRENT_DATE NOT NULL
);


ALTER TABLE public.captive_administrador OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16516)
-- Name: captive_administrador_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.captive_administrador_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.captive_administrador_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 2881 (class 0 OID 0)
-- Dependencies: 196
-- Name: captive_administrador_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.captive_administrador_id_usuario_seq OWNED BY public.captive_administrador.id_usuario;


--
-- TOC entry 205 (class 1259 OID 16562)
-- Name: captive_carrera; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.captive_carrera (
    id_carrera integer NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.captive_carrera OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16560)
-- Name: captive_carrera_id_carrera_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.captive_carrera_id_carrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.captive_carrera_id_carrera_seq OWNER TO postgres;

--
-- TOC entry 2882 (class 0 OID 0)
-- Dependencies: 204
-- Name: captive_carrera_id_carrera_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.captive_carrera_id_carrera_seq OWNED BY public.captive_carrera.id_carrera;


--
-- TOC entry 199 (class 1259 OID 16529)
-- Name: captive_estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.captive_estado (
    id_estado integer NOT NULL,
    descripcion text NOT NULL,
    id_tipo_estado integer NOT NULL
);


ALTER TABLE public.captive_estado OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16527)
-- Name: captive_estado_id_estado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.captive_estado_id_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.captive_estado_id_estado_seq OWNER TO postgres;

--
-- TOC entry 2883 (class 0 OID 0)
-- Dependencies: 198
-- Name: captive_estado_id_estado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.captive_estado_id_estado_seq OWNED BY public.captive_estado.id_estado;


--
-- TOC entry 207 (class 1259 OID 16578)
-- Name: captive_tipo_estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.captive_tipo_estado (
    id_tipo_estado integer NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.captive_tipo_estado OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16576)
-- Name: captive_tipo_estado_id_tipo_estado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.captive_tipo_estado_id_tipo_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.captive_tipo_estado_id_tipo_estado_seq OWNER TO postgres;

--
-- TOC entry 2884 (class 0 OID 0)
-- Dependencies: 206
-- Name: captive_tipo_estado_id_tipo_estado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.captive_tipo_estado_id_tipo_estado_seq OWNED BY public.captive_tipo_estado.id_tipo_estado;


--
-- TOC entry 201 (class 1259 OID 16540)
-- Name: captive_tipo_usuario_admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.captive_tipo_usuario_admin (
    id_tipo integer NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.captive_tipo_usuario_admin OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16538)
-- Name: captive_tipo_usuario_admin_tipo_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.captive_tipo_usuario_admin_tipo_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.captive_tipo_usuario_admin_tipo_usuario_seq OWNER TO postgres;

--
-- TOC entry 2885 (class 0 OID 0)
-- Dependencies: 200
-- Name: captive_tipo_usuario_admin_tipo_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.captive_tipo_usuario_admin_tipo_usuario_seq OWNED BY public.captive_tipo_usuario_admin.id_tipo;


--
-- TOC entry 203 (class 1259 OID 16551)
-- Name: captive_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.captive_usuario (
    id_usuario integer NOT NULL,
    id_freeradius integer NOT NULL,
    carnet text NOT NULL,
    nombre text NOT NULL,
    apellido text NOT NULL,
    fecha_nac text NOT NULL,
    id_carrera integer NOT NULL,
    correo_electronico text NOT NULL
);


ALTER TABLE public.captive_usuario OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16549)
-- Name: captive_usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.captive_usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.captive_usuario_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 2886 (class 0 OID 0)
-- Dependencies: 202
-- Name: captive_usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.captive_usuario_id_usuario_seq OWNED BY public.captive_usuario.id_usuario;


--
-- TOC entry 2721 (class 2604 OID 16521)
-- Name: captive_administrador id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.captive_administrador ALTER COLUMN id_usuario SET DEFAULT nextval('public.captive_administrador_id_usuario_seq'::regclass);


--
-- TOC entry 2727 (class 2604 OID 16565)
-- Name: captive_carrera id_carrera; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.captive_carrera ALTER COLUMN id_carrera SET DEFAULT nextval('public.captive_carrera_id_carrera_seq'::regclass);


--
-- TOC entry 2724 (class 2604 OID 16532)
-- Name: captive_estado id_estado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.captive_estado ALTER COLUMN id_estado SET DEFAULT nextval('public.captive_estado_id_estado_seq'::regclass);


--
-- TOC entry 2728 (class 2604 OID 16581)
-- Name: captive_tipo_estado id_tipo_estado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.captive_tipo_estado ALTER COLUMN id_tipo_estado SET DEFAULT nextval('public.captive_tipo_estado_id_tipo_estado_seq'::regclass);


--
-- TOC entry 2725 (class 2604 OID 16543)
-- Name: captive_tipo_usuario_admin id_tipo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.captive_tipo_usuario_admin ALTER COLUMN id_tipo SET DEFAULT nextval('public.captive_tipo_usuario_admin_tipo_usuario_seq'::regclass);


--
-- TOC entry 2726 (class 2604 OID 16554)
-- Name: captive_usuario id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.captive_usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.captive_usuario_id_usuario_seq'::regclass);


--
-- TOC entry 2864 (class 0 OID 16518)
-- Dependencies: 197
-- Data for Name: captive_administrador; Type: TABLE DATA; Schema: public; Owner: postgres
--

/*
COPY public.captive_administrador (id_usuario, nombre_usuario, correo_electronico, usuario_descripcion, passwd_usuario, tipo_usuario, id_estado, fecha_ultima_conexion, fecha_registro) FROM stdin;
2	Kevin	kgmt@gmail.com	Segundo usuario administrativo	202cb962ac59075b964b07152d234b70	1	1	2019-11-16	2019-11-16
1	KEVIN	keec.4991@gmail.com	Primer usuario administrativo	21232f297a57a5a743894a0e4a801fc3	1	1	2019-11-16	2019-11-16
3	Kevin	k@gmail.com	Tercer usuario administrativo	250cf8b51c773f3f8dc8b4be867a9a02	2	1	2019-11-16	2019-11-16
*/


--
-- TOC entry 2872 (class 0 OID 16562)
-- Dependencies: 205
-- Data for Name: captive_carrera; Type: TABLE DATA; Schema: public; Owner: postgres
--

/*
COPY public.captive_carrera (id_carrera, descripcion) FROM stdin;
1	Ingenieria Civil
2	Ingenieria Quimica
5	Ingenieria Industrial
4	Ingenieria Electrica
3	Ingenieria Mecanica
6	Ingenieria Mecanica Electrica
7	Ingenieria Mecanica Industrial
9	Ingenieria en Ciencias y Sistemas
13	Ingenieria Electronica
35	Ingenieria Ambiental
*/


--
-- TOC entry 2866 (class 0 OID 16529)
-- Dependencies: 199
-- Data for Name: captive_estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

/*
COPY public.captive_estado (id_estado, descripcion, id_tipo_estado) FROM stdin;
1	Habilitado	1
2	Deshabilitado/Bloqueado	1
*/


--
-- TOC entry 2874 (class 0 OID 16578)
-- Dependencies: 207
-- Data for Name: captive_tipo_estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

/*
COPY public.captive_tipo_estado (id_tipo_estado, descripcion) FROM stdin;
1	Estado de usuarios administrativos
*/


--
-- TOC entry 2868 (class 0 OID 16540)
-- Dependencies: 201
-- Data for Name: captive_tipo_usuario_admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

/*
COPY public.captive_tipo_usuario_admin (id_tipo, descripcion) FROM stdin;
1	Master
2	Administrativo
*/


--
-- TOC entry 2870 (class 0 OID 16551)
-- Dependencies: 203
-- Data for Name: captive_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

/*
COPY public.captive_usuario (id_usuario, id_freeradius, carnet, nombre, apellido, fecha_nac, id_carrera, correo_electronico) FROM stdin;
1	1	201403935	Kevin	Esquivel	11/14/2019	5	k@g.com
2	2	201403937	Kevin	Funcional 3	11/16/2019	35	keec.4991@gmail.com
3	3	201403936	Kevin	Funcional 2	11/02/2019	35	k@gmail.com
*/


--
-- TOC entry 2887 (class 0 OID 0)
-- Dependencies: 196
-- Name: captive_administrador_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.captive_administrador_id_usuario_seq', 3, true);


--
-- TOC entry 2888 (class 0 OID 0)
-- Dependencies: 204
-- Name: captive_carrera_id_carrera_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.captive_carrera_id_carrera_seq', 1, false);


--
-- TOC entry 2889 (class 0 OID 0)
-- Dependencies: 198
-- Name: captive_estado_id_estado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.captive_estado_id_estado_seq', 1, false);


--
-- TOC entry 2890 (class 0 OID 0)
-- Dependencies: 206
-- Name: captive_tipo_estado_id_tipo_estado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.captive_tipo_estado_id_tipo_estado_seq', 1, false);


--
-- TOC entry 2891 (class 0 OID 0)
-- Dependencies: 200
-- Name: captive_tipo_usuario_admin_tipo_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.captive_tipo_usuario_admin_tipo_usuario_seq', 1, false);


--
-- TOC entry 2892 (class 0 OID 0)
-- Dependencies: 202
-- Name: captive_usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.captive_usuario_id_usuario_seq', 3, true);


--
-- TOC entry 2730 (class 2606 OID 16526)
-- Name: captive_administrador captive_administrador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.captive_administrador
    ADD CONSTRAINT captive_administrador_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 2738 (class 2606 OID 16570)
-- Name: captive_carrera captive_carrera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.captive_carrera
    ADD CONSTRAINT captive_carrera_pkey PRIMARY KEY (id_carrera);


--
-- TOC entry 2732 (class 2606 OID 16537)
-- Name: captive_estado captive_estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.captive_estado
    ADD CONSTRAINT captive_estado_pkey PRIMARY KEY (id_estado);


--
-- TOC entry 2740 (class 2606 OID 16586)
-- Name: captive_tipo_estado captive_tipo_estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.captive_tipo_estado
    ADD CONSTRAINT captive_tipo_estado_pkey PRIMARY KEY (id_tipo_estado);


--
-- TOC entry 2734 (class 2606 OID 16548)
-- Name: captive_tipo_usuario_admin captive_tipo_usuario_admin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.captive_tipo_usuario_admin
    ADD CONSTRAINT captive_tipo_usuario_admin_pkey PRIMARY KEY (id_tipo);


--
-- TOC entry 2736 (class 2606 OID 16559)
-- Name: captive_usuario captive_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.captive_usuario
    ADD CONSTRAINT captive_usuario_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 2741 (class 2606 OID 16571)
-- Name: captive_usuario captive_usuario_id_carrera_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.captive_usuario
    ADD CONSTRAINT captive_usuario_id_carrera_fkey FOREIGN KEY (id_carrera) REFERENCES public.captive_carrera(id_carrera) NOT VALID;


-- Completed on 2019-11-18 19:35:36

--
-- PostgreSQL database dump complete
--


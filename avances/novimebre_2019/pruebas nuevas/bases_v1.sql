--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6
-- Dumped by pg_dump version 11.6

-- Started on 2019-11-18 19:34:01

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
-- TOC entry 2864 (class 0 OID 16518)
-- Dependencies: 197
-- Data for Name: captive_administrador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.captive_administrador (id_usuario, nombre_usuario, correo_electronico, usuario_descripcion, passwd_usuario, tipo_usuario, id_estado, fecha_ultima_conexion, fecha_registro) FROM stdin;
2	Kevin	kgmt@gmail.com	Segundo usuario administrativo	202cb962ac59075b964b07152d234b70	1	1	2019-11-16	2019-11-16
1	KEVIN	keec.4991@gmail.com	Primer usuario administrativo	21232f297a57a5a743894a0e4a801fc3	1	1	2019-11-16	2019-11-16
3	Kevin	k@gmail.com	Tercer usuario administrativo	250cf8b51c773f3f8dc8b4be867a9a02	2	1	2019-11-16	2019-11-16
\.


--
-- TOC entry 2872 (class 0 OID 16562)
-- Dependencies: 205
-- Data for Name: captive_carrera; Type: TABLE DATA; Schema: public; Owner: postgres
--

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
\.


--
-- TOC entry 2866 (class 0 OID 16529)
-- Dependencies: 199
-- Data for Name: captive_estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.captive_estado (id_estado, descripcion, id_tipo_estado) FROM stdin;
1	Habilitado	1
2	Deshabilitado/Bloqueado	1
\.


--
-- TOC entry 2874 (class 0 OID 16578)
-- Dependencies: 207
-- Data for Name: captive_tipo_estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.captive_tipo_estado (id_tipo_estado, descripcion) FROM stdin;
1	Estado de usuarios administrativos
\.


--
-- TOC entry 2868 (class 0 OID 16540)
-- Dependencies: 201
-- Data for Name: captive_tipo_usuario_admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.captive_tipo_usuario_admin (id_tipo, descripcion) FROM stdin;
1	Master
2	Administrativo
\.


--
-- TOC entry 2870 (class 0 OID 16551)
-- Dependencies: 203
-- Data for Name: captive_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.captive_usuario (id_usuario, id_freeradius, carnet, nombre, apellido, fecha_nac, id_carrera, correo_electronico) FROM stdin;
1	1	201403935	Kevin	Esquivel	11/14/2019	5	k@g.com
2	2	201403937	Kevin	Funcional 3	11/16/2019	35	keec.4991@gmail.com
3	3	201403936	Kevin	Funcional 2	11/02/2019	35	k@gmail.com
\.


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


-- Completed on 2019-11-18 19:34:02

--
-- PostgreSQL database dump complete
--


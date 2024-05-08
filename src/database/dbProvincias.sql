--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-05-08 10:56:10

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 4757 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16400)
-- Name: provinces; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provinces (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    full_name character varying(150) NOT NULL,
    latitude numeric(9,6) NOT NULL,
    display_order integer,
    longitude numeric
);


ALTER TABLE public.provinces OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16399)
-- Name: provinces_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.provinces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.provinces_id_seq OWNER TO postgres;

--
-- TOC entry 4758 (class 0 OID 0)
-- Dependencies: 215
-- Name: provinces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.provinces_id_seq OWNED BY public.provinces.id;


--
-- TOC entry 4604 (class 2604 OID 16403)
-- Name: provinces id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinces ALTER COLUMN id SET DEFAULT nextval('public.provinces_id_seq'::regclass);


--
-- TOC entry 4751 (class 0 OID 16400)
-- Dependencies: 216
-- Data for Name: provinces; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.provinces VALUES (2, 'Ciudad Autónoma de Buenos Aires', 'Ciudad Autónoma de Buenos Aires', -34.614441, NULL, -58.445877075195312);
INSERT INTO public.provinces VALUES (6, 'Buenos Aires', 'Provincia de Buenos Aires', -36.677391, NULL, -60.558475494384766);
INSERT INTO public.provinces VALUES (10, 'Catamarca', 'Provincia de Catamarca', -27.335955, NULL, -66.9478988647461);
INSERT INTO public.provinces VALUES (14, 'Córdoba', 'Provincia de Córdoba', -32.144798, NULL, -63.801975250244141);
INSERT INTO public.provinces VALUES (18, 'Corrientes', 'Provincia de Corrientes', -28.774204, NULL, -57.801082611083984);
INSERT INTO public.provinces VALUES (22, 'Chaco', 'Provincia del Chaco', -26.386988, NULL, -60.765117645263672);
INSERT INTO public.provinces VALUES (26, 'Chubut', 'Provincia del Chubut', -43.788628, NULL, -68.5267333984375);
INSERT INTO public.provinces VALUES (30, 'Entre Ríos', 'Provincia de Entre Ríos', -32.058929, NULL, -59.201263427734375);
INSERT INTO public.provinces VALUES (34, 'Formosa', 'Provincia de Formosa', -24.895086, NULL, -59.93218994140625);
INSERT INTO public.provinces VALUES (38, 'Jujuy', 'Provincia de Jujuy', -23.319975, NULL, -65.7644271850586);
INSERT INTO public.provinces VALUES (42, 'La Pampa', 'Provincia de La Pampa', -37.135067, NULL, -65.447647094726562);
INSERT INTO public.provinces VALUES (46, 'La Rioja', 'Provincia de La Rioja', -29.684937, NULL, -67.181755065917969);
INSERT INTO public.provinces VALUES (50, 'Mendoza', 'Provincia de Mendoza', -34.630390, NULL, -68.58294677734375);
INSERT INTO public.provinces VALUES (54, 'Misiones', 'Provincia de Misiones', -26.875303, NULL, -54.651569366455078);
INSERT INTO public.provinces VALUES (58, 'Neuquén', 'Provincia del Neuquén', -38.641983, NULL, -70.1198959350586);
INSERT INTO public.provinces VALUES (62, 'Río Negro', 'Provincia de Río Negro', -40.405079, NULL, -67.22967529296875);
INSERT INTO public.provinces VALUES (66, 'Salta', 'Provincia de Salta', -24.299284, NULL, -64.814155578613281);
INSERT INTO public.provinces VALUES (70, 'San Juan', 'Provincia de San Juan', -30.865662, NULL, -68.8881607055664);
INSERT INTO public.provinces VALUES (74, 'San Luis', 'Provincia de San Luis', -33.761105, NULL, -66.025230407714844);
INSERT INTO public.provinces VALUES (78, 'Santa Cruz', 'Provincia de Santa Cruz', -48.815548, NULL, -69.955764770507812);
INSERT INTO public.provinces VALUES (82, 'Santa Fe', 'Provincia de Santa Fe', -30.708822, NULL, -60.950687408447266);
INSERT INTO public.provinces VALUES (86, 'Santiago del Estero', 'Provincia de Santiago del Estero', -27.783432, NULL, -63.252628326416016);
INSERT INTO public.provinces VALUES (90, 'Tucumán', 'Provincia de Tucumán', -26.948284, NULL, -65.3647689819336);
INSERT INTO public.provinces VALUES (94, 'Tierra del Fuego, Antártida e Islas del Atlántico Sur', 'Provincia de Tierra del Fuego, Antártida e Islas del Atlántico Sur', -82.521133, NULL, -50.74285888671875);


--
-- TOC entry 4759 (class 0 OID 0)
-- Dependencies: 215
-- Name: provinces_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.provinces_id_seq', 1, false);


--
-- TOC entry 4606 (class 2606 OID 16405)
-- Name: provinces provinces_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT provinces_pkey PRIMARY KEY (id);


-- Completed on 2024-05-08 10:56:11

--
-- PostgreSQL database dump complete
--


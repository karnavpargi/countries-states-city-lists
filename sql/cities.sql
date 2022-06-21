--
-- PostgreSQL database dump
--

-- Dumped from database version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)

-- Started on 2022-06-21 17:18:10 IST

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
-- TOC entry 3022 (class 1262 OID 26451)
-- Name: hotel_booking; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE hotel_booking WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_IN' LC_CTYPE = 'en_IN';


ALTER DATABASE hotel_booking OWNER TO postgres;

\connect hotel_booking

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 223 (class 1259 OID 27652)
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    prefix character varying(5),
    fk_state_id bigint NOT NULL,
    is_district boolean DEFAULT false NOT NULL,
    is_township boolean DEFAULT false NOT NULL,
    fk_district_id bigint,
    is_blocked boolean DEFAULT false NOT NULL
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- TOC entry 3023 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN cities.is_township; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cities.is_township IS 'tahsil, taluka, taluk or Township';


--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN cities.fk_district_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cities.fk_district_id IS 'city belongs to district';


--
-- TOC entry 222 (class 1259 OID 27650)
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_id_seq OWNER TO postgres;

--
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 222
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- TOC entry 2881 (class 2604 OID 27655)
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- TOC entry 3016 (class 0 OID 27652)
-- Dependencies: 223
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cities VALUES (1, 'Ahmedabad', 'ADI', 12, true, true, 1, false);
INSERT INTO public.cities VALUES (2, 'Amreli', 'AMR', 12, true, true, 2, false);
INSERT INTO public.cities VALUES (3, 'Anand', 'ANND', 12, true, true, 3, false);
INSERT INTO public.cities VALUES (4, 'Aravalli-Modasa', 'ARV', 12, true, true, 4, false);
INSERT INTO public.cities VALUES (5, 'Banaskantha-Palanpur', 'PNU', 12, true, true, 5, false);
INSERT INTO public.cities VALUES (6, 'Botad', 'BOT', 12, true, true, 6, false);
INSERT INTO public.cities VALUES (7, 'Bharuch', 'BH', 12, true, true, 7, false);
INSERT INTO public.cities VALUES (8, 'Bhavnagar', 'BHA', 12, true, true, 8, false);
INSERT INTO public.cities VALUES (9, 'Chhota Udaipur', 'CHU', 12, true, true, 9, false);
INSERT INTO public.cities VALUES (10, 'Dahod', 'DHD', 12, true, true, 10, false);
INSERT INTO public.cities VALUES (11, 'Devbhoomi Dwarka-Khambhalia', 'DWD', 12, true, true, 11, false);
INSERT INTO public.cities VALUES (12, 'Gandhinagar', 'GND', 12, true, true, 12, false);
INSERT INTO public.cities VALUES (13, 'Gir Somnath-Veraval', 'GIR', 12, true, true, 13, false);
INSERT INTO public.cities VALUES (14, 'Jamnagar', 'JMN', 12, true, true, 14, false);
INSERT INTO public.cities VALUES (15, 'Junagadh', 'JNG', 12, true, true, 15, false);
INSERT INTO public.cities VALUES (16, 'Kutch-Bhuj', 'BHUJ', 12, true, true, 16, false);
INSERT INTO public.cities VALUES (17, 'Kheda-Nadiad', 'ND', 12, true, true, 17, false);
INSERT INTO public.cities VALUES (18, 'Mahisagar-Lunavada', 'MHS', 12, true, true, 18, false);
INSERT INTO public.cities VALUES (19, 'Mahesana', 'MHS', 12, true, true, 19, false);
INSERT INTO public.cities VALUES (20, 'Morbi', 'MOR', 12, true, true, 20, false);
INSERT INTO public.cities VALUES (21, 'Narmada-Rajpipla', 'NAR', 12, true, true, 21, false);
INSERT INTO public.cities VALUES (22, 'Navsari', 'NVS', 12, true, true, 22, false);
INSERT INTO public.cities VALUES (23, 'Panchmahal-Godhra', 'PAN', 12, true, true, 23, false);
INSERT INTO public.cities VALUES (24, 'Patan', 'PAT', 12, true, true, 24, false);
INSERT INTO public.cities VALUES (25, 'Porbandar', 'POR', 12, true, true, 25, false);
INSERT INTO public.cities VALUES (26, 'Rajkot', 'RJT', 12, true, true, 26, false);
INSERT INTO public.cities VALUES (27, 'Sabarkantha-Himatnagar', 'SBK', 12, true, true, 27, false);
INSERT INTO public.cities VALUES (28, 'Surat', 'ST', 12, true, true, 28, false);
INSERT INTO public.cities VALUES (29, 'Surendranagar', 'SRN', 12, true, true, 29, false);
INSERT INTO public.cities VALUES (30, 'Tapi-Vyara', 'TAP', 12, true, true, 30, false);
INSERT INTO public.cities VALUES (31, 'The Dangs-Ahwa', 'DAN', 12, true, true, 31, false);
INSERT INTO public.cities VALUES (32, 'Vadodara', 'BRC', 12, true, true, 32, false);
INSERT INTO public.cities VALUES (33, 'Valsad', 'BL', 12, true, true, 33, false);
INSERT INTO public.cities VALUES (34, 'Limkheda', 'LIM', 12, false, true, 10, false);
INSERT INTO public.cities VALUES (35, 'Devgadbaria', 'DEV', 12, false, true, 10, false);
INSERT INTO public.cities VALUES (36, 'Jhalod', 'JHL', 12, false, true, 10, false);
INSERT INTO public.cities VALUES (37, 'Fatepura', 'FAT', 12, false, true, 10, false);
INSERT INTO public.cities VALUES (38, 'Dhanpur', 'DHP', 12, false, true, 10, false);
INSERT INTO public.cities VALUES (39, 'Sanjeli', 'SAN', 12, false, true, 10, false);
INSERT INTO public.cities VALUES (40, 'Singhvad', 'SNG', 12, false, true, 10, false);
INSERT INTO public.cities VALUES (41, 'Garbada', 'GAR', 12, false, true, 10, false);
INSERT INTO public.cities VALUES (42, 'Mandal', 'MND', 12, false, true, 1, false);
INSERT INTO public.cities VALUES (43, 'Detroj Rampura', 'DRR', 12, false, true, 1, false);
INSERT INTO public.cities VALUES (44, 'Viramgam', 'VGM', 12, false, true, 1, false);
INSERT INTO public.cities VALUES (45, 'Sanand', 'SAN', 12, false, true, 1, false);
INSERT INTO public.cities VALUES (46, 'Daskroi', 'DSK', 12, false, true, 1, false);
INSERT INTO public.cities VALUES (47, 'Dholka', 'DHL', 12, false, true, 1, false);
INSERT INTO public.cities VALUES (48, 'Bavla', 'BAV', 12, false, true, 1, false);
INSERT INTO public.cities VALUES (49, 'Dhandhuka', 'DHK', 12, false, true, 1, false);


--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 222
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 1, false);


--
-- TOC entry 2886 (class 2606 OID 27660)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- TOC entry 2887 (class 2606 OID 27661)
-- Name: cities cities_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_fk FOREIGN KEY (fk_district_id) REFERENCES public.cities(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2888 (class 2606 OID 27666)
-- Name: cities cities_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_fk_1 FOREIGN KEY (fk_state_id) REFERENCES public.states(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


-- Completed on 2022-06-21 17:18:10 IST

--
-- PostgreSQL database dump complete
--


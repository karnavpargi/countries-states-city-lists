--
-- PostgreSQL database dump
--

-- Dumped from database version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)

-- Started on 2022-06-21 17:17:42 IST

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
-- TOC entry 3020 (class 1262 OID 26451)
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
-- TOC entry 221 (class 1259 OID 27631)
-- Name: states; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.states (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    prefix character varying(5),
    fk_country_id bigint NOT NULL,
    union_territory boolean DEFAULT false,
    is_blocked boolean DEFAULT false NOT NULL
);


ALTER TABLE public.states OWNER TO postgres;

--
-- TOC entry 3021 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN states.union_territory; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.states.union_territory IS 'Union Territory';


--
-- TOC entry 220 (class 1259 OID 27629)
-- Name: states_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.states_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.states_id_seq OWNER TO postgres;

--
-- TOC entry 3022 (class 0 OID 0)
-- Dependencies: 220
-- Name: states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.states_id_seq OWNED BY public.states.id;


--
-- TOC entry 2881 (class 2604 OID 27634)
-- Name: states id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.states ALTER COLUMN id SET DEFAULT nextval('public.states_id_seq'::regclass);


--
-- TOC entry 3014 (class 0 OID 27631)
-- Dependencies: 221
-- Data for Name: states; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.states VALUES (2, 'Andha Pradesh', 'AP', 100, false, false);
INSERT INTO public.states VALUES (3, 'Arunachal Pradesh', 'AR', 100, false, false);
INSERT INTO public.states VALUES (4, 'Assam', 'AS', 100, false, false);
INSERT INTO public.states VALUES (5, 'Bihar', 'BR', 100, false, false);
INSERT INTO public.states VALUES (7, 'Chattisgarh', 'CG', 100, false, false);
INSERT INTO public.states VALUES (11, 'Goa', 'GA', 100, false, false);
INSERT INTO public.states VALUES (12, 'Gujarat', 'GJ', 100, false, false);
INSERT INTO public.states VALUES (13, 'Haryana', 'HR', 100, false, false);
INSERT INTO public.states VALUES (14, 'Himachal Pradesh', 'HP', 100, false, false);
INSERT INTO public.states VALUES (16, 'Jharkhand', 'JH', 100, false, false);
INSERT INTO public.states VALUES (17, 'Karnataka', 'KA', 100, false, false);
INSERT INTO public.states VALUES (18, 'Kerala', 'KL', 100, false, false);
INSERT INTO public.states VALUES (21, 'Madhya Pradesh', 'MP', 100, false, false);
INSERT INTO public.states VALUES (22, 'Maharashtra', 'MH', 100, false, false);
INSERT INTO public.states VALUES (23, 'Manipur', 'MN', 100, false, false);
INSERT INTO public.states VALUES (24, 'Meghalaya', 'ML', 100, false, false);
INSERT INTO public.states VALUES (25, 'Mizoram', 'MZ', 100, false, false);
INSERT INTO public.states VALUES (26, 'Nagaland', 'NL', 100, false, false);
INSERT INTO public.states VALUES (27, 'Odisha', 'OR', 100, false, false);
INSERT INTO public.states VALUES (29, 'Punjab', 'PB', 100, false, false);
INSERT INTO public.states VALUES (30, 'Rajasthan', 'RJ', 100, false, false);
INSERT INTO public.states VALUES (31, 'Sikkim', 'SK', 100, false, false);
INSERT INTO public.states VALUES (32, 'Tamil Nadu', 'TN', 100, false, false);
INSERT INTO public.states VALUES (33, 'Telangana', 'TG', 100, false, false);
INSERT INTO public.states VALUES (34, 'Tripura', 'TR', 100, false, false);
INSERT INTO public.states VALUES (35, 'Uttar Pradesh', 'UP', 100, false, false);
INSERT INTO public.states VALUES (36, 'Uttarakhand', 'UK', 100, false, false);
INSERT INTO public.states VALUES (37, 'West Bengal', 'WB', 100, false, false);
INSERT INTO public.states VALUES (1, 'Andaman and Nicobar Islands', 'AN', 100, true, false);
INSERT INTO public.states VALUES (6, 'Chandigarh', 'CH', 100, true, false);
INSERT INTO public.states VALUES (8, 'Dadra and Nagar Haveli', 'DN', 100, true, false);
INSERT INTO public.states VALUES (9, 'Daman and Diu', 'DD', 100, true, false);
INSERT INTO public.states VALUES (10, 'Delhi', 'DL', 100, true, false);
INSERT INTO public.states VALUES (15, 'Jammu and Kashmir', 'JK', 100, true, false);
INSERT INTO public.states VALUES (19, 'Ladakh', 'LA', 100, true, false);
INSERT INTO public.states VALUES (20, 'Lakshadweep', 'LD', 100, true, false);
INSERT INTO public.states VALUES (28, 'Puducherry', 'PY', 100, true, false);


--
-- TOC entry 3023 (class 0 OID 0)
-- Dependencies: 220
-- Name: states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.states_id_seq', 1, false);


--
-- TOC entry 2885 (class 2606 OID 27638)
-- Name: states states_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);


--
-- TOC entry 2886 (class 2606 OID 27675)
-- Name: states states_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.states
    ADD CONSTRAINT states_fk FOREIGN KEY (fk_country_id) REFERENCES public.countries(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


-- Completed on 2022-06-21 17:17:42 IST

--
-- PostgreSQL database dump complete
--


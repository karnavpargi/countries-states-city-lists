--
-- PostgreSQL database dump
--

-- Dumped from database version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)

-- Started on 2022-06-21 17:17:10 IST

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
-- TOC entry 3018 (class 1262 OID 26451)
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
-- TOC entry 219 (class 1259 OID 27622)
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    prefix character varying(3),
    isd_code smallint,
    is_blocked boolean DEFAULT false NOT NULL
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 27620)
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_id_seq OWNER TO postgres;

--
-- TOC entry 3019 (class 0 OID 0)
-- Dependencies: 218
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- TOC entry 2881 (class 2604 OID 27625)
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- TOC entry 3012 (class 0 OID 27622)
-- Dependencies: 219
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.countries VALUES (1, 'Afghanistan', 'AF', 93, false);
INSERT INTO public.countries VALUES (2, 'Albania', 'AL', 355, false);
INSERT INTO public.countries VALUES (3, 'Algeria', 'DZ', 213, false);
INSERT INTO public.countries VALUES (4, 'American Samoa', 'AS', 684, false);
INSERT INTO public.countries VALUES (5, 'Andorra', 'AD', 376, false);
INSERT INTO public.countries VALUES (6, 'Angola', 'AO', 244, false);
INSERT INTO public.countries VALUES (7, 'Anguilla', 'AI', 1264, false);
INSERT INTO public.countries VALUES (8, 'Antarctica', 'AQ', 672, false);
INSERT INTO public.countries VALUES (9, 'Antigua and Barbuda', 'AG', 1268, false);
INSERT INTO public.countries VALUES (10, 'Argentina', 'AR', 54, false);
INSERT INTO public.countries VALUES (11, 'Armenia', 'AM', 374, false);
INSERT INTO public.countries VALUES (12, 'Aruba', 'AW', 297, false);
INSERT INTO public.countries VALUES (13, 'Australia', 'AU', 61, false);
INSERT INTO public.countries VALUES (14, 'Austria', 'AT', 43, false);
INSERT INTO public.countries VALUES (15, 'Azerbaijan', 'AZ', 994, false);
INSERT INTO public.countries VALUES (16, 'Bahamas', 'BS', 1242, false);
INSERT INTO public.countries VALUES (17, 'Bahrain', 'BH', 973, false);
INSERT INTO public.countries VALUES (18, 'Bangladesh', 'BD', 880, false);
INSERT INTO public.countries VALUES (19, 'Barbados', 'BB', 1246, false);
INSERT INTO public.countries VALUES (20, 'Belarus', 'BY', 375, false);
INSERT INTO public.countries VALUES (21, 'Belgium', 'BE', 32, false);
INSERT INTO public.countries VALUES (22, 'Belize', 'BZ', 501, false);
INSERT INTO public.countries VALUES (23, 'Benin', 'BJ', 229, false);
INSERT INTO public.countries VALUES (24, 'Bermuda', 'BM', 1441, false);
INSERT INTO public.countries VALUES (25, 'Bhutan', 'BT', 975, false);
INSERT INTO public.countries VALUES (26, 'Bolivia', 'BO', 591, false);
INSERT INTO public.countries VALUES (27, 'Bosnia and Herzegovina', 'BA', 387, false);
INSERT INTO public.countries VALUES (28, 'Botswana', 'BW', 267, false);
INSERT INTO public.countries VALUES (29, 'Brazil', 'BR', 55, false);
INSERT INTO public.countries VALUES (30, 'British Indian Ocean Territory', 'IO', 246, false);
INSERT INTO public.countries VALUES (31, 'Brunei Darussalam', 'BN', 673, false);
INSERT INTO public.countries VALUES (32, 'Bulgaria', 'BG', 359, false);
INSERT INTO public.countries VALUES (33, 'Burkina Faso', 'BF', 226, false);
INSERT INTO public.countries VALUES (34, 'Burundi', 'BI', 257, false);
INSERT INTO public.countries VALUES (35, 'Cabo Verde', 'CV', 238, false);
INSERT INTO public.countries VALUES (36, 'Cambodia', 'KH', 855, false);
INSERT INTO public.countries VALUES (37, 'Cameroon', 'CM', 237, false);
INSERT INTO public.countries VALUES (38, 'Canada', 'CA', 1, false);
INSERT INTO public.countries VALUES (39, 'Cayman Islands', 'KY', 1345, false);
INSERT INTO public.countries VALUES (40, 'Central African Republic', 'CF', 236, false);
INSERT INTO public.countries VALUES (41, 'Chad', 'TD', 235, false);
INSERT INTO public.countries VALUES (42, 'Chile', 'CL', 56, false);
INSERT INTO public.countries VALUES (43, 'China', 'CN', 86, false);
INSERT INTO public.countries VALUES (44, 'Christmas Island', 'CX', 61, false);
INSERT INTO public.countries VALUES (45, 'Cocos (Keeling) Islands', 'CC', 61, false);
INSERT INTO public.countries VALUES (46, 'Colombia', 'CO', 57, false);
INSERT INTO public.countries VALUES (47, 'Comoros', 'KM', 269, false);
INSERT INTO public.countries VALUES (48, 'Congo', 'CG', 242, false);
INSERT INTO public.countries VALUES (49, 'Congo, the Democratic Republic of the', 'CD', 243, false);
INSERT INTO public.countries VALUES (50, 'Cook Islands', 'CK', 682, false);
INSERT INTO public.countries VALUES (51, 'Costa Rica', 'CR', 506, false);
INSERT INTO public.countries VALUES (52, 'Côte d''Ivoire', 'CI', 225, false);
INSERT INTO public.countries VALUES (53, 'Croatia', 'HR', 385, false);
INSERT INTO public.countries VALUES (54, 'Cuba', 'CU', 53, false);
INSERT INTO public.countries VALUES (55, 'Curaçao', 'CW', 599, false);
INSERT INTO public.countries VALUES (56, 'Cyprus', 'CY', 357, false);
INSERT INTO public.countries VALUES (57, 'Czechia', 'CZ', 420, false);
INSERT INTO public.countries VALUES (58, 'Denmark', 'DK', 45, false);
INSERT INTO public.countries VALUES (59, 'Djibouti', 'DJ', 253, false);
INSERT INTO public.countries VALUES (60, 'Dominica', 'DM', 1767, false);
INSERT INTO public.countries VALUES (61, 'Dominican Republic', 'DO', 1809, false);
INSERT INTO public.countries VALUES (62, 'DR Congo', 'CD', 243, false);
INSERT INTO public.countries VALUES (63, 'Ecuador', 'EC', 593, false);
INSERT INTO public.countries VALUES (64, 'Egypt', 'EG', 20, false);
INSERT INTO public.countries VALUES (65, 'El Salvador', 'SV', 503, false);
INSERT INTO public.countries VALUES (66, 'Equatorial Guinea', 'GQ', 240, false);
INSERT INTO public.countries VALUES (67, 'Eritrea', 'ER', 291, false);
INSERT INTO public.countries VALUES (68, 'Estonia', 'EE', 372, false);
INSERT INTO public.countries VALUES (69, 'Ethiopia', 'ET', 251, false);
INSERT INTO public.countries VALUES (70, 'Falkland Islands (Malvinas)', 'FK', 500, false);
INSERT INTO public.countries VALUES (71, 'Faroe Islands', 'FO', 298, false);
INSERT INTO public.countries VALUES (72, 'Fiji', 'FJ', 679, false);
INSERT INTO public.countries VALUES (73, 'Finland', 'FI', 358, false);
INSERT INTO public.countries VALUES (74, 'France', 'FR', 33, false);
INSERT INTO public.countries VALUES (75, 'French Guiana', 'GF', 594, false);
INSERT INTO public.countries VALUES (76, 'French Polynesia', 'PF', 689, false);
INSERT INTO public.countries VALUES (77, 'French Southern Territories', 'TF', 0, false);
INSERT INTO public.countries VALUES (78, 'Gabon', 'GA', 241, false);
INSERT INTO public.countries VALUES (79, 'Gambia', 'GM', 220, false);
INSERT INTO public.countries VALUES (80, 'Georgia', 'GE', 995, false);
INSERT INTO public.countries VALUES (81, 'Germany', 'DE', 49, false);
INSERT INTO public.countries VALUES (82, 'Ghana', 'GH', 233, false);
INSERT INTO public.countries VALUES (83, 'Gibraltar', 'GI', 350, false);
INSERT INTO public.countries VALUES (84, 'Greece', 'GR', 30, false);
INSERT INTO public.countries VALUES (85, 'Greenland', 'GL', 299, false);
INSERT INTO public.countries VALUES (86, 'Grenada', 'GD', 1473, false);
INSERT INTO public.countries VALUES (87, 'Guatemala', 'GT', 502, false);
INSERT INTO public.countries VALUES (88, 'Guinea', 'GN', 224, false);
INSERT INTO public.countries VALUES (89, 'Guinea-Bissau', 'GW', 245, false);
INSERT INTO public.countries VALUES (90, 'Guadeloupe', 'GP', 590, false);
INSERT INTO public.countries VALUES (91, 'Guam', 'GU', 1671, false);
INSERT INTO public.countries VALUES (92, 'Guyana', 'GY', 592, false);
INSERT INTO public.countries VALUES (93, 'Haiti', 'HT', 509, false);
INSERT INTO public.countries VALUES (94, 'Heard Island and McDonald Islands', 'HM', 0, false);
INSERT INTO public.countries VALUES (95, 'Holy See (Vatican City State)', 'VA', 39, false);
INSERT INTO public.countries VALUES (96, 'Honduras', 'HN', 504, false);
INSERT INTO public.countries VALUES (97, 'Hong Kong', 'HK', 852, false);
INSERT INTO public.countries VALUES (98, 'Hungary', 'HU', 36, false);
INSERT INTO public.countries VALUES (99, 'Iceland', 'IS', 354, false);
INSERT INTO public.countries VALUES (100, 'India', 'IN', 91, false);
INSERT INTO public.countries VALUES (101, 'Indonesia', 'ID', 62, false);
INSERT INTO public.countries VALUES (102, 'Iran', 'IR', 98, false);
INSERT INTO public.countries VALUES (103, 'Iraq', 'IQ', 964, false);
INSERT INTO public.countries VALUES (104, 'Ireland', 'IE', 353, false);
INSERT INTO public.countries VALUES (105, 'Israel', '', 972, false);
INSERT INTO public.countries VALUES (106, 'Italy', NULL, NULL, false);
INSERT INTO public.countries VALUES (107, 'Jamaica', NULL, NULL, false);
INSERT INTO public.countries VALUES (108, 'Japan', NULL, NULL, false);


--
-- TOC entry 3020 (class 0 OID 0)
-- Dependencies: 218
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_id_seq', 1, false);


--
-- TOC entry 2884 (class 2606 OID 27628)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


-- Completed on 2022-06-21 17:17:10 IST

--
-- PostgreSQL database dump complete
--


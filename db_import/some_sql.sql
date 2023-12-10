--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: cars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cars (
    id integer NOT NULL,
    brand character varying(255),
    year character varying(255),
    state_number character varying(255),
    user_id integer
);


ALTER TABLE public.cars OWNER TO postgres;

--
-- Name: cars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cars_id_seq OWNER TO postgres;

--
-- Name: cars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cars_id_seq OWNED BY public.cars.id;


--
-- Name: owners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.owners (
    id integer NOT NULL,
    name character varying(255),
    surname character varying(255),
    city character varying(255)
);


ALTER TABLE public.owners OWNER TO postgres;

--
-- Name: owners_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.owners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.owners_id_seq OWNER TO postgres;

--
-- Name: owners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.owners_id_seq OWNED BY public.owners.id;


--
-- Name: cars id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars ALTER COLUMN id SET DEFAULT nextval('public.cars_id_seq'::regclass);


--
-- Name: owners id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.owners ALTER COLUMN id SET DEFAULT nextval('public.owners_id_seq'::regclass);


--
-- Data for Name: cars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cars (id, brand, year, state_number, user_id) FROM stdin;
1	Toyota	1998	у552ке37	1
2	Jeep	2002	к885уу37	2
3	Mercedes-Benz	2020	я316фы37	3
4	Лада	2012	у087дл37	4
5	Porsche	2015	у555уу37	5
6	Kia	2018	г215па37	6
7	Лада	2005	в723ат37	7
8	Toyota	2021	ш801ии37	8
9	Daewoo	2008	с653гр37	9
10	Chevrolet	2013	ф589ло37	10
11	Jeep	2008	ц201мп37	11
12	Лада	2020	м876ка37	12
13	Mercedes-Benz	2015	р356гг37	13
14	Daewoo	2020	л013пр37	14
15	Jeep	2002	о563мм37	15
16	Chevrolet	2005	ж551ит37	16
17	Лада	2020	н883мт37	17
18	Kia	2012	п947ро37	18
19	Лада	2010	в519ри37	19
20	Jeep	2003	е219ыв37	20
\.


--
-- Data for Name: owners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.owners (id, name, surname, city) FROM stdin;
1	Виктор	Жилин	Иваново
2	Семен	Старин	Шуя
3	Евгений	Мандельштам	Тейково
4	Дмитрий	Сидоров	Иваново
5	Наталья	Иванова	Иваново
6	Надежда	Бут	Кинешма
7	Антон	Винтин	Заволжск
8	Алексей	Пушкин	Шуя
9	Александр	Валик	Тейково
10	Елена	Кузнецова	Иваново
11	Жанна	Пахмутова	Кинешма
12	Геннадий	Блинов	Иваново
13	Александр	Бытиев	Иваново
14	Степан	Жилин	Тейково
15	Егор	Батыев	Шуя
16	Анна	Брыгина	Приволжск
17	Анатолий	Друзь	Иваново
18	Дмитрий	Карамазов	Иваново
19	Иван	Карамазов	Иваново
20	Алексей	Карамазов	Иваново
\.


--
-- Name: cars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cars_id_seq', 20, true);


--
-- Name: owners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.owners_id_seq', 20, true);


--
-- Name: cars cars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (id);


--
-- Name: owners owners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.owners
    ADD CONSTRAINT owners_pkey PRIMARY KEY (id);


--
-- Name: cars cars_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.owners(id);


--
-- PostgreSQL database dump complete
--


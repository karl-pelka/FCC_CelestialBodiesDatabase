--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    size integer,
    description text,
    name character varying(255) NOT NULL,
    spiraling boolean DEFAULT false NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    water boolean NOT NULL,
    planet_id integer NOT NULL,
    rotating boolean DEFAULT false NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    inhabitants integer,
    water boolean DEFAULT false,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    size integer NOT NULL,
    brightness integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: void; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.void (
    void_id integer NOT NULL,
    size integer,
    rotating boolean DEFAULT false NOT NULL,
    temperature numeric DEFAULT 2.4 NOT NULL,
    isotropic boolean DEFAULT false NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.void OWNER TO freecodecamp;

--
-- Name: void_void_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.void_void_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.void_void_id_seq OWNER TO freecodecamp;

--
-- Name: void_void_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.void_void_id_seq OWNED BY public.void.void_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: void void_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.void ALTER COLUMN void_id SET DEFAULT nextval('public.void_void_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 2, NULL, 'andromeda', false);
INSERT INTO public.galaxy VALUES (2, 3, NULL, 'magellanic clouds', false);
INSERT INTO public.galaxy VALUES (3, 4, NULL, 'whirlpool', false);
INSERT INTO public.galaxy VALUES (4, 2, NULL, 'sombrero', false);
INSERT INTO public.galaxy VALUES (5, 5, NULL, 'NGC 3992', false);
INSERT INTO public.galaxy VALUES (6, 6, NULL, 'LEDA 37617', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', true, 1, false);
INSERT INTO public.moon VALUES (2, 'moon2', true, 2, false);
INSERT INTO public.moon VALUES (3, 'moon3', true, 3, false);
INSERT INTO public.moon VALUES (4, 'moon4', true, 4, false);
INSERT INTO public.moon VALUES (6, 'moon5', true, 4, false);
INSERT INTO public.moon VALUES (7, 'moon6', true, 6, false);
INSERT INTO public.moon VALUES (8, 'moon7', true, 7, false);
INSERT INTO public.moon VALUES (9, 'moon8', true, 8, false);
INSERT INTO public.moon VALUES (10, 'moon9', true, 9, false);
INSERT INTO public.moon VALUES (11, 'moon10', true, 10, false);
INSERT INTO public.moon VALUES (12, 'moon11', true, 11, false);
INSERT INTO public.moon VALUES (13, 'moon12', true, 12, false);
INSERT INTO public.moon VALUES (14, 'moon13', true, 13, false);
INSERT INTO public.moon VALUES (15, 'moon14', true, 14, false);
INSERT INTO public.moon VALUES (16, 'moon15', true, 15, false);
INSERT INTO public.moon VALUES (17, 'moon16', true, 16, false);
INSERT INTO public.moon VALUES (18, 'moon17', true, 17, false);
INSERT INTO public.moon VALUES (20, 'moon18', true, 17, false);
INSERT INTO public.moon VALUES (22, 'moon19', true, 17, false);
INSERT INTO public.moon VALUES (23, 'moon20', true, 17, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, false, 1);
INSERT INTO public.planet VALUES (8, 'Pluto', NULL, false, 1);
INSERT INTO public.planet VALUES (9, 'Planet10', NULL, false, 2);
INSERT INTO public.planet VALUES (10, 'Planet11', NULL, false, 2);
INSERT INTO public.planet VALUES (11, 'Planet12', NULL, false, 2);
INSERT INTO public.planet VALUES (12, 'Planet13', NULL, false, 2);
INSERT INTO public.planet VALUES (13, 'Planet14', NULL, false, 3);
INSERT INTO public.planet VALUES (14, 'Planet15', NULL, false, 3);
INSERT INTO public.planet VALUES (15, 'Planet16', NULL, false, 3);
INSERT INTO public.planet VALUES (16, 'Planet17', NULL, false, 3);
INSERT INTO public.planet VALUES (17, 'Planet18', NULL, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 5, 'beteigeuze', 1);
INSERT INTO public.star VALUES (2, 2, 6, 'star2', 2);
INSERT INTO public.star VALUES (3, 3, 4, 'star3', 3);
INSERT INTO public.star VALUES (4, 2, 5, 'star5', 5);
INSERT INTO public.star VALUES (5, 4, 4, 'star4', 4);
INSERT INTO public.star VALUES (6, 6, 6, 'star6', 6);


--
-- Data for Name: void; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.void VALUES (1, 1, false, 2.4, false, 'Void1');
INSERT INTO public.void VALUES (2, 2, false, 2.4, false, 'Void2');
INSERT INTO public.void VALUES (3, 3, false, 2.4, false, 'Void3');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: void_void_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.void_void_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: star name_unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unique_planet UNIQUE (name);


--
-- Name: planet name_unique_planet2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unique_planet2 UNIQUE (name);


--
-- Name: star name_unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unique_star UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: void void_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.void
    ADD CONSTRAINT void_name_key UNIQUE (name);


--
-- Name: void void_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.void
    ADD CONSTRAINT void_pkey PRIMARY KEY (void_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


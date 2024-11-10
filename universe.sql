--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean
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
-- Name: galaxy_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_info (
    galaxy_info_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_info OWNER TO freecodecamp;

--
-- Name: galaxy_info_galaxy_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_info_galaxy_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_info_galaxy_info_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_info_galaxy_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_info_galaxy_info_id_seq OWNED BY public.galaxy_info.galaxy_info_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_info (
    moon_info_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.moon_info OWNER TO freecodecamp;

--
-- Name: moon_info_moon_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_info_moon_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_info_moon_info_id_seq OWNER TO freecodecamp;

--
-- Name: moon_info_moon_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_info_moon_info_id_seq OWNED BY public.moon_info.moon_info_id;


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
    star_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_info (
    planet_info_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.planet_info OWNER TO freecodecamp;

--
-- Name: planet_info_planet_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_info_planet_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_info_planet_info_id_seq OWNER TO freecodecamp;

--
-- Name: planet_info_planet_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_info_planet_info_id_seq OWNED BY public.planet_info.planet_info_id;


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
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_info (
    star_info_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.star_info OWNER TO freecodecamp;

--
-- Name: star_info_star_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_info_star_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_info_star_info_id_seq OWNER TO freecodecamp;

--
-- Name: star_info_star_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_info_star_info_id_seq OWNED BY public.star_info.star_info_id;


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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_info galaxy_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_info ALTER COLUMN galaxy_info_id SET DEFAULT nextval('public.galaxy_info_galaxy_info_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon_info moon_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_info ALTER COLUMN moon_info_id SET DEFAULT nextval('public.moon_info_moon_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_info planet_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_info ALTER COLUMN planet_info_id SET DEFAULT nextval('public.planet_info_planet_info_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_info star_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_info ALTER COLUMN star_info_id SET DEFAULT nextval('public.star_info_star_info_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, 'galaxy1', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (2, 2, 'galaxy2', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (3, 3, 'galaxy3', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (4, 4, 'galaxy4', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (5, 5, 'galaxy5', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (6, 6, 'galaxy6', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (7, 7, 'galaxy7', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (8, 8, 'galaxy8', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (9, 9, 'galaxy9', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (10, 10, 'galaxy10', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (11, 11, 'galaxy11', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (12, 12, 'galaxy12', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (13, 13, 'galaxy13', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (14, 14, 'galaxy14', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (15, 15, 'galaxy15', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (16, 16, 'galaxy16', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (17, 17, 'galaxy17', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (18, 18, 'galaxy18', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (19, 19, 'galaxy19', 4600, 148, true, true);
INSERT INTO public.galaxy VALUES (20, 20, 'galaxy20', 4600, 148, true, true);


--
-- Data for Name: galaxy_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_info VALUES (1, 1, 'galaxy_info1', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (2, 2, 'galaxy_info2', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (3, 3, 'galaxy_info3', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (4, 4, 'galaxy_info', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (5, 5, 'galaxy_info5', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (6, 6, 'galaxy_info6', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (7, 7, 'galaxy_info7', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (8, 8, 'galaxy_info8', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (9, 9, 'galaxy_info9', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (10, 10, 'galaxy_info10', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (11, 11, 'galaxy_info11', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (12, 12, 'galaxy_info12', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (13, 13, 'galaxy_info13', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (14, 14, 'galaxy_info14', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (15, 15, 'galaxy_info15', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (16, 16, 'galaxy_info16', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (17, 17, 'galaxy_info17', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (18, 18, 'galaxy_info18', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (19, 19, 'galaxy_info19', 'lorem impsum');
INSERT INTO public.galaxy_info VALUES (20, 20, 'galaxy_info20', 'lorem impsum');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'moon1', 4600, 148, true, true);
INSERT INTO public.moon VALUES (2, 2, 'moon2', 4600, 148, true, true);
INSERT INTO public.moon VALUES (3, 3, 'moon3', 4600, 148, true, true);
INSERT INTO public.moon VALUES (4, 4, 'moon4', 4600, 148, true, true);
INSERT INTO public.moon VALUES (5, 5, 'moon5', 4600, 148, true, true);
INSERT INTO public.moon VALUES (6, 6, 'moon6', 4600, 148, true, true);
INSERT INTO public.moon VALUES (7, 7, 'moon7', 4600, 148, true, true);
INSERT INTO public.moon VALUES (8, 8, 'moon8', 4600, 148, true, true);
INSERT INTO public.moon VALUES (9, 9, 'moon9', 4600, 148, true, true);
INSERT INTO public.moon VALUES (10, 10, 'moon10', 4600, 148, true, true);
INSERT INTO public.moon VALUES (11, 11, 'moon11', 4600, 148, true, true);
INSERT INTO public.moon VALUES (12, 12, 'moon12', 4600, 148, true, true);
INSERT INTO public.moon VALUES (13, 13, 'moon13', 4600, 148, true, true);
INSERT INTO public.moon VALUES (14, 14, 'moon14', 4600, 148, true, true);
INSERT INTO public.moon VALUES (15, 15, 'moon15', 4600, 148, true, true);
INSERT INTO public.moon VALUES (16, 16, 'moon16', 4600, 148, true, true);
INSERT INTO public.moon VALUES (17, 17, 'moon17', 4600, 148, true, true);
INSERT INTO public.moon VALUES (18, 18, 'moon18', 4600, 148, true, true);
INSERT INTO public.moon VALUES (19, 19, 'moon19', 4600, 148, true, true);
INSERT INTO public.moon VALUES (20, 20, 'moon20', 4600, 148, true, true);


--
-- Data for Name: moon_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_info VALUES (1, 1, 'moon_info1', 'lorem impsum');
INSERT INTO public.moon_info VALUES (2, 2, 'moon_info2', 'lorem impsum');
INSERT INTO public.moon_info VALUES (3, 3, 'moon_info3', 'lorem impsum');
INSERT INTO public.moon_info VALUES (4, 4, 'moon_info4', 'lorem impsum');
INSERT INTO public.moon_info VALUES (5, 5, 'moon_info5', 'lorem impsum');
INSERT INTO public.moon_info VALUES (6, 6, 'moon_info6', 'lorem impsum');
INSERT INTO public.moon_info VALUES (7, 7, 'moon_info7', 'lorem impsum');
INSERT INTO public.moon_info VALUES (8, 8, 'moon_info8', 'lorem impsum');
INSERT INTO public.moon_info VALUES (9, 9, 'moon_info9', 'lorem impsum');
INSERT INTO public.moon_info VALUES (10, 10, 'moon_info10', 'lorem impsum');
INSERT INTO public.moon_info VALUES (11, 11, 'moon_info11', 'lorem impsum');
INSERT INTO public.moon_info VALUES (12, 12, 'moon_info12', 'lorem impsum');
INSERT INTO public.moon_info VALUES (13, 13, 'moon_info13', 'lorem impsum');
INSERT INTO public.moon_info VALUES (14, 14, 'moon_info14', 'lorem impsum');
INSERT INTO public.moon_info VALUES (15, 15, 'moon_info15', 'lorem impsum');
INSERT INTO public.moon_info VALUES (16, 16, 'moon_info16', 'lorem impsum');
INSERT INTO public.moon_info VALUES (17, 17, 'moon_info17', 'lorem impsum');
INSERT INTO public.moon_info VALUES (18, 18, 'moon_info18', 'lorem impsum');
INSERT INTO public.moon_info VALUES (19, 19, 'moon_info19', 'lorem impsum');
INSERT INTO public.moon_info VALUES (20, 20, 'moon_info20', 'lorem impsum');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 1, 'planet1', 4600, 148, true, true);
INSERT INTO public.planet VALUES (2, 2, 2, 'planet2', 4600, 148, true, true);
INSERT INTO public.planet VALUES (3, 3, 3, 'planet3', 4600, 148, true, true);
INSERT INTO public.planet VALUES (4, 4, 4, 'planet4', 4600, 148, true, true);
INSERT INTO public.planet VALUES (5, 5, 5, 'planet5', 4600, 148, true, true);
INSERT INTO public.planet VALUES (6, 6, 6, 'planet6', 4600, 148, true, true);
INSERT INTO public.planet VALUES (7, 7, 7, 'planet7', 4600, 148, true, true);
INSERT INTO public.planet VALUES (8, 8, 8, 'planet8', 4600, 148, true, true);
INSERT INTO public.planet VALUES (9, 9, 9, 'planet9', 4600, 148, true, true);
INSERT INTO public.planet VALUES (10, 10, 10, 'planet10', 4600, 148, true, true);
INSERT INTO public.planet VALUES (11, 11, 11, 'planet11', 4600, 148, true, true);
INSERT INTO public.planet VALUES (12, 12, 12, 'planet12', 4600, 148, true, true);
INSERT INTO public.planet VALUES (13, 13, 13, 'planet13', 4600, 148, true, true);
INSERT INTO public.planet VALUES (14, 14, 14, 'planet14', 4600, 148, true, true);
INSERT INTO public.planet VALUES (15, 15, 15, 'planet15', 4600, 148, true, true);
INSERT INTO public.planet VALUES (16, 16, 16, 'planet16', 4600, 148, true, true);
INSERT INTO public.planet VALUES (17, 17, 17, 'planet17', 4600, 148, true, true);
INSERT INTO public.planet VALUES (18, 18, 18, 'planet18', 4600, 148, true, true);
INSERT INTO public.planet VALUES (19, 19, 19, 'planet19', 4600, 148, true, true);
INSERT INTO public.planet VALUES (20, 20, 20, 'planet20', 4600, 148, true, true);


--
-- Data for Name: planet_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_info VALUES (1, 1, 'planet_info1', 'lorem impsum');
INSERT INTO public.planet_info VALUES (2, 2, 'planet_info2', 'lorem impsum');
INSERT INTO public.planet_info VALUES (3, 3, 'planet_info3', 'lorem impsum');
INSERT INTO public.planet_info VALUES (4, 4, 'planet_info4', 'lorem impsum');
INSERT INTO public.planet_info VALUES (5, 5, 'planet_info5', 'lorem impsum');
INSERT INTO public.planet_info VALUES (6, 6, 'planet_info6', 'lorem impsum');
INSERT INTO public.planet_info VALUES (7, 7, 'planet_info7', 'lorem impsum');
INSERT INTO public.planet_info VALUES (8, 8, 'planet_info8', 'lorem impsum');
INSERT INTO public.planet_info VALUES (9, 9, 'planet_info9', 'lorem impsum');
INSERT INTO public.planet_info VALUES (10, 10, 'planet_info10', 'lorem impsum');
INSERT INTO public.planet_info VALUES (11, 11, 'planet_info11', 'lorem impsum');
INSERT INTO public.planet_info VALUES (12, 12, 'planet_info12', 'lorem impsum');
INSERT INTO public.planet_info VALUES (13, 13, 'planet_info13', 'lorem impsum');
INSERT INTO public.planet_info VALUES (14, 14, 'planet_info14', 'lorem impsum');
INSERT INTO public.planet_info VALUES (15, 15, 'planet_info15', 'lorem impsum');
INSERT INTO public.planet_info VALUES (16, 16, 'planet_info16', 'lorem impsum');
INSERT INTO public.planet_info VALUES (17, 17, 'planet_info17', 'lorem impsum');
INSERT INTO public.planet_info VALUES (18, 18, 'planet_info18', 'lorem impsum');
INSERT INTO public.planet_info VALUES (19, 19, 'planet_info19', 'lorem impsum');
INSERT INTO public.planet_info VALUES (20, 20, 'planet_info20', 'lorem impsum');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 1, 'star1', 4600, 148, true, true);
INSERT INTO public.star VALUES (2, 2, 2, 'star2', 4600, 148, true, true);
INSERT INTO public.star VALUES (3, 3, 3, 'star3', 4600, 148, true, true);
INSERT INTO public.star VALUES (4, 4, 4, 'star4', 4600, 148, true, true);
INSERT INTO public.star VALUES (5, 5, 5, 'star5', 4600, 148, true, true);
INSERT INTO public.star VALUES (6, 6, 6, 'star6', 4600, 148, true, true);
INSERT INTO public.star VALUES (7, 7, 7, 'star7', 4600, 148, true, true);
INSERT INTO public.star VALUES (8, 8, 8, 'star8', 4600, 148, true, true);
INSERT INTO public.star VALUES (9, 9, 9, 'star9', 4600, 148, true, true);
INSERT INTO public.star VALUES (10, 10, 10, 'star10', 4600, 148, true, true);
INSERT INTO public.star VALUES (11, 11, 11, 'star11', 4600, 148, true, true);
INSERT INTO public.star VALUES (12, 12, 12, 'star12', 4600, 148, true, true);
INSERT INTO public.star VALUES (13, 13, 13, 'star13', 4600, 148, true, true);
INSERT INTO public.star VALUES (14, 14, 14, 'star14', 4600, 148, true, true);
INSERT INTO public.star VALUES (15, 15, 15, 'star15', 4600, 148, true, true);
INSERT INTO public.star VALUES (16, 16, 16, 'star16', 4600, 148, true, true);
INSERT INTO public.star VALUES (17, 17, 17, 'star17', 4600, 148, true, true);
INSERT INTO public.star VALUES (18, 18, 18, 'star18', 4600, 148, true, true);
INSERT INTO public.star VALUES (19, 19, 19, 'star19', 4600, 148, true, true);
INSERT INTO public.star VALUES (20, 20, 20, 'star20', 4600, 148, true, true);


--
-- Data for Name: star_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_info VALUES (1, 1, 'star_info1', 'lorem impsum');
INSERT INTO public.star_info VALUES (2, 2, 'star_info2', 'lorem impsum');
INSERT INTO public.star_info VALUES (3, 3, 'star_info3', 'lorem impsum');
INSERT INTO public.star_info VALUES (4, 4, 'star_info4', 'lorem impsum');
INSERT INTO public.star_info VALUES (5, 5, 'star_info5', 'lorem impsum');
INSERT INTO public.star_info VALUES (6, 6, 'star_info6', 'lorem impsum');
INSERT INTO public.star_info VALUES (7, 7, 'star_info7', 'lorem impsum');
INSERT INTO public.star_info VALUES (8, 8, 'star_info8', 'lorem impsum');
INSERT INTO public.star_info VALUES (9, 9, 'star_info9', 'lorem impsum');
INSERT INTO public.star_info VALUES (10, 10, 'star_info10', 'lorem impsum');
INSERT INTO public.star_info VALUES (11, 11, 'star_info11', 'lorem impsum');
INSERT INTO public.star_info VALUES (12, 12, 'star_info12', 'lorem impsum');
INSERT INTO public.star_info VALUES (13, 13, 'star_info13', 'lorem impsum');
INSERT INTO public.star_info VALUES (14, 14, 'star_info14', 'lorem impsum');
INSERT INTO public.star_info VALUES (15, 15, 'star_info15', 'lorem impsum');
INSERT INTO public.star_info VALUES (16, 16, 'star_info16', 'lorem impsum');
INSERT INTO public.star_info VALUES (17, 17, 'star_info17', 'lorem impsum');
INSERT INTO public.star_info VALUES (18, 18, 'star_info18', 'lorem impsum');
INSERT INTO public.star_info VALUES (19, 19, 'star_info19', 'lorem impsum');
INSERT INTO public.star_info VALUES (20, 20, 'star_info20', 'lorem impsum');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: galaxy_info_galaxy_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_info_galaxy_info_id_seq', 1, false);


--
-- Name: moon_info_moon_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_info_moon_info_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_info_planet_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_info_planet_info_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_info_star_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_info_star_info_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy_info galaxy_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_info
    ADD CONSTRAINT galaxy_info_name_key UNIQUE (name);


--
-- Name: galaxy_info galaxy_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_info
    ADD CONSTRAINT galaxy_info_pkey PRIMARY KEY (galaxy_info_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon_info moon_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_info
    ADD CONSTRAINT moon_info_name_key UNIQUE (name);


--
-- Name: moon_info moon_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_info
    ADD CONSTRAINT moon_info_pkey PRIMARY KEY (moon_info_id);


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
-- Name: planet_info planet_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_info
    ADD CONSTRAINT planet_info_name_key UNIQUE (name);


--
-- Name: planet_info planet_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_info
    ADD CONSTRAINT planet_info_pkey PRIMARY KEY (planet_info_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star_info star_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_info
    ADD CONSTRAINT star_info_name_key UNIQUE (name);


--
-- Name: star_info star_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_info
    ADD CONSTRAINT star_info_pkey PRIMARY KEY (star_info_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy_info galaxy_info_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_info
    ADD CONSTRAINT galaxy_info_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon_info moon_info_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_info
    ADD CONSTRAINT moon_info_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet_info planet_info_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_info
    ADD CONSTRAINT planet_info_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star_info star_info_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_info
    ADD CONSTRAINT star_info_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--


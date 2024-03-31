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
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    galaxy_type_id integer
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    structure character varying(30)
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    is_spherical boolean,
    planet_id integer
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
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    is_spherical boolean,
    star_id integer,
    planet_type_id integer
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    habitability_potential character varying(50)
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    is_spherical boolean,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Nebula Swirl', 'Vibrant spiral galaxy with pink and blue dust', 9500, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Prime', 'Ancient elliptical galaxy with a shimmering core', 15000, 2);
INSERT INTO public.galaxy VALUES (3, 'Whispering Void', 'Seemingly empty galaxy emitting faint radio signals', 500, 3);
INSERT INTO public.galaxy VALUES (4, 'Phoenix Nebula', 'Glowing cloud-like galaxy, birthplace of countless stars.', 2000, 6);
INSERT INTO public.galaxy VALUES (5, 'Maelstrom Galaxy', 'Ring galaxy with a turbulent, supermassive black hole core', 8000, 4);
INSERT INTO public.galaxy VALUES (6, 'Gemini Cluster', 'Twin lenticular galaxies bound by gravity', 13000, 5);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'Spiral', 'Classic disk with arms');
INSERT INTO public.galaxy_type VALUES (2, 'Elliptical', 'Smooth, oval-shaped');
INSERT INTO public.galaxy_type VALUES (3, 'Irregular', 'Chaotic, no clear shape');
INSERT INTO public.galaxy_type VALUES (4, 'Ring', 'Donut-shaped around a core');
INSERT INTO public.galaxy_type VALUES (5, 'Lenticular', 'Disk-like, but less arms');
INSERT INTO public.galaxy_type VALUES (6, 'Cloud', 'Diffuse, wispy clusters');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna Prime', 'Earth-sized moon of a gas giant, harboring a hidden ocean.', 700, true, 1);
INSERT INTO public.moon VALUES (2, 'Calypso', 'Ocean moon with vibrant coral reefs and phosphorescent seas.', 550, true, 1);
INSERT INTO public.moon VALUES (3, 'Titanus', 'Volcanic moon with sulfur geysers and obsidian formations.', 300, true, 2);
INSERT INTO public.moon VALUES (4, 'Deimos', 'Captured asteroid turned moon, irregular and crater-pocked.', 2000, true, 2);
INSERT INTO public.moon VALUES (5, 'Nyx', 'Moon of a ringworld, casting intricate shadows on the rings.', NULL, true, 6);
INSERT INTO public.moon VALUES (6, 'Persephone', 'Tidally-locked moon, one side scorched, one frozen.', 7500, true, 7);
INSERT INTO public.moon VALUES (7, 'Echo', 'Hollow moon with vast internal caverns.', 150, true, 7);
INSERT INTO public.moon VALUES (8, 'Zephyr Prime', 'Atmosphere-rich moon of a gas giant, home to floating lifeforms.', 150, true, 8);
INSERT INTO public.moon VALUES (9, 'Atlas', 'Moon with mountainous terrain, larger than its parent planet.', 600, true, 9);
INSERT INTO public.moon VALUES (10, 'Charon', 'One half of a binary dwarf planet system, perpetually facing its twin.', 650, true, 9);
INSERT INTO public.moon VALUES (11, 'Oasis', 'Moon of a rogue planet, warmed by geothermal vents.', 2000, true, 11);
INSERT INTO public.moon VALUES (12, 'Phoenix', 'Moon formed from the debris of a destroyed planet.', 50, true, 11);
INSERT INTO public.moon VALUES (13, 'Mirage', 'Desert moon with shimmering mirages and sandstorms.', 400, true, 12);
INSERT INTO public.moon VALUES (14, 'Eclipse', 'Moon orbiting in resonance, causing frequent eclipses on its planet.', 1000, true, 12);
INSERT INTO public.moon VALUES (15, 'Borealis', 'Ice moon with cryo-volcanoes erupting liquid nitrogen.', 800, true, 5);
INSERT INTO public.moon VALUES (16, 'Aurora', 'Moon within a star’s magnetosphere, displaying spectacular auroras.', 250, true, 5);
INSERT INTO public.moon VALUES (17, 'Labyrinth', 'Moon with an intricate network of underground tunnels.', 900, true, 4);
INSERT INTO public.moon VALUES (18, 'Crucible', 'Moon of a gas giant, constantly bombarded by radiation.', 450, true, 3);
INSERT INTO public.moon VALUES (19, 'Gemini', 'One of a pair of twin moons orbiting in tandem.', 1800, true, 10);
INSERT INTO public.moon VALUES (20, 'Horizon', 'Moon with a breathable atmosphere, perpetually bathed in twilight.', 300, true, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Oceana', 'Water-covered world teeming with bioluminescent life', 650, true, 1, 6);
INSERT INTO public.planet VALUES (2, 'Zephyr', 'Gas giant with swirling cloud patterns and raging storms', 1000, true, 1, 1);
INSERT INTO public.planet VALUES (3, 'Magmaria', 'Volcanic planet with rivers of molten lava and obsidian plains', 350, true, 2, 5);
INSERT INTO public.planet VALUES (4, 'Haven Prime', 'Lush terrestrial world with diverse biomes.', 5000, true, 2, 3);
INSERT INTO public.planet VALUES (5, 'Frostwind', 'Ice giant with a frozen methane atmosphere', 1500, true, 3, 2);
INSERT INTO public.planet VALUES (7, 'Hyperion', 'Super-Earth orbiting a red dwarf, possible tidal lock', 8000, true, 4, 4);
INSERT INTO public.planet VALUES (8, 'Pandora', 'Cloud City floating in the atmosphere of a gas giant', 200, true, 5, 9);
INSERT INTO public.planet VALUES (9, 'Janus', 'One half molten, one half frozen in a binary planet system', 500, true, 6, 7);
INSERT INTO public.planet VALUES (10, 'Gaia Prime', 'Earth-like planet orbiting a young, active star', 380, true, 5, 3);
INSERT INTO public.planet VALUES (12, 'Icarus', 'Planet orbiting perilously close to a pulsar', 100, true, 4, 12);
INSERT INTO public.planet VALUES (11, 'Nomad', 'Rogue planet wandering interstellar space', 2500, true, 2, 11);
INSERT INTO public.planet VALUES (6, 'Eos', 'Ringworld orbiting a white dwarf, bathed in perpetual light', NULL, true, 6, 10);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Gas Giant', 'Unlikely');
INSERT INTO public.planet_type VALUES (2, 'Ice Giant', 'Remotely Possible');
INSERT INTO public.planet_type VALUES (3, 'Terrestrial', 'Potentially Habitable');
INSERT INTO public.planet_type VALUES (4, 'Super-Earth', 'Potentially Habitable');
INSERT INTO public.planet_type VALUES (5, 'Lava World', 'Uninhabitable');
INSERT INTO public.planet_type VALUES (6, 'Ocean World', 'Potentially Habitable, Aquatic Life Likely');
INSERT INTO public.planet_type VALUES (7, 'Binary Planet', 'Unlikely (Depends on Stability)');
INSERT INTO public.planet_type VALUES (8, 'Carbon Planet', 'Unlikely, Exotic Chemistry Possible');
INSERT INTO public.planet_type VALUES (9, 'Cloud City', 'Inhabitable (If Atmosphere Supports Structures)');
INSERT INTO public.planet_type VALUES (10, 'Ringworld', 'Artificially Habitable (If Existent)');
INSERT INTO public.planet_type VALUES (11, 'Rogue Planet', 'Unlikely (Requires Captured Heat)');
INSERT INTO public.planet_type VALUES (12, 'Pulsar Planet', 'Uninhabitable (Extreme Radiation)');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Polaris Prime', 'Pulsating blue giant with a radiant aura.', 800, true, 1);
INSERT INTO public.star VALUES (2, 'Emberheart', 'Crimson dwarf with unpredictable solar flares.', 12000, true, 2);
INSERT INTO public.star VALUES (3, 'Shadowstar', 'Star shrouded in darkness, visible by it''s gravity effects.', NULL, true, 3);
INSERT INTO public.star VALUES (4, 'Aurora Borealis', 'Neutron star emitting vibrant, swirling energy patterns.', 500, true, 4);
INSERT INTO public.star VALUES (5, 'Genesis Star', 'Young, massive star at the center of a stellar nursery.', 100, true, 5);
INSERT INTO public.star VALUES (6, 'Binary Twins', 'Two stars orbiting each other, one a white dwarf, one red.', 7500, true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


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
-- Name: planet_type planet_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_name_key UNIQUE (name);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy fk_galaxy_type; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_galaxy_type FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_type; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_type FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


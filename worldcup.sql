--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (469, 2018, 'Final', 2774, 2775, 4, 2);
INSERT INTO public.games VALUES (470, 2018, 'Third Place', 2776, 2777, 2, 0);
INSERT INTO public.games VALUES (471, 2018, 'Semi-Final', 2775, 2777, 2, 1);
INSERT INTO public.games VALUES (472, 2018, 'Semi-Final', 2774, 2776, 1, 0);
INSERT INTO public.games VALUES (473, 2018, 'Quarter-Final', 2775, 2778, 3, 2);
INSERT INTO public.games VALUES (474, 2018, 'Quarter-Final', 2777, 2779, 2, 0);
INSERT INTO public.games VALUES (475, 2018, 'Quarter-Final', 2776, 2780, 2, 1);
INSERT INTO public.games VALUES (476, 2018, 'Quarter-Final', 2774, 2781, 2, 0);
INSERT INTO public.games VALUES (477, 2018, 'Eighth-Final', 2777, 2782, 2, 1);
INSERT INTO public.games VALUES (478, 2018, 'Eighth-Final', 2779, 2783, 1, 0);
INSERT INTO public.games VALUES (479, 2018, 'Eighth-Final', 2776, 2784, 3, 2);
INSERT INTO public.games VALUES (480, 2018, 'Eighth-Final', 2780, 2785, 2, 0);
INSERT INTO public.games VALUES (481, 2018, 'Eighth-Final', 2775, 2786, 2, 1);
INSERT INTO public.games VALUES (482, 2018, 'Eighth-Final', 2778, 2787, 2, 1);
INSERT INTO public.games VALUES (483, 2018, 'Eighth-Final', 2781, 2788, 2, 1);
INSERT INTO public.games VALUES (484, 2018, 'Eighth-Final', 2774, 2789, 4, 3);
INSERT INTO public.games VALUES (485, 2014, 'Final', 2790, 2789, 1, 0);
INSERT INTO public.games VALUES (486, 2014, 'Third Place', 2791, 2780, 3, 0);
INSERT INTO public.games VALUES (487, 2014, 'Semi-Final', 2789, 2791, 1, 0);
INSERT INTO public.games VALUES (488, 2014, 'Semi-Final', 2790, 2780, 7, 1);
INSERT INTO public.games VALUES (489, 2014, 'Quarter-Final', 2791, 2792, 1, 0);
INSERT INTO public.games VALUES (490, 2014, 'Quarter-Final', 2789, 2776, 1, 0);
INSERT INTO public.games VALUES (491, 2014, 'Quarter-Final', 2780, 2782, 2, 1);
INSERT INTO public.games VALUES (492, 2014, 'Quarter-Final', 2790, 2774, 1, 0);
INSERT INTO public.games VALUES (493, 2014, 'Eighth-Final', 2780, 2793, 2, 1);
INSERT INTO public.games VALUES (494, 2014, 'Eighth-Final', 2782, 2781, 2, 0);
INSERT INTO public.games VALUES (495, 2014, 'Eighth-Final', 2774, 2794, 2, 0);
INSERT INTO public.games VALUES (496, 2014, 'Eighth-Final', 2790, 2795, 2, 1);
INSERT INTO public.games VALUES (497, 2014, 'Eighth-Final', 2791, 2785, 2, 1);
INSERT INTO public.games VALUES (498, 2014, 'Eighth-Final', 2792, 2796, 2, 1);
INSERT INTO public.games VALUES (499, 2014, 'Eighth-Final', 2789, 2783, 1, 0);
INSERT INTO public.games VALUES (500, 2014, 'Eighth-Final', 2776, 2797, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (2774, 'France');
INSERT INTO public.teams VALUES (2775, 'Croatia');
INSERT INTO public.teams VALUES (2776, 'Belgium');
INSERT INTO public.teams VALUES (2777, 'England');
INSERT INTO public.teams VALUES (2778, 'Russia');
INSERT INTO public.teams VALUES (2779, 'Sweden');
INSERT INTO public.teams VALUES (2780, 'Brazil');
INSERT INTO public.teams VALUES (2781, 'Uruguay');
INSERT INTO public.teams VALUES (2782, 'Colombia');
INSERT INTO public.teams VALUES (2783, 'Switzerland');
INSERT INTO public.teams VALUES (2784, 'Japan');
INSERT INTO public.teams VALUES (2785, 'Mexico');
INSERT INTO public.teams VALUES (2786, 'Denmark');
INSERT INTO public.teams VALUES (2787, 'Spain');
INSERT INTO public.teams VALUES (2788, 'Portugal');
INSERT INTO public.teams VALUES (2789, 'Argentina');
INSERT INTO public.teams VALUES (2790, 'Germany');
INSERT INTO public.teams VALUES (2791, 'Netherlands');
INSERT INTO public.teams VALUES (2792, 'Costa Rica');
INSERT INTO public.teams VALUES (2793, 'Chile');
INSERT INTO public.teams VALUES (2794, 'Nigeria');
INSERT INTO public.teams VALUES (2795, 'Algeria');
INSERT INTO public.teams VALUES (2796, 'Greece');
INSERT INTO public.teams VALUES (2797, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 500, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 256, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 256, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 2797, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


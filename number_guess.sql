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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(255) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 7, 89);
INSERT INTO public.games VALUES (2, 7, 436);
INSERT INTO public.games VALUES (3, 8, 746);
INSERT INTO public.games VALUES (4, 8, 702);
INSERT INTO public.games VALUES (5, 7, 155);
INSERT INTO public.games VALUES (6, 7, 784);
INSERT INTO public.games VALUES (7, 7, 873);
INSERT INTO public.games VALUES (8, 9, 10);
INSERT INTO public.games VALUES (9, 10, 884);
INSERT INTO public.games VALUES (10, 10, 531);
INSERT INTO public.games VALUES (11, 11, 92);
INSERT INTO public.games VALUES (12, 11, 993);
INSERT INTO public.games VALUES (13, 10, 918);
INSERT INTO public.games VALUES (14, 10, 833);
INSERT INTO public.games VALUES (15, 10, 233);
INSERT INTO public.games VALUES (16, 12, 484);
INSERT INTO public.games VALUES (17, 12, 801);
INSERT INTO public.games VALUES (18, 13, 694);
INSERT INTO public.games VALUES (19, 13, 729);
INSERT INTO public.games VALUES (20, 12, 282);
INSERT INTO public.games VALUES (21, 12, 416);
INSERT INTO public.games VALUES (22, 12, 642);
INSERT INTO public.games VALUES (23, 14, 214);
INSERT INTO public.games VALUES (24, 14, 440);
INSERT INTO public.games VALUES (25, 15, 272);
INSERT INTO public.games VALUES (26, 15, 18);
INSERT INTO public.games VALUES (27, 14, 587);
INSERT INTO public.games VALUES (28, 14, 466);
INSERT INTO public.games VALUES (29, 14, 647);
INSERT INTO public.games VALUES (30, 16, 53);
INSERT INTO public.games VALUES (31, 16, 666);
INSERT INTO public.games VALUES (32, 17, 599);
INSERT INTO public.games VALUES (33, 17, 235);
INSERT INTO public.games VALUES (34, 16, 193);
INSERT INTO public.games VALUES (35, 16, 479);
INSERT INTO public.games VALUES (36, 16, 587);
INSERT INTO public.games VALUES (37, 9, 8);
INSERT INTO public.games VALUES (38, 18, 795);
INSERT INTO public.games VALUES (39, 18, 594);
INSERT INTO public.games VALUES (40, 19, 897);
INSERT INTO public.games VALUES (41, 19, 21);
INSERT INTO public.games VALUES (42, 18, 755);
INSERT INTO public.games VALUES (43, 18, 402);
INSERT INTO public.games VALUES (44, 18, 85);
INSERT INTO public.games VALUES (45, 20, 17);
INSERT INTO public.games VALUES (46, 21, 227);
INSERT INTO public.games VALUES (47, 21, 11);
INSERT INTO public.games VALUES (48, 22, 380);
INSERT INTO public.games VALUES (49, 22, 568);
INSERT INTO public.games VALUES (50, 21, 721);
INSERT INTO public.games VALUES (51, 21, 407);
INSERT INTO public.games VALUES (52, 21, 597);
INSERT INTO public.games VALUES (53, 20, 94);
INSERT INTO public.games VALUES (54, 23, 137);
INSERT INTO public.games VALUES (55, 23, 403);
INSERT INTO public.games VALUES (56, 24, 925);
INSERT INTO public.games VALUES (57, 24, 431);
INSERT INTO public.games VALUES (58, 23, 796);
INSERT INTO public.games VALUES (59, 23, 430);
INSERT INTO public.games VALUES (60, 23, 796);
INSERT INTO public.games VALUES (61, 25, 404);
INSERT INTO public.games VALUES (62, 25, 207);
INSERT INTO public.games VALUES (63, 26, 131);
INSERT INTO public.games VALUES (64, 26, 871);
INSERT INTO public.games VALUES (65, 25, 299);
INSERT INTO public.games VALUES (66, 25, 618);
INSERT INTO public.games VALUES (67, 25, 576);
INSERT INTO public.games VALUES (68, 27, 649);
INSERT INTO public.games VALUES (69, 27, 689);
INSERT INTO public.games VALUES (70, 28, 265);
INSERT INTO public.games VALUES (71, 28, 439);
INSERT INTO public.games VALUES (72, 27, 540);
INSERT INTO public.games VALUES (73, 27, 578);
INSERT INTO public.games VALUES (74, 27, 386);
INSERT INTO public.games VALUES (75, 29, 696);
INSERT INTO public.games VALUES (76, 29, 247);
INSERT INTO public.games VALUES (77, 30, 323);
INSERT INTO public.games VALUES (78, 30, 136);
INSERT INTO public.games VALUES (79, 29, 396);
INSERT INTO public.games VALUES (80, 29, 323);
INSERT INTO public.games VALUES (81, 29, 568);
INSERT INTO public.games VALUES (82, 31, 932);
INSERT INTO public.games VALUES (83, 31, 920);
INSERT INTO public.games VALUES (84, 32, 959);
INSERT INTO public.games VALUES (85, 32, 11);
INSERT INTO public.games VALUES (86, 31, 226);
INSERT INTO public.games VALUES (87, 31, 177);
INSERT INTO public.games VALUES (88, 31, 487);
INSERT INTO public.games VALUES (89, 33, 835);
INSERT INTO public.games VALUES (90, 33, 130);
INSERT INTO public.games VALUES (91, 34, 229);
INSERT INTO public.games VALUES (92, 34, 391);
INSERT INTO public.games VALUES (93, 33, 49);
INSERT INTO public.games VALUES (94, 33, 293);
INSERT INTO public.games VALUES (95, 33, 859);
INSERT INTO public.games VALUES (96, 35, 954);
INSERT INTO public.games VALUES (97, 35, 836);
INSERT INTO public.games VALUES (98, 36, 439);
INSERT INTO public.games VALUES (99, 36, 688);
INSERT INTO public.games VALUES (100, 35, 511);
INSERT INTO public.games VALUES (101, 35, 326);
INSERT INTO public.games VALUES (102, 35, 238);
INSERT INTO public.games VALUES (103, 37, 421);
INSERT INTO public.games VALUES (104, 37, 961);
INSERT INTO public.games VALUES (105, 38, 403);
INSERT INTO public.games VALUES (106, 38, 906);
INSERT INTO public.games VALUES (107, 37, 971);
INSERT INTO public.games VALUES (108, 37, 687);
INSERT INTO public.games VALUES (109, 37, 681);
INSERT INTO public.games VALUES (110, 39, 544);
INSERT INTO public.games VALUES (111, 39, 609);
INSERT INTO public.games VALUES (112, 40, 804);
INSERT INTO public.games VALUES (113, 40, 242);
INSERT INTO public.games VALUES (114, 39, 400);
INSERT INTO public.games VALUES (115, 39, 423);
INSERT INTO public.games VALUES (116, 39, 427);
INSERT INTO public.games VALUES (117, 41, 698);
INSERT INTO public.games VALUES (118, 41, 564);
INSERT INTO public.games VALUES (119, 42, 260);
INSERT INTO public.games VALUES (120, 42, 350);
INSERT INTO public.games VALUES (121, 41, 513);
INSERT INTO public.games VALUES (122, 41, 853);
INSERT INTO public.games VALUES (123, 41, 770);
INSERT INTO public.games VALUES (124, 43, 677);
INSERT INTO public.games VALUES (125, 43, 599);
INSERT INTO public.games VALUES (126, 44, 318);
INSERT INTO public.games VALUES (127, 44, 517);
INSERT INTO public.games VALUES (128, 43, 504);
INSERT INTO public.games VALUES (129, 43, 453);
INSERT INTO public.games VALUES (130, 43, 2);
INSERT INTO public.games VALUES (131, 45, 107);
INSERT INTO public.games VALUES (132, 45, 566);
INSERT INTO public.games VALUES (133, 46, 93);
INSERT INTO public.games VALUES (134, 46, 133);
INSERT INTO public.games VALUES (135, 45, 502);
INSERT INTO public.games VALUES (136, 45, 415);
INSERT INTO public.games VALUES (137, 45, 318);
INSERT INTO public.games VALUES (138, 47, 576);
INSERT INTO public.games VALUES (139, 47, 473);
INSERT INTO public.games VALUES (140, 48, 568);
INSERT INTO public.games VALUES (141, 48, 787);
INSERT INTO public.games VALUES (142, 47, 624);
INSERT INTO public.games VALUES (143, 47, 63);
INSERT INTO public.games VALUES (144, 47, 769);
INSERT INTO public.games VALUES (145, 49, 146);
INSERT INTO public.games VALUES (146, 49, 282);
INSERT INTO public.games VALUES (147, 50, 687);
INSERT INTO public.games VALUES (148, 50, 777);
INSERT INTO public.games VALUES (149, 49, 636);
INSERT INTO public.games VALUES (150, 49, 728);
INSERT INTO public.games VALUES (151, 49, 898);
INSERT INTO public.games VALUES (152, 51, 270);
INSERT INTO public.games VALUES (153, 51, 503);
INSERT INTO public.games VALUES (154, 52, 966);
INSERT INTO public.games VALUES (155, 52, 617);
INSERT INTO public.games VALUES (156, 51, 652);
INSERT INTO public.games VALUES (157, 51, 949);
INSERT INTO public.games VALUES (158, 51, 497);
INSERT INTO public.games VALUES (159, 53, 995);
INSERT INTO public.games VALUES (160, 53, 145);
INSERT INTO public.games VALUES (161, 54, 385);
INSERT INTO public.games VALUES (162, 54, 660);
INSERT INTO public.games VALUES (163, 53, 759);
INSERT INTO public.games VALUES (164, 53, 558);
INSERT INTO public.games VALUES (165, 53, 795);
INSERT INTO public.games VALUES (166, 55, 921);
INSERT INTO public.games VALUES (167, 55, 550);
INSERT INTO public.games VALUES (168, 56, 911);
INSERT INTO public.games VALUES (169, 56, 714);
INSERT INTO public.games VALUES (170, 55, 132);
INSERT INTO public.games VALUES (171, 55, 118);
INSERT INTO public.games VALUES (172, 55, 693);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1715023065120');
INSERT INTO public.users VALUES (2, 'user_1715023065119');
INSERT INTO public.users VALUES (3, 'user_1715023473771');
INSERT INTO public.users VALUES (4, 'user_1715023473770');
INSERT INTO public.users VALUES (5, 'user_1715023479882');
INSERT INTO public.users VALUES (6, 'user_1715023479881');
INSERT INTO public.users VALUES (7, 'user_1715023507427');
INSERT INTO public.users VALUES (8, 'user_1715023507426');
INSERT INTO public.users VALUES (9, 'ola');
INSERT INTO public.users VALUES (10, 'user_1715023576165');
INSERT INTO public.users VALUES (11, 'user_1715023576164');
INSERT INTO public.users VALUES (12, 'user_1715023616885');
INSERT INTO public.users VALUES (13, 'user_1715023616884');
INSERT INTO public.users VALUES (14, 'user_1715023659308');
INSERT INTO public.users VALUES (15, 'user_1715023659307');
INSERT INTO public.users VALUES (16, 'user_1715023789336');
INSERT INTO public.users VALUES (17, 'user_1715023789335');
INSERT INTO public.users VALUES (18, 'user_1715023844785');
INSERT INTO public.users VALUES (19, 'user_1715023844784');
INSERT INTO public.users VALUES (20, 'pedro');
INSERT INTO public.users VALUES (21, 'user_1715023923903');
INSERT INTO public.users VALUES (22, 'user_1715023923902');
INSERT INTO public.users VALUES (23, 'user_1715024069184');
INSERT INTO public.users VALUES (24, 'user_1715024069183');
INSERT INTO public.users VALUES (25, 'user_1715024233748');
INSERT INTO public.users VALUES (26, 'user_1715024233747');
INSERT INTO public.users VALUES (27, 'user_1715024760549');
INSERT INTO public.users VALUES (28, 'user_1715024760548');
INSERT INTO public.users VALUES (29, 'user_1715024781285');
INSERT INTO public.users VALUES (30, 'user_1715024781284');
INSERT INTO public.users VALUES (31, 'user_1715025392838');
INSERT INTO public.users VALUES (32, 'user_1715025392837');
INSERT INTO public.users VALUES (33, 'user_1715025429212');
INSERT INTO public.users VALUES (34, 'user_1715025429211');
INSERT INTO public.users VALUES (35, 'user_1715025440233');
INSERT INTO public.users VALUES (36, 'user_1715025440232');
INSERT INTO public.users VALUES (37, 'user_1715025455672');
INSERT INTO public.users VALUES (38, 'user_1715025455671');
INSERT INTO public.users VALUES (39, 'user_1715025471888');
INSERT INTO public.users VALUES (40, 'user_1715025471887');
INSERT INTO public.users VALUES (41, 'user_1715025487609');
INSERT INTO public.users VALUES (42, 'user_1715025487608');
INSERT INTO public.users VALUES (43, 'user_1715025501377');
INSERT INTO public.users VALUES (44, 'user_1715025501376');
INSERT INTO public.users VALUES (45, 'user_1715025527345');
INSERT INTO public.users VALUES (46, 'user_1715025527344');
INSERT INTO public.users VALUES (47, 'user_1715025536174');
INSERT INTO public.users VALUES (48, 'user_1715025536173');
INSERT INTO public.users VALUES (49, 'user_1715025620161');
INSERT INTO public.users VALUES (50, 'user_1715025620160');
INSERT INTO public.users VALUES (51, 'user_1715026029392');
INSERT INTO public.users VALUES (52, 'user_1715026029391');
INSERT INTO public.users VALUES (53, 'user_1715026195295');
INSERT INTO public.users VALUES (54, 'user_1715026195294');
INSERT INTO public.users VALUES (55, 'user_1715026230340');
INSERT INTO public.users VALUES (56, 'user_1715026230339');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 172, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 56, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: agences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.agences (
    id bigint NOT NULL,
    heureouv timestamp without time zone,
    heurefer timestamp without time zone,
    heuresup timestamp without time zone,
    ouvsup timestamp without time zone,
    fermex timestamp without time zone,
    jourferr timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: agences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.agences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: agences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.agences_id_seq OWNED BY public.agences.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: assurances; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.assurances (
    id bigint NOT NULL,
    assurance character varying,
    montant integer,
    caution integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: assurances_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.assurances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: assurances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.assurances_id_seq OWNED BY public.assurances.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    type character varying,
    voiture_id bigint,
    assurance_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: clients; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clients (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    firstname character varying,
    lastname character varying,
    telephone integer,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: clients_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;


--
-- Name: modepaies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.modepaies (
    id bigint NOT NULL,
    status character varying,
    combinaison character varying,
    prixbs integer,
    prixms integer,
    prixhs integer,
    datedebut timestamp without time zone,
    datefin timestamp without time zone,
    tarifjour integer,
    rubrique character varying,
    type_tarif_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: modepaies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.modepaies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: modepaies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.modepaies_id_seq OWNED BY public.modepaies.id;


--
-- Name: options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.options (
    id bigint NOT NULL,
    conducteur integer,
    siegebebe integer,
    rehausseur integer,
    gps boolean,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.options_id_seq OWNED BY public.options.id;


--
-- Name: paiements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.paiements (
    id bigint NOT NULL,
    accompte integer,
    total integer,
    reservation_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: paiements_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.paiements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: paiements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.paiements_id_seq OWNED BY public.paiements.id;


--
-- Name: plannings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.plannings (
    id bigint NOT NULL,
    titre character varying,
    etat character varying,
    date_debut timestamp without time zone,
    echeance timestamp without time zone,
    voiture_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: plannings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.plannings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: plannings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.plannings_id_seq OWNED BY public.plannings.id;


--
-- Name: reservations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.reservations (
    id bigint NOT NULL,
    numero_vol character varying,
    compagnie character varying,
    tarif_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: reservations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.reservations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: reservations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.reservations_id_seq OWNED BY public.reservations.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: type_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.type_options (
    id bigint NOT NULL,
    reservation_id bigint,
    option_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: type_options_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.type_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: type_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.type_options_id_seq OWNED BY public.type_options.id;


--
-- Name: type_tarifs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.type_tarifs (
    id bigint NOT NULL,
    titre character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: type_tarifs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.type_tarifs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: type_tarifs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.type_tarifs_id_seq OWNED BY public.type_tarifs.id;


--
-- Name: voitures; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.voitures (
    id bigint NOT NULL,
    image character varying,
    marque character varying,
    place character varying,
    vitesse character varying,
    type character varying,
    climatiseur boolean,
    status character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: voitures_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.voitures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: voitures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.voitures_id_seq OWNED BY public.voitures.id;


--
-- Name: agences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.agences ALTER COLUMN id SET DEFAULT nextval('public.agences_id_seq'::regclass);


--
-- Name: assurances id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assurances ALTER COLUMN id SET DEFAULT nextval('public.assurances_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: clients id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);


--
-- Name: modepaies id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.modepaies ALTER COLUMN id SET DEFAULT nextval('public.modepaies_id_seq'::regclass);


--
-- Name: options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.options ALTER COLUMN id SET DEFAULT nextval('public.options_id_seq'::regclass);


--
-- Name: paiements id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.paiements ALTER COLUMN id SET DEFAULT nextval('public.paiements_id_seq'::regclass);


--
-- Name: plannings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plannings ALTER COLUMN id SET DEFAULT nextval('public.plannings_id_seq'::regclass);


--
-- Name: reservations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservations ALTER COLUMN id SET DEFAULT nextval('public.reservations_id_seq'::regclass);


--
-- Name: type_options id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.type_options ALTER COLUMN id SET DEFAULT nextval('public.type_options_id_seq'::regclass);


--
-- Name: type_tarifs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.type_tarifs ALTER COLUMN id SET DEFAULT nextval('public.type_tarifs_id_seq'::regclass);


--
-- Name: voitures id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.voitures ALTER COLUMN id SET DEFAULT nextval('public.voitures_id_seq'::regclass);


--
-- Name: agences agences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.agences
    ADD CONSTRAINT agences_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: assurances assurances_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.assurances
    ADD CONSTRAINT assurances_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);


--
-- Name: modepaies modepaies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.modepaies
    ADD CONSTRAINT modepaies_pkey PRIMARY KEY (id);


--
-- Name: options options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.options
    ADD CONSTRAINT options_pkey PRIMARY KEY (id);


--
-- Name: paiements paiements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.paiements
    ADD CONSTRAINT paiements_pkey PRIMARY KEY (id);


--
-- Name: plannings plannings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plannings
    ADD CONSTRAINT plannings_pkey PRIMARY KEY (id);


--
-- Name: reservations reservations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT reservations_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: type_options type_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.type_options
    ADD CONSTRAINT type_options_pkey PRIMARY KEY (id);


--
-- Name: type_tarifs type_tarifs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.type_tarifs
    ADD CONSTRAINT type_tarifs_pkey PRIMARY KEY (id);


--
-- Name: voitures voitures_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.voitures
    ADD CONSTRAINT voitures_pkey PRIMARY KEY (id);


--
-- Name: index_categories_on_assurance_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_categories_on_assurance_id ON public.categories USING btree (assurance_id);


--
-- Name: index_categories_on_voiture_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_categories_on_voiture_id ON public.categories USING btree (voiture_id);


--
-- Name: index_clients_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_clients_on_email ON public.clients USING btree (email);


--
-- Name: index_clients_on_firstname; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_clients_on_firstname ON public.clients USING btree (firstname);


--
-- Name: index_clients_on_lastname; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_clients_on_lastname ON public.clients USING btree (lastname);


--
-- Name: index_clients_on_reset_password_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_clients_on_reset_password_token ON public.clients USING btree (reset_password_token);


--
-- Name: index_clients_on_telephone; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_clients_on_telephone ON public.clients USING btree (telephone);


--
-- Name: index_modepaies_on_type_tarif_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_modepaies_on_type_tarif_id ON public.modepaies USING btree (type_tarif_id);


--
-- Name: index_paiements_on_reservation_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_paiements_on_reservation_id ON public.paiements USING btree (reservation_id);


--
-- Name: index_plannings_on_voiture_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_plannings_on_voiture_id ON public.plannings USING btree (voiture_id);


--
-- Name: index_reservations_on_tarif_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_reservations_on_tarif_id ON public.reservations USING btree (tarif_id);


--
-- Name: index_type_options_on_option_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_type_options_on_option_id ON public.type_options USING btree (option_id);


--
-- Name: index_type_options_on_reservation_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_type_options_on_reservation_id ON public.type_options USING btree (reservation_id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO "schema_migrations" (version) VALUES
('20200914114423'),
('20200914114730'),
('20200914114917'),
('20200914115504'),
('20200914115608'),
('20200914115726'),
('20200914120926'),
('20200914121049'),
('20200914121305'),
('20200914135917'),
('20200915065040'),
('20200917110028');



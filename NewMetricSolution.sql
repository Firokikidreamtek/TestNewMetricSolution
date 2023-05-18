--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-05-19 00:38:02

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
-- TOC entry 217 (class 1259 OID 19351)
-- Name: AccountingDepartment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AccountingDepartment" (
    "Id" integer NOT NULL,
    "ComplexObjectId" integer NOT NULL,
    "Employees" integer NOT NULL
);


ALTER TABLE public."AccountingDepartment" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 19350)
-- Name: AccountingDepartment_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."AccountingDepartment" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."AccountingDepartment_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 19345)
-- Name: ComplexObject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ComplexObject" (
    "Id" integer NOT NULL
);


ALTER TABLE public."ComplexObject" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 19344)
-- Name: ComplexObject_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."ComplexObject" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."ComplexObject_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 19362)
-- Name: CustomerServiceDepartment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CustomerServiceDepartment" (
    "Id" integer NOT NULL,
    "ComplexObjectId" integer NOT NULL,
    "Employees" integer NOT NULL
);


ALTER TABLE public."CustomerServiceDepartment" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 19361)
-- Name: CustomerServiceDepartment_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."CustomerServiceDepartment" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."CustomerServiceDepartment_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 233 (class 1259 OID 19439)
-- Name: DeliveryDepartment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DeliveryDepartment" (
    "Id" integer NOT NULL,
    "LogisticsDepartmentId" integer NOT NULL,
    "Employees" integer NOT NULL
);


ALTER TABLE public."DeliveryDepartment" OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 19438)
-- Name: DeliveryDepartment_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."DeliveryDepartment" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."DeliveryDepartment_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 227 (class 1259 OID 19406)
-- Name: EngineeringDepartment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EngineeringDepartment" (
    "Id" integer NOT NULL,
    "ProductionDepartmentId" integer NOT NULL,
    "Employees" integer NOT NULL
);


ALTER TABLE public."EngineeringDepartment" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 19405)
-- Name: EngineeringDepartment_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."EngineeringDepartment" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."EngineeringDepartment_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 19384)
-- Name: LogisticsDepartment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LogisticsDepartment" (
    "Id" integer NOT NULL,
    "CustomerServiceDepartmentId" integer NOT NULL,
    "Employees" integer NOT NULL
);


ALTER TABLE public."LogisticsDepartment" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 19383)
-- Name: LogisticsDepartment_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."LogisticsDepartment" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."LogisticsDepartment_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 19373)
-- Name: ProductionDepartment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ProductionDepartment" (
    "Id" integer NOT NULL,
    "ComplexObjectId" integer NOT NULL,
    "Employees" integer NOT NULL
);


ALTER TABLE public."ProductionDepartment" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 19372)
-- Name: ProductionDepartment_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."ProductionDepartment" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."ProductionDepartment_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 229 (class 1259 OID 19417)
-- Name: PurchasingDepartment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PurchasingDepartment" (
    "Id" integer NOT NULL,
    "ProductionDepartmentId" integer NOT NULL,
    "Employees" integer NOT NULL
);


ALTER TABLE public."PurchasingDepartment" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 19416)
-- Name: PurchasingDepartment_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."PurchasingDepartment" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."PurchasingDepartment_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 231 (class 1259 OID 19428)
-- Name: QualityControlDepartment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."QualityControlDepartment" (
    "Id" integer NOT NULL,
    "ProductionDepartmentId" integer NOT NULL,
    "Employees" integer NOT NULL
);


ALTER TABLE public."QualityControlDepartment" OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 19427)
-- Name: QualityControlDepartment_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."QualityControlDepartment" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."QualityControlDepartment_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 237 (class 1259 OID 19461)
-- Name: RetailSalesDepartment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RetailSalesDepartment" (
    "Id" integer NOT NULL,
    "SalesDepartmentId" integer NOT NULL,
    "Employees" integer NOT NULL
);


ALTER TABLE public."RetailSalesDepartment" OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 19460)
-- Name: RetailSalesDepartment_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."RetailSalesDepartment" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."RetailSalesDepartment_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 225 (class 1259 OID 19395)
-- Name: SalesDepartment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SalesDepartment" (
    "Id" integer NOT NULL,
    "CustomerServiceDepartmentId" integer NOT NULL,
    "Employees" integer NOT NULL
);


ALTER TABLE public."SalesDepartment" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 19394)
-- Name: SalesDepartment_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."SalesDepartment" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."SalesDepartment_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 235 (class 1259 OID 19450)
-- Name: StorageDepartment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."StorageDepartment" (
    "Id" integer NOT NULL,
    "LogisticsDepartmentId" integer NOT NULL,
    "Employees" integer NOT NULL
);


ALTER TABLE public."StorageDepartment" OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 19449)
-- Name: StorageDepartment_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."StorageDepartment" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."StorageDepartment_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 239 (class 1259 OID 19472)
-- Name: WholesaleSalesDepartment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."WholesaleSalesDepartment" (
    "Id" integer NOT NULL,
    "SalesDepartmentId" integer NOT NULL,
    "Employees" integer NOT NULL
);


ALTER TABLE public."WholesaleSalesDepartment" OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 19471)
-- Name: WholesaleSalesDepartment_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."WholesaleSalesDepartment" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."WholesaleSalesDepartment_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3237 (class 2606 OID 19355)
-- Name: AccountingDepartment PK_AccountingDepartment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AccountingDepartment"
    ADD CONSTRAINT "PK_AccountingDepartment" PRIMARY KEY ("Id");


--
-- TOC entry 3234 (class 2606 OID 19349)
-- Name: ComplexObject PK_ComplexObject; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ComplexObject"
    ADD CONSTRAINT "PK_ComplexObject" PRIMARY KEY ("Id");


--
-- TOC entry 3240 (class 2606 OID 19366)
-- Name: CustomerServiceDepartment PK_CustomerServiceDepartment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CustomerServiceDepartment"
    ADD CONSTRAINT "PK_CustomerServiceDepartment" PRIMARY KEY ("Id");


--
-- TOC entry 3261 (class 2606 OID 19443)
-- Name: DeliveryDepartment PK_DeliveryDepartment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeliveryDepartment"
    ADD CONSTRAINT "PK_DeliveryDepartment" PRIMARY KEY ("Id");


--
-- TOC entry 3252 (class 2606 OID 19410)
-- Name: EngineeringDepartment PK_EngineeringDepartment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EngineeringDepartment"
    ADD CONSTRAINT "PK_EngineeringDepartment" PRIMARY KEY ("Id");


--
-- TOC entry 3246 (class 2606 OID 19388)
-- Name: LogisticsDepartment PK_LogisticsDepartment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LogisticsDepartment"
    ADD CONSTRAINT "PK_LogisticsDepartment" PRIMARY KEY ("Id");


--
-- TOC entry 3243 (class 2606 OID 19377)
-- Name: ProductionDepartment PK_ProductionDepartment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProductionDepartment"
    ADD CONSTRAINT "PK_ProductionDepartment" PRIMARY KEY ("Id");


--
-- TOC entry 3255 (class 2606 OID 19421)
-- Name: PurchasingDepartment PK_PurchasingDepartment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PurchasingDepartment"
    ADD CONSTRAINT "PK_PurchasingDepartment" PRIMARY KEY ("Id");


--
-- TOC entry 3258 (class 2606 OID 19432)
-- Name: QualityControlDepartment PK_QualityControlDepartment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."QualityControlDepartment"
    ADD CONSTRAINT "PK_QualityControlDepartment" PRIMARY KEY ("Id");


--
-- TOC entry 3267 (class 2606 OID 19465)
-- Name: RetailSalesDepartment PK_RetailSalesDepartment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RetailSalesDepartment"
    ADD CONSTRAINT "PK_RetailSalesDepartment" PRIMARY KEY ("Id");


--
-- TOC entry 3249 (class 2606 OID 19399)
-- Name: SalesDepartment PK_SalesDepartment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SalesDepartment"
    ADD CONSTRAINT "PK_SalesDepartment" PRIMARY KEY ("Id");


--
-- TOC entry 3264 (class 2606 OID 19454)
-- Name: StorageDepartment PK_StorageDepartment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StorageDepartment"
    ADD CONSTRAINT "PK_StorageDepartment" PRIMARY KEY ("Id");


--
-- TOC entry 3270 (class 2606 OID 19476)
-- Name: WholesaleSalesDepartment PK_WholesaleSalesDepartment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."WholesaleSalesDepartment"
    ADD CONSTRAINT "PK_WholesaleSalesDepartment" PRIMARY KEY ("Id");


--
-- TOC entry 3235 (class 1259 OID 19482)
-- Name: IX_AccountingDepartment_ComplexObjectId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_AccountingDepartment_ComplexObjectId" ON public."AccountingDepartment" USING btree ("ComplexObjectId");


--
-- TOC entry 3238 (class 1259 OID 19483)
-- Name: IX_CustomerServiceDepartment_ComplexObjectId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_CustomerServiceDepartment_ComplexObjectId" ON public."CustomerServiceDepartment" USING btree ("ComplexObjectId");


--
-- TOC entry 3259 (class 1259 OID 19484)
-- Name: IX_DeliveryDepartment_LogisticsDepartmentId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_DeliveryDepartment_LogisticsDepartmentId" ON public."DeliveryDepartment" USING btree ("LogisticsDepartmentId");


--
-- TOC entry 3250 (class 1259 OID 19485)
-- Name: IX_EngineeringDepartment_ProductionDepartmentId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_EngineeringDepartment_ProductionDepartmentId" ON public."EngineeringDepartment" USING btree ("ProductionDepartmentId");


--
-- TOC entry 3244 (class 1259 OID 19486)
-- Name: IX_LogisticsDepartment_CustomerServiceDepartmentId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_LogisticsDepartment_CustomerServiceDepartmentId" ON public."LogisticsDepartment" USING btree ("CustomerServiceDepartmentId");


--
-- TOC entry 3241 (class 1259 OID 19487)
-- Name: IX_ProductionDepartment_ComplexObjectId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_ProductionDepartment_ComplexObjectId" ON public."ProductionDepartment" USING btree ("ComplexObjectId");


--
-- TOC entry 3253 (class 1259 OID 19488)
-- Name: IX_PurchasingDepartment_ProductionDepartmentId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_PurchasingDepartment_ProductionDepartmentId" ON public."PurchasingDepartment" USING btree ("ProductionDepartmentId");


--
-- TOC entry 3256 (class 1259 OID 19489)
-- Name: IX_QualityControlDepartment_ProductionDepartmentId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_QualityControlDepartment_ProductionDepartmentId" ON public."QualityControlDepartment" USING btree ("ProductionDepartmentId");


--
-- TOC entry 3265 (class 1259 OID 19490)
-- Name: IX_RetailSalesDepartment_SalesDepartmentId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_RetailSalesDepartment_SalesDepartmentId" ON public."RetailSalesDepartment" USING btree ("SalesDepartmentId");


--
-- TOC entry 3247 (class 1259 OID 19491)
-- Name: IX_SalesDepartment_CustomerServiceDepartmentId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_SalesDepartment_CustomerServiceDepartmentId" ON public."SalesDepartment" USING btree ("CustomerServiceDepartmentId");


--
-- TOC entry 3262 (class 1259 OID 19492)
-- Name: IX_StorageDepartment_LogisticsDepartmentId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_StorageDepartment_LogisticsDepartmentId" ON public."StorageDepartment" USING btree ("LogisticsDepartmentId");


--
-- TOC entry 3268 (class 1259 OID 19493)
-- Name: IX_WholesaleSalesDepartment_SalesDepartmentId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_WholesaleSalesDepartment_SalesDepartmentId" ON public."WholesaleSalesDepartment" USING btree ("SalesDepartmentId");


--
-- TOC entry 3271 (class 2606 OID 19356)
-- Name: AccountingDepartment FK_AccountingDepartment_ComplexObject_ComplexObjectId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AccountingDepartment"
    ADD CONSTRAINT "FK_AccountingDepartment_ComplexObject_ComplexObjectId" FOREIGN KEY ("ComplexObjectId") REFERENCES public."ComplexObject"("Id") ON DELETE CASCADE;


--
-- TOC entry 3272 (class 2606 OID 19367)
-- Name: CustomerServiceDepartment FK_CustomerServiceDepartment_ComplexObject_ComplexObjectId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CustomerServiceDepartment"
    ADD CONSTRAINT "FK_CustomerServiceDepartment_ComplexObject_ComplexObjectId" FOREIGN KEY ("ComplexObjectId") REFERENCES public."ComplexObject"("Id") ON DELETE CASCADE;


--
-- TOC entry 3279 (class 2606 OID 19444)
-- Name: DeliveryDepartment FK_DeliveryDepartment_LogisticsDepartment_LogisticsDepartmentId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeliveryDepartment"
    ADD CONSTRAINT "FK_DeliveryDepartment_LogisticsDepartment_LogisticsDepartmentId" FOREIGN KEY ("LogisticsDepartmentId") REFERENCES public."LogisticsDepartment"("Id") ON DELETE CASCADE;


--
-- TOC entry 3276 (class 2606 OID 19411)
-- Name: EngineeringDepartment FK_EngineeringDepartment_ProductionDepartment_ProductionDepart~; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EngineeringDepartment"
    ADD CONSTRAINT "FK_EngineeringDepartment_ProductionDepartment_ProductionDepart~" FOREIGN KEY ("ProductionDepartmentId") REFERENCES public."ProductionDepartment"("Id") ON DELETE CASCADE;


--
-- TOC entry 3274 (class 2606 OID 19389)
-- Name: LogisticsDepartment FK_LogisticsDepartment_CustomerServiceDepartment_CustomerServi~; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LogisticsDepartment"
    ADD CONSTRAINT "FK_LogisticsDepartment_CustomerServiceDepartment_CustomerServi~" FOREIGN KEY ("CustomerServiceDepartmentId") REFERENCES public."CustomerServiceDepartment"("Id") ON DELETE CASCADE;


--
-- TOC entry 3273 (class 2606 OID 19378)
-- Name: ProductionDepartment FK_ProductionDepartment_ComplexObject_ComplexObjectId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProductionDepartment"
    ADD CONSTRAINT "FK_ProductionDepartment_ComplexObject_ComplexObjectId" FOREIGN KEY ("ComplexObjectId") REFERENCES public."ComplexObject"("Id") ON DELETE CASCADE;


--
-- TOC entry 3277 (class 2606 OID 19422)
-- Name: PurchasingDepartment FK_PurchasingDepartment_ProductionDepartment_ProductionDepartm~; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PurchasingDepartment"
    ADD CONSTRAINT "FK_PurchasingDepartment_ProductionDepartment_ProductionDepartm~" FOREIGN KEY ("ProductionDepartmentId") REFERENCES public."ProductionDepartment"("Id") ON DELETE CASCADE;


--
-- TOC entry 3278 (class 2606 OID 19433)
-- Name: QualityControlDepartment FK_QualityControlDepartment_ProductionDepartment_ProductionDep~; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."QualityControlDepartment"
    ADD CONSTRAINT "FK_QualityControlDepartment_ProductionDepartment_ProductionDep~" FOREIGN KEY ("ProductionDepartmentId") REFERENCES public."ProductionDepartment"("Id") ON DELETE CASCADE;


--
-- TOC entry 3281 (class 2606 OID 19466)
-- Name: RetailSalesDepartment FK_RetailSalesDepartment_SalesDepartment_SalesDepartmentId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RetailSalesDepartment"
    ADD CONSTRAINT "FK_RetailSalesDepartment_SalesDepartment_SalesDepartmentId" FOREIGN KEY ("SalesDepartmentId") REFERENCES public."SalesDepartment"("Id") ON DELETE CASCADE;


--
-- TOC entry 3275 (class 2606 OID 19400)
-- Name: SalesDepartment FK_SalesDepartment_CustomerServiceDepartment_CustomerServiceDe~; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SalesDepartment"
    ADD CONSTRAINT "FK_SalesDepartment_CustomerServiceDepartment_CustomerServiceDe~" FOREIGN KEY ("CustomerServiceDepartmentId") REFERENCES public."CustomerServiceDepartment"("Id") ON DELETE CASCADE;


--
-- TOC entry 3280 (class 2606 OID 19455)
-- Name: StorageDepartment FK_StorageDepartment_LogisticsDepartment_LogisticsDepartmentId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."StorageDepartment"
    ADD CONSTRAINT "FK_StorageDepartment_LogisticsDepartment_LogisticsDepartmentId" FOREIGN KEY ("LogisticsDepartmentId") REFERENCES public."LogisticsDepartment"("Id") ON DELETE CASCADE;


--
-- TOC entry 3282 (class 2606 OID 19477)
-- Name: WholesaleSalesDepartment FK_WholesaleSalesDepartment_SalesDepartment_SalesDepartmentId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."WholesaleSalesDepartment"
    ADD CONSTRAINT "FK_WholesaleSalesDepartment_SalesDepartment_SalesDepartmentId" FOREIGN KEY ("SalesDepartmentId") REFERENCES public."SalesDepartment"("Id") ON DELETE CASCADE;


-- Completed on 2023-05-19 00:38:02

--
-- PostgreSQL database dump complete
--


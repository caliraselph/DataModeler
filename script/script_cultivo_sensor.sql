-- Generado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   en:        2024-10-16 22:11:09 BRT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



DROP TABLE tb_agro_area CASCADE CONSTRAINTS;

DROP TABLE tb_agro_cultura CASCADE CONSTRAINTS;

DROP TABLE tb_agro_leitura CASCADE CONSTRAINTS;

DROP TABLE tb_agro_manutencao CASCADE CONSTRAINTS;

DROP TABLE tb_agro_r_area_cultura CASCADE CONSTRAINTS;

DROP TABLE tb_agro_registro_previsao CASCADE CONSTRAINTS;

DROP TABLE tb_agro_sensor CASCADE CONSTRAINTS;

DROP TABLE tb_agro_tp_sensor CASCADE CONSTRAINTS;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE tb_agro_area (
    area_id   NUMBER(10) NOT NULL,
    tamano    NUMBER(10, 2) NOT NULL,
    latitude  NUMBER(10, 4) NOT NULL,
    longitude NUMBER(10, 4) NOT NULL
);

ALTER TABLE tb_agro_area ADD CONSTRAINT tb_agro_area_pk PRIMARY KEY ( area_id );

CREATE TABLE tb_agro_cultura (
    cultura_id  NUMBER(10) NOT NULL,
    descricao   CHAR(120) NOT NULL,
    req_ph_min  NUMBER(10, 2) NOT NULL,
    req_ph_max  NUMBER(10, 2) NOT NULL,
    req_umi_min NUMBER(10, 2) NOT NULL,
    req_umi_max NUMBER(10, 2) NOT NULL,
    req_nut_p   NUMBER(10, 2) NOT NULL,
    req_nut_k   NUMBER(10, 2) NOT NULL
);

ALTER TABLE tb_agro_cultura ADD CONSTRAINT tb_agro_cultura_pk PRIMARY KEY ( cultura_id );

CREATE TABLE tb_agro_leitura (
    leitura_id               NUMBER(15) NOT NULL,
    tb_agro_area_area_id     NUMBER(10) NOT NULL,
    tb_agro_sensor_sensor_id NUMBER(10) NOT NULL,
    data_hora                DATE NOT NULL,
    valor_umi                NUMBER(10, 2) NOT NULL,
    valor_ph                 NUMBER(10, 2) NOT NULL,
    valor_nut_p              NUMBER(10, 2) NOT NULL,
    valor_nut_k              NUMBER(10, 2) NOT NULL
);

ALTER TABLE tb_agro_leitura ADD CONSTRAINT tb_agro_leitura_pk PRIMARY KEY ( leitura_id );

CREATE TABLE tb_agro_manutencao (
    id_manutencao NUMBER(10) NOT NULL,
    area_id       NUMBER(10) NOT NULL,
    data_hora     DATE NOT NULL,
    quant_agua    NUMBER(10, 2) NOT NULL,
    quant_nut_p   NUMBER(10, 2) NOT NULL,
    quant_nut_k   NUMBER(10, 2) NOT NULL
);

ALTER TABLE tb_agro_manutencao ADD CONSTRAINT tb_agro_manutencao_pk PRIMARY KEY ( id_manutencao );

CREATE TABLE tb_agro_r_area_cultura (
    cultura_id NUMBER(10) NOT NULL,
    area_id    NUMBER(10) NOT NULL
);

ALTER TABLE tb_agro_r_area_cultura ADD CONSTRAINT plantada_pk PRIMARY KEY ( cultura_id,
                                                                            area_id );

CREATE TABLE tb_agro_registro_previsao (
    previsao_id NUMBER(10) NOT NULL,
    area_id     NUMBER(10) NOT NULL,
    data        DATE NOT NULL,
    cant_agua   NUMBER(10, 2) NOT NULL,
    cant_nut_p  NUMBER(10, 2) NOT NULL,
    cant_nut_k  NUMBER(10, 2) NOT NULL
);

ALTER TABLE tb_agro_registro_previsao ADD CONSTRAINT pk_tb_agro_registro_previsao PRIMARY KEY ( previsao_id );

CREATE TABLE tb_agro_sensor (
    sensor_id    NUMBER(10) NOT NULL,
    tp_sensor_id NUMBER(10) NOT NULL,
    descricao    CHAR(120) NOT NULL,
    sit          NUMBER(1) NOT NULL
);

ALTER TABLE tb_agro_sensor ADD CONSTRAINT tb_agro_sensor_pk PRIMARY KEY ( sensor_id );

CREATE TABLE tb_agro_tp_sensor (
    tp_sensor_id NUMBER(10) NOT NULL,
    descricao    CHAR(120) NOT NULL,
    sit          NUMBER(1) NOT NULL
);

ALTER TABLE tb_agro_tp_sensor ADD CONSTRAINT tb_agro_tp_sensor_pk PRIMARY KEY ( tp_sensor_id );

ALTER TABLE tb_agro_leitura
    ADD CONSTRAINT fk_tb_agro_leitura_area FOREIGN KEY ( tb_agro_area_area_id )
        REFERENCES tb_agro_area ( area_id );

ALTER TABLE tb_agro_leitura
    ADD CONSTRAINT fk_tb_agro_leitura_sensor FOREIGN KEY ( tb_agro_sensor_sensor_id )
        REFERENCES tb_agro_sensor ( sensor_id );

ALTER TABLE tb_agro_manutencao
    ADD CONSTRAINT fk_tb_agro_manutencao_area FOREIGN KEY ( area_id )
        REFERENCES tb_agro_area ( area_id );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE tb_agro_registro_previsao
    ADD CONSTRAINT fk_tb_agro_registro_previsao_area FOREIGN KEY ( area_id )
        REFERENCES tb_agro_area ( area_id );

ALTER TABLE tb_agro_sensor
    ADD CONSTRAINT fk_tb_agro_sensor_tp_sensor FOREIGN KEY ( tp_sensor_id )
        REFERENCES tb_agro_tp_sensor ( tp_sensor_id );

ALTER TABLE tb_agro_r_area_cultura
    ADD CONSTRAINT tb_agro_r_area_fk FOREIGN KEY ( area_id )
        REFERENCES tb_agro_area ( area_id );

ALTER TABLE tb_agro_r_area_cultura
    ADD CONSTRAINT tb_agro_r_cultura_fk FOREIGN KEY ( cultura_id )
        REFERENCES tb_agro_cultura ( cultura_id );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             0
-- ALTER TABLE                             15
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0

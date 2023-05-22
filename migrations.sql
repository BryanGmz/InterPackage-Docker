--scp D:\Proyectos_cunoc\Sofware_Avanzado\interpackage\InterPackage-Base-Domains\out\artifacts\base_domains_jar\base-domains.jar root@164.90.232.216:/root/.m2/repository/com/interpackage/base-domains/0.0.1-SNAPSHOT/base-domains-0.0.1-SNAPSHOT.jar

--INSERT USERS
INSERT INTO public.role( id_role, description, name)
	VALUES 
    (1, 'Admin',        'Admin'),
    (2, 'Operator',     'Operator'),
    (3, 'Client',       'Client'),
    (4, 'Receptionist', 'Receptionist');

INSERT INTO public.internal_user (id_user, address, dpi, email, name, password, phone, id_role)
	VALUES 
    (1, 'address', '123456789', 'admin@interpackage.com', 'Admin', '$2a$10$jc8xhPfqQ5/7lNKMlbOoru/6pJtWRzQ7TJ1rJtBl/pfcxYg8Dyxri', '123456789', 1),
    (2, 'address', '123456789', 'operator@interpackage.com', 'Operator', '$2a$10$jc8xhPfqQ5/7lNKMlbOoru/6pJtWRzQ7TJ1rJtBl/pfcxYg8Dyxri', '123456789', 2),
    (3, 'address', '123456789', 'client@interpackage.com', 'Client', '$2a$10$jc8xhPfqQ5/7lNKMlbOoru/6pJtWRzQ7TJ1rJtBl/pfcxYg8Dyxri', '123456789', 3),
    (4, 'address', '123456789', 'receptionist@interpackage.com', 'Receptionist', '$2a$10$jc8xhPfqQ5/7lNKMlbOoru/6pJtWRzQ7TJ1rJtBl/pfcxYg8Dyxri', '123456789', 4);


--INSERT PACKAGES
INSERT INTO public.package_status (id, description, "name")
VALUES
(1, 'Se recibio el paquete', 'RECIBIDO'),
(2, 'El paquete esta en bodega', 'EN BODEGA'),
(3, 'El paquete esta siendo trasladado', 'EN RUTA'),
(4, 'Sera entregado', 'EN DESTINO FINAL'),
(5, 'Se entrego el paquete', 'COMPLETADO'),
(6, 'Se cancelo el paquete', 'CANCELADO'),
(7, 'Se  encontro una novedad en el paquete', 'NOVEDAD');

INSERT INTO public.package_type (id, description, "name")
VALUES
(1, 'El paquete esta cobrado', 'ENVIO NORMAL'),
(2, 'EL paquete debe cobrarse', 'ENVIO CONTRA ENTREGA');


--INSERT RESOURCES
INSERT INTO public.country
(country_id, iso_code_1, iso_code_2, iso_code_3, "name")
VALUES
(1, 'GT', 'GT', 'GTM', 'Guatemala'),
(2, 'MX', 'MX', 'MEX', 'Mexico'),
(3, 'HN', 'HN', 'HND', 'Honduras');

INSERT INTO public.city (city_id, "name", country_id)
VALUES
(1, 'Guatemala', 1),
(2, 'Quetzaltenango', 1),
(3, 'Huehuetenango', 1),
(4, 'Retalhuleu', 1),
(5, 'Totoniapan', 1),
(6, 'Flores', 1),
(7, 'Coban', 1),
(8, 'Salama', 1),
(9, 'Jutiapa', 1),
(10, 'Chimaltenango', 1),
(11, 'Ciudad de Mexico', 2),
(12, 'Tegucigalpa', 3);
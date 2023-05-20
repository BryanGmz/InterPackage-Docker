--scp D:\Proyectos_cunoc\Sofware_Avanzado\interpackage\InterPackage-Base-Domains\out\artifacts\base_domains_jar\base-domains.jar root@164.90.232.216:/root/.m2/repository/com/interpackage/base-domains/0.0.1-SNAPSHOT/base-domains-0.0.1-SNAPSHOT.jar
-- Insert Roles: Admin, Operator, Client, Receptionist
INSERT INTO public.role( id_role, description, name)
	VALUES 
    (1, 'Admin',        'Admin'),
    (2, 'Operator',     'Operator'),
    (3, 'Client',       'Client'),
    (4, 'Receptionist', 'Receptionist');

-- Insert Users:

INSERT INTO public.internal_user (id_user, address, dpi, email, name, password, phone, id_role)
	VALUES 
    (1, 'address', '123456789', 'admin@interpackage.com', 'Admin', '$2a$10$jc8xhPfqQ5/7lNKMlbOoru/6pJtWRzQ7TJ1rJtBl/pfcxYg8Dyxri', '123456789', 1),
    (2, 'address', '123456789', 'operator@interpackage.com', 'Operator', '$2a$10$jc8xhPfqQ5/7lNKMlbOoru/6pJtWRzQ7TJ1rJtBl/pfcxYg8Dyxri', '123456789', 2),
    (3, 'address', '123456789', 'client@interpackage.com', 'Client', '$2a$10$jc8xhPfqQ5/7lNKMlbOoru/6pJtWRzQ7TJ1rJtBl/pfcxYg8Dyxri', '123456789', 3),
    (4, 'address', '123456789', 'receptionist@interpackage.com', 'Receptionist', '$2a$10$jc8xhPfqQ5/7lNKMlbOoru/6pJtWRzQ7TJ1rJtBl/pfcxYg8Dyxri', '123456789', 4);



--Insert Status Package

INSERT INTO public.package_status (description, "name")
VALUES
('Se recibio el paquete', 'RECIBIDO'),
('El paquete esta en bodega', 'EN BODEGA'),
('El paquete esta siendo trasladado', 'EN RUTA'),
('Sera entregado', 'EN DESTINO FINAL'),
('Se entrego el paquete', 'COMPLETADO'),
('Se cancelo el paquete', 'CANCELADO'),
('Se  encontro una novedad en el paquete', 'NOVEDAD');


--Insert Type Package

INSERT INTO public.package_type (description, "name")
VALUES
('El paquete esta cobrado', 'ENVIO NORMAL'),
('EL paquete debe cobrarse', 'ENVIO CONTRA ENTREGA');


--Insert PRUEBAS

INSERT INTO public.package (id_road, observations, recipient_address, recipient_dpi, recipient_name, sub_total, total_cost, volume, weight, id_package_status, id_package_type, order_id)
VALUES
(0, 'Ninguna', 'Guatemala', '123', 'Juan', 100, 150, 15, 2, 1, 1, '12312hug2');

INSERT INTO public.shipping_order(id, client, email, final_address, status)
VALUES
('12312hug2', '12312', 'a@a.com', 'casa final', 'CREADO');


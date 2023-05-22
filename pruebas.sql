--INSERTS DE PRUEBAS

--INSERT RESOURCES
INSERT INTO public.warehouse(warehouse_id, address_line, is_deleted, "name", warehouse_type, city_id)
VALUES
(1, 'Calle central', false, 'Bodega Guatemala',        1, 1),
(2, 'Calle No: 22',  false, 'Bodega Guatemala 2',      1, 1),
(3, 'Calle central', false, 'Bodega Quetzaltenango',   1, 2),
(4, 'Calle central', false, 'Bodega Huehuetenango',    1, 3),
(5, 'Calle central', false, 'Bodega Retalhuleu',       1, 4),
(6, 'Calle central', false, 'Bodega Totoniapan',       1, 5),
(7, 'Calle central', false, 'Bodega Flores',           1, 6),
(8, 'Calle central', false, 'Bodega Coban',            1, 7),
(9, 'Calle central', false, 'Bodega Salama',           1, 8),
(10, 'Calle central', false, 'Bodega Jutiapa',          1, 9),
(11, 'Calle central', false, 'Bodega Chimaltenango',    1, 10),
(12, 'Calle central', false, 'Bodega Ciudad de Mexico', 1, 11),
(13, 'Calle central', false, 'Bodega Tegucigalpa',      1, 12);

INSERT INTO public.route
(route_id, is_deleted, destination, "name", origin, price_weight) 
VALUES
(1, false, 1, 'Guate-Xela', 2, 10),
(2, false, 2, 'Xela-Guate', 1, 15),
(3, false, 1, 'Guate-Huehue', 3, 15),
(4, false, 3, 'Huehue-Guate', 1, 18);

INSERT INTO public."path"
(path_id, destination, "name", origin, priority, route_id, is_active, is_deleted) VALUES
(1, 2, 'GUA-XEL', 1, 0, 1, true, false),
(2, 5, 'GUA-TOT', 1, 1, 1, true, false),
(3, 2, 'TOT-XEL', 5, 1, 1, true, false),

(4, 3, 'GUA-HUE', 1, 0, 3, true, false),
(5, 2, 'GUA-XEL', 1, 1, 3, true, false),
(6, 3, 'XEL-HUE', 2, 1, 3, true, false);

INSERT INTO public.resource
(resource_id, operating_cost, priority, status, path_id, wharehouse_id) VALUES
(1, 5, 0, true, 1, 1),
(2, 5, 0, true, 1, 3),

(3, 5, 1, true, 2, 2),
(4, 5, 1, true, 2, 6),
(5, 5, 1, true, 3, 3),

(6, 5, 0, true, 3, 1),
(7, 5, 0, true, 3, 4),

(8, 5, 1, true, 4, 2),
(9, 5, 1, true, 4, 3),
(10, 5, 1, true, 4, 4);


--INSERT PACKAGES
INSERT INTO public.shipping_order(id, client, email, final_address, status)
VALUES
('12312hug2', '12312', 'a@a.com', 'casa final', 'CREADO');

INSERT INTO public.package (id, id_road, observations, recipient_address, recipient_dpi, recipient_name, sub_total, total_cost, volume, weight, id_package_status, id_package_type, order_id)
VALUES
(1, 1, 'Ninguna', 'Guatemala', '123', 'Juan', 100, 150, 15, 2, 1, 1, '12312hug2');

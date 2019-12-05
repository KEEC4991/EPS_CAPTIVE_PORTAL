SELECT CU.*, CC.descripcion  
FROM  public.captive_usuario CU 
join public.captive_carrera CC on CU.id_carrera = CC.id_carrera
join ( SELECT * FROM dblink('dbname=radius', 'SELECT * FROM public.radcheck') AS CRAD())
order by CU.id_usuario;
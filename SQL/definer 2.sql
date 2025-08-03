CREATE definer= `root`@`localhost` PROCEDURE `pa_libros_autor` (in p_autor varchar(30))
 BEGIN 
 
  select titulo,editorial, precio
  from libros
  where autor = p_autor
  
  END
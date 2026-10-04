PotencIA 360 V6
- Supabase conectado con publishable key + RLS.
- /admin/ tiene login real con Supabase Auth.
- Admin crea, edita, publica y elimina cursos.
- Home y ficha leen cursos publicados desde Supabase; catalog.json queda como fallback.
- Importar URL prepara la ficha. La extracción automática de Udemy requiere un backend/importador separado y respetar acceso autorizado.
IMPORTANTE: nunca colocar secret/service_role key en frontend.

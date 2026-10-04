-- PotencIA 360 V8 - Primer curso real
-- Ejecutar en Supabase > SQL Editor
insert into public.courses (
  slug, provider, title, subtitle, instructor, category, level, language,
  duration, lessons, rating, reviews, students, updated_label,
  price, original_price, image_url, course_url, reviews_url,
  tags, learning, requirements, description, featured, status
) values (
  'curso-completo-de-codex-crea-aplicaciones-con-ia-y-openai',
  'Udemy',
  'Curso Completo de Codex: Crea Aplicaciones con IA y OpenAI',
  'Domina Codex a nivel profesional y crea aplicaciones reales y seguras con Agentes de IA, MCP, Hooks, Skills y más.',
  'Santiago Hernández',
  'Inteligencia Artificial',
  'Todos los niveles',
  'Español',
  '19 h 22 min',
  '14 secciones · 136 clases',
  4.8,
  129,
  1020,
  '09/2026',
  null,
  null,
  null,
  'https://www.udemy.com/course/curso-completo-de-codex-crea-aplicaciones-con-ia-y-openai/',
  'https://www.udemy.com/course/curso-completo-de-codex-crea-aplicaciones-con-ia-y-openai/#reviews',
  array['Codex','Agentes IA','OpenAI','MCP','Automatización'],
  array[
    'Dominar Codex desde cero hasta nivel profesional para crear aplicaciones reales.',
    'Configurar y usar Codex en terminal, VS Code, Cursor, Antigravity y Windsurf.',
    'Construir sistemas con subagentes especializados y equipos multi-agente.',
    'Aplicar seguridad con sandbox, políticas de aprobación y hooks.',
    'Integrar MCP para conectar Codex con GitHub, bases de datos y herramientas externas.',
    'Desarrollar Skills y Plugins personalizados para ampliar flujos de trabajo.'
  ],
  array['Una computadora','Conexión a Internet','Interés por aprender y experimentar con IA'],
  'Curso práctico orientado al desarrollo de software con Codex y agentes de inteligencia artificial. Incluye prompting profesional, seguridad, MCP, hooks, subagentes, Skills, Plugins y proyectos aplicados.',
  true,
  'published'
)
on conflict (slug) do update set
  provider=excluded.provider,title=excluded.title,subtitle=excluded.subtitle,
  instructor=excluded.instructor,category=excluded.category,level=excluded.level,
  language=excluded.language,duration=excluded.duration,lessons=excluded.lessons,
  rating=excluded.rating,reviews=excluded.reviews,students=excluded.students,
  updated_label=excluded.updated_label,course_url=excluded.course_url,
  reviews_url=excluded.reviews_url,tags=excluded.tags,learning=excluded.learning,
  requirements=excluded.requirements,description=excluded.description,
  featured=excluded.featured,status=excluded.status;

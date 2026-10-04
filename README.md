# Mi Grado · Actividades Comerciales — versión completa

Esta versión es una PWA con sincronización real entre móvil y ordenador mediante Supabase.

## 1. Crear la nube gratis
1. Entra en https://supabase.com y crea una cuenta/proyecto.
2. En el proyecto abre SQL Editor.
3. Copia y ejecuta TODO el contenido de `supabase.sql`.
4. Ve a Project Settings > API.
5. Copia:
   - Project URL
   - Publishable/anon key (la clave pública del navegador).
6. Abre `index.html` y sustituye:
   SUPABASE_URL = "PON_AQUI_TU_PROJECT_URL";
   SUPABASE_ANON_KEY = "PON_AQUI_TU_ANON_KEY";

NO pongas nunca una service_role/secret key en index.html.

## 2. Publicar gratis
Puedes usar GitHub Pages con un repositorio público. Sube:
- index.html
- manifest.json

GitHub Pages publica el sitio con HTTPS.

## 3. Instalar en Android
Abre la URL publicada en Chrome > menú > Añadir a pantalla de inicio / Instalar aplicación.

## 4. Qué incluye
- Cuenta personal con email y contraseña.
- Sincronización nube móvil/PC.
- 8 asignaturas del Grado.
- Apuntes y resúmenes.
- Tests de 4 opciones.
- Resultado de tests.
- Búsqueda de apuntes.
- Eliminación de contenido.
- PWA instalable.

## Importante
"Gratis e ilimitado" literalmente no existe en servicios cloud: Supabase tiene límites de su plan gratuito. Esta aplicación no usa créditos de IA ni cobra por cada apunte/test. Mientras estés dentro de los límites gratuitos, el coste es 0 €.

Los datos están separados por usuario mediante Row Level Security.

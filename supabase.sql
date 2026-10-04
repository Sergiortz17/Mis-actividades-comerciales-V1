-- SUPABASE: SQL EDITOR > NEW QUERY > pega TODO esto > RUN

create table public.notes (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  subject text not null,
  title text not null,
  topic text default '',
  content text not null,
  created_at timestamptz not null default now()
);

create table public.tests (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  subject text not null,
  title text not null,
  questions jsonb not null default '[]'::jsonb,
  created_at timestamptz not null default now()
);

alter table public.notes enable row level security;
alter table public.tests enable row level security;

create policy "notes_select_own" on public.notes for select using (auth.uid() = user_id);
create policy "notes_insert_own" on public.notes for insert with check (auth.uid() = user_id);
create policy "notes_delete_own" on public.notes for delete using (auth.uid() = user_id);

create policy "tests_select_own" on public.tests for select using (auth.uid() = user_id);
create policy "tests_insert_own" on public.tests for insert with check (auth.uid() = user_id);
create policy "tests_delete_own" on public.tests for delete using (auth.uid() = user_id);

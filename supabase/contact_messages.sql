-- Contact form table: visitors can only send (insert); nobody can read messages from the site.
-- Read them in the Supabase dashboard: Table Editor > contact_messages.
create table public.contact_messages (
  id bigint generated always as identity primary key,
  created_at timestamptz not null default now(),
  name text not null check (char_length(name) between 1 and 120),
  email text not null check (char_length(email) between 3 and 200 and email like '%@%'),
  message text not null check (char_length(message) between 1 and 4000)
);
alter table public.contact_messages enable row level security;
create policy "anyone can send a message" on public.contact_messages
  for insert to anon, authenticated with check (true);
revoke all on public.contact_messages from anon, authenticated;
grant insert (name, email, message) on public.contact_messages to anon, authenticated;

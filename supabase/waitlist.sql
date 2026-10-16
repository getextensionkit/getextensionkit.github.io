-- Waitlist for the ExtensionKit landing page (lives in the seller's Supabase project,
-- not part of the boilerplate shipped to buyers).
create table if not exists public.waitlist (
  id bigint generated always as identity primary key,
  email text not null unique check (email ~* '^[^@\s]+@[^@\s]+\.[^@\s]+$' and length(email) <= 254),
  source text check (length(source) <= 64),
  created_at timestamptz not null default now()
);

alter table public.waitlist enable row level security;

-- Visitors may only add themselves. No select/update/delete policies: the list is
-- readable only from the dashboard (service role).
drop policy if exists "waitlist_insert_anon" on public.waitlist;
create policy "waitlist_insert_anon" on public.waitlist
  for insert to anon, authenticated
  with check (true);

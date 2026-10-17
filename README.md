# Landing page (seller only)

The ExtensionKit marketing site, live at https://getextensionkit.github.io/ — published to GitHub Pages from the
public `getextensionkit/getextensionkit.github.io` repo (git remote `landing`).
**Do not ship this folder to buyers** — exclude `landing/` when delivering the boilerplate.

Publish changes:

```bash
git subtree split --prefix=landing -b landing-publish
git push landing landing-publish:main
git branch -D landing-publish
```

Waitlist signups go to the `waitlist` table (see `supabase/waitlist.sql`). View them in Supabase → Table Editor.

## Shared Supabase project (seller only)

The `saas-extension` Supabase project is shared by the ExtensionKit dev demo and **ReadStats**
(private repo `ramaf2003/readstats`). Deploy `pro-api` **only from the readstats repo**: its `actions.ts`
includes the `readability` action, and deploying this repo's copy would remove it and break ReadStats Pro.
`delete-account` and `lemonsqueezy-webhook` are identical in both repos.

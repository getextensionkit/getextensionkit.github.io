# Landing page (seller only)

The ExtensionKit marketing site, published to GitHub Pages from the public `extensionkit` repo.
**Do not ship this folder to buyers** — exclude `landing/` when delivering the boilerplate.

Publish changes:

```bash
git subtree split --prefix=landing -b landing-publish
git push landing landing-publish:main
git branch -D landing-publish
```

Waitlist signups go to the `waitlist` table (see `supabase/waitlist.sql`). View them in Supabase → Table Editor.

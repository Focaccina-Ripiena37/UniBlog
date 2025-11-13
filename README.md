<div align="center">

	<h1>UniBlog</h1>
	<p>Advanced Blog · Progetto di Sistemi Web (AA 2025/2026)</p>

	<p>
		<a href="https://github.com/Focaccina-Ripiena37/UniBlog"><img alt="Repo" src="https://img.shields.io/badge/GitHub-UniBlog-24292e?logo=github&logoColor=white"></a>
		<a href="https://github.com/Focaccina-Ripiena37/UniBlog/stargazers"><img alt="Stars" src="https://img.shields.io/github/stars/Focaccina-Ripiena37/UniBlog?style=social"></a>
		<a href="https://github.com/Focaccina-Ripiena37/UniBlog/network/members"><img alt="Forks" src="https://img.shields.io/github/forks/Focaccina-Ripiena37/UniBlog?style=social"></a>
		<a href="https://github.com/Focaccina-Ripiena37/UniBlog/issues"><img alt="Issues" src="https://img.shields.io/github/issues/Focaccina-Ripiena37/UniBlog"></a>
		<img alt="Last commit" src="https://img.shields.io/github/last-commit/Focaccina-Ripiena37/UniBlog">
	</p>

	<p>
		<img alt="Rails" src="https://img.shields.io/badge/Rails-8.1-red?logo=rubyonrails&logoColor=white">
		<img alt="Ruby" src="https://img.shields.io/badge/Ruby-3.2%2B-cc342d?logo=ruby&logoColor=white">
		<img alt="SQLite" src="https://img.shields.io/badge/DB-SQLite3-0f80cc?logo=sqlite&logoColor=white">
		<img alt="Turbo" src="https://img.shields.io/badge/Hotwire-Turbo-0ea5e9">
	</p>

</div>

---

## Caratteristiche

- Polymorphic Like per Post e Comment (Turbo Stream, aggiornamenti in tempo reale)
- Commenti con append/remove via Turbo (niente JS custom)
- Reazioni/emoji ai post
- Autenticazione didattica (Session/Current), Registrazione custom (senza Devise)
- Autorizzazioni base: solo l’autore può modificare/cancellare il proprio post

## Requisiti

- Ruby 3.2+ (consigliato)
- Bundler
- SQLite 3

## Avvio rapido (Windows PowerShell)

```powershell
# 1) Installa dipendenze
bundle install

# 2) Prepara il DB (crea/migra/semina se previsto)
bin\rails db:prepare

# 3) Avvia il server di sviluppo
bin\rails server
```

Apri: http://localhost:3000

## Test

```powershell
bin\rails test
```

## Note di implementazione

- Likes: partial riutilizzabile `app/views/likes/_like.html.erb` con `turbo_frame_tag` e broadcast su create/destroy.
- Commenti: lista unificata in `app/views/comments/_comments.html.erb` con wrapper `id="dom_id(post, :comments)"`; il form vive in un container dedicato per il reset via Turbo.
- Post show: il post è avvolto in `turbo_frame_tag dom_id(@post)`; l’`update` fa `turbo_stream.replace` dell’intero blocco.
- Autorizzazioni: in controller si verifica `@post.user_id == Current.user&.id`; nelle view i link di edit/destroy compaiono solo all’autore.

## Link utili

- Repo: https://github.com/Focaccina-Ripiena37/UniBlog
- Rails: https://rubyonrails.org
- Turbo: https://turbo.hotwired.dev

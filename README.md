<div align="center">

<h1>UniBlog</h1>
<p><strong>Advanced Blog · Progetto di Sistemi Web (AA 2025/2026)</strong></p>

<p>
	<a href="https://github.com/Focaccina-Ripiena37/UniBlog">
		<img alt="Repo" src="https://img.shields.io/badge/GitHub-UniBlog-24292e?logo=github&logoColor=white">
	</a>
	<a href="https://github.com/Focaccina-Ripiena37/UniBlog/stargazers">
		<img alt="Stars" src="https://img.shields.io/github/stars/Focaccina-Ripiena37/UniBlog?style=social">
	</a>
	<a href="https://github.com/Focaccina-Ripiena37/UniBlog/network/members">
		<img alt="Forks" src="https://img.shields.io/github/forks/Focaccina-Ripiena37/UniBlog?style=social">
	</a>
	<a href="https://github.com/Focaccina-Ripiena37/UniBlog/issues">
		<img alt="Issues" src="https://img.shields.io/github/issues/Focaccina-Ripiena37/UniBlog">
	</a>
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

## ✨ Funzionalità principali

- **Like polimorfici** per Post e Comment  
  (Turbo Stream → aggiornamenti in tempo reale)
- **Commenti dinamici** (append/remove senza refresh)
- **Reazioni/emoji** ai post
- **Autenticazione didattica** (Session · Current)  
  + **Sign-up custom** (senza Devise)
- **Autorizzazioni base**  
  → solo l’autore può modificare/cancellare il proprio post

---

## 📦 Requisiti

- Ruby **3.2+**
- Bundler
- SQLite 3
- Rails 8.x installato tramite `bundle install`

---

## 🚀 Avvio rapido (Windows PowerShell)

```powershell
# 1) Installa le dipendenze
bundle install

# 2) Prepara il database
bin\rails db:prepare

# 3) Avvia il server
bin\rails server
````

Apri l’app su: **[http://localhost:3000](http://localhost:3000)**

---

## 🧪 Test

```powershell
bin\rails test
```

---

## 🛠️ Note di implementazione

* **Likes**

  * Partial riutilizzabile: `app/views/likes/_like.html.erb`
  * Uso di `turbo_frame_tag` + broadcast su create/destroy

* **Commenti**

  * Lista unificata in `app/views/comments/_comments.html.erb`
  * Wrapper: `id="<%= dom_id(post, :comments) %>"`
  * Form isolato per reset Turbo automatico

* **Post show**

  * Post avvolto in: `turbo_frame_tag dom_id(@post)`
  * `update.turbo_stream.erb` → `turbo_stream.replace` del blocco del post

* **Autorizzazioni**

  * Controller: controllo `@post.user_id == Current.user&.id`
  * View: pulsanti `Edit` / `Destroy` visibili solo all’autore

---

## 🔗 Link utili

* **Repository:** [https://github.com/Focaccina-Ripiena37/UniBlog](https://github.com/Focaccina-Ripiena37/UniBlog)
* **Rails:** [https://rubyonrails.org](https://rubyonrails.org)
* **Turbo:** [https://turbo.hotwired.dev](https://turbo.hotwired.dev)

```

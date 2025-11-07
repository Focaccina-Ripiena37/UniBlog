<div align="center">

# 📝 BLOG UNIFE

*Simple blog application built with Ruby on Rails for a university project.*

![Ruby](https://img.shields.io/badge/Ruby-CC342D?logo=ruby\&logoColor=white)
![Rails](https://img.shields.io/badge/Rails-CC0000?logo=rubyonrails\&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green)
![Status](https://img.shields.io/badge/status-Completed-blue)
![Made with ❤️ at UNIFE](https://img.shields.io/badge/Made%20with%20❤️%20at-UNIFE-red)

</div>

---

## 📖 Descrizione

**Blog UNIFE** è una semplice applicazione web sviluppata in **Ruby on Rails**, realizzata come esercitazione universitaria.
Permette di creare, modificare e visualizzare articoli, dimostrando l’uso base di **MVC**, **ActiveRecord**, e **routing Rails**.

---

## ⚙️ Requisiti

* **Ruby** 3.x
* **Rails** 7.x
* **SQLite** (o PostgreSQL, se configurato)
* **Bundler** installato (`gem install bundler`)

---

## 🚀 Installazione

Clona la repository ed entra nella cartella del progetto:

```bash
git clone https://github.com/tuo-utente/blog-unife.git
cd blog-unife
```

Installa le dipendenze:

```bash
bundle install
```

Crea e popola il database:

```bash
bin/rails db:setup
# oppure
# bin/rails db:create db:migrate db:seed
```

Avvia il server di sviluppo:

```bash
bin/rails server
```

Visita 👉 **[http://localhost:3000](http://localhost:3000)**

---

## 🧩 Struttura del progetto

| Directory          | Descrizione                        |
| ------------------ | ---------------------------------- |
| `app/models/`      | Contiene i modelli ActiveRecord    |
| `app/controllers/` | Gestisce la logica delle richieste |
| `app/views/`       | Template HTML/ERB delle pagine     |
| `config/routes.rb` | Definisce le rotte principali      |

---

## 🧪 Test (facoltativo)

```bash
bin/rails test
```

o, se usi RSpec:

```bash
bundle exec rspec
```

---

## 🏫 Note per la consegna

Progetto sviluppato a fini **didattici** per l’Università di Ferrara (UNIFE).
Puoi usare i seguenti dati di test se previsti:

```text
Utente demo: admin@example.com
Password: password
```

---

<div align="center">

💻 Realizzato con **Ruby on Rails**
📍 Università degli Studi di Ferrara – A.A. 2025

</div>

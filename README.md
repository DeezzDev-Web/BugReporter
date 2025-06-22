
# 🛠️ BugReport - Signalement de bugs In-Game (FiveM)

Un script simple et efficace pour permettre à vos joueurs de **signaler des bugs** directement en jeu via un menu **RageUI**.  
Le message est ensuite **envoyé automatiquement sur Discord** grâce à un **webhook**.

---

## 🚀 Fonctionnalités

- 📋 Menu propre et interactif avec **RageUI**
- 📨 Envoi du signalement sur **Discord (webhook)**
- 🔔 **Notification automatique** côté joueur après l’envoi
- ⚙️ **Fichier `config.lua`** pour personnaliser facilement le message, la commande, et le webhook
- 💡 Est surtout Aucun Print Client !!

---

## 🔧 Installation

1. Téléchargez le script et placez-le dans le dossier `resources` de votre serveur.  
2. Ajoutez cette ligne dans votre `server.cfg` :

```cfg
ensure bugreport
```

3. Ouvrez le fichier `config.lua` et configurez :  
   - Le webhook Discord
   - Le nom de la commande (ex: `/bug`)

---

## ⚙️ Configuration (`config.lua`)

```lua
Config = {}

-- Webhook Discord pour recevoir les signalements
Config.WebhookURL = "https://discord.com/api/webhooks/..."

-- Nom de la commande pour ouvrir le menu
Config.CommandName = "bug"

-- Messages personnalisés
Config.Messages = {
    notify_sent = "📨 Signalement envoyé au staff.",
    notify_error = "❌ Une erreur est survenue lors de l'envoi.",
    notify_empty = "⚠️ Vous devez entrer un message avant d’envoyer.",
    menu_title = "Signaler un Bug",
    menu_description = "Entrez ici les détails du bug rencontré en jeu.",
    footer = "Merci de contribuer à l’amélioration du serveur."
}
```

---

## 🖥️ Utilisation

- Tapez la commande `/bug` en jeu pour ouvrir le menu de signalement.
- Entrez une description du bug.
- Cliquez sur **Envoyer** pour transmettre l’embed à Discord.
- Une notification vous confirmera l’envoi.

---

## 🧑‍💻 Rejoindre la communauté

Pour du support, des mises à jour ou découvrir d’autres scripts :  
🔗 Rejoins-nous sur [Ton Discord ici]

---

## 📜 Licence

Ce script est **gratuit et open source**. Merci de **ne pas le revendre**.  
Tu peux le modifier pour ton serveur, mais garde un lien vers le dépôt d’origine si tu le partages.

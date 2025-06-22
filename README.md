
# 🛠️ BugReport - Signalement de bugs In-Game (FiveM)

Un script simple et efficace pour permettre à vos joueurs de **signaler des bugs** directement en jeu via un menu **RageUI**.  
Le message est ensuite **envoyé automatiquement sur Discord** grâce à un **webhook**.

---

## 🚀 Fonctionnalités

- 📋 Menu propre et interactif avec **RageUI**
- 📨 Envoi du signalement sur **Discord (webhook)**
- 🔔 **Notification automatique** toute les 15 min (possible de le confi)
- ⚙️ **Fichier `config.lua`** pour personnaliser facilement le message, la commande, et le webhook
- 💡 Aucune limite de temps entre chaque signalement

---

## 🔧 Installation

1. Téléchargez le script et placez-le dans le dossier `resources` de votre serveur.  
2. Ajoutez cette ligne dans votre `server.cfg` :

```cfg
ensure BugReporter
```

3. Ouvrez le fichier `config.lua` et configurez :  
   - Le webhook Discord
   - Le nom de la commande (ex: `/bug`)

---

## ⚙️ Configuration (`config.lua`)

```lua
Config = {}

-- Configuration Menu
Config.RegisterCommandName = "BUG"
Config.TitreDuMenu = "BUG MENU" -- nil si vous voulez pas de texte
Config.NomBouton1 = "Signalé un bug"
Config.Description1 = "Vous devez renseigner le bug que vous avez aperçu en jeu, puis envoyer le message"
Config.NomBouton2 = "Envoyez votre signalement"
Config.Description2 = "Après avoir cliqué sur ce bouton, le message sera envoyé aux membres du staff. Merci de ne pas abuser de cette fonctionnalité, tout abus sera sanctionné."


-- Messages Discord

Config.WebhookURL = "https://discord.com/api/webhooks/1386273953340981318/RopcnlGNRknTDf_tnhzMSJW_PKpyn8xc8AP83OY744oAnWcODGIrEEDckUQNRxb9wjTz" -- Ton WebhookURL
Config.NomServeur = "Fantastic Life"
Config.EmbedTitre = "Un joueur a repéré un bug."
Config.Embedcouleur = 65280 --vert



-- Notification du menus REPPORT BUG


-- ✅ Activer/désactiver les notifications
Config.EnableNotifs = true -- True Or False

-- ⏱️ Temps entre chaque message (en secondes)
Config.Interval = 900  -- 15 minutes

-- 📃 Liste des messages à afficher
Config.Messages = {
    "Vous avez repéré un bug ? Signalez-le avec /bug."
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
🔗 Rejoins-nous sur https://discord.gg/235uNqVhBT

---

## 📜 Licence

Ce script est **gratuit et open source**. Merci de **ne pas le revendre**.  
Tu peux le modifier pour ton serveur, mais garde un lien vers le dépôt d’origine si tu le partages.

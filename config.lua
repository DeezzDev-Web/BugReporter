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
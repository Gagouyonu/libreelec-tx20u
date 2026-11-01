# LibreELEC 11.0.6 (Generic-legacy x86_64) + Pilote TP-Link Archer TX20U Plus (RTL8852AU)

Ce dépôt contient le workflow automatique **GitHub Actions** pour compiler une image personnalisée de LibreELEC 11.0.6 intégrant nativement les pilotes de la clé Wi-Fi 6 **TP-Link Archer TX20U Plus (RTL8852AU)** pour votre machine avec processeur **AMD A4-5300B (Radeon HD 7480D)**.

---

## Comment lancer la compilation en 3 clics :

1. **Créer un nouveau dépôt sur GitHub :**
   * Rendez-vous sur [github.com/new](https://github.com/new).
   * Nommez le dépôt (par exemple `libreelec-tx20u`).
   * Laissez-le en **Public** (les minutes GitHub Actions y sont 100% gratuites et illimitées).
   * Cliquez sur **Create repository**.

2. **Mettre en ligne les fichiers :**
   * Dans votre dépôt GitHub, cliquez sur **uploading an existing file**.
   * Glissez-déposez le dossier `.github` (contenant `workflows/build.yml`).
   * Cliquez sur **Commit changes**.

3. **Lancer la compilation :**
   * Cliquez sur l'onglet **Actions** en haut de votre dépôt.
   * Dans le menu de gauche, sélectionnez **Build LibreELEC 11.0.6 Generic-legacy (RTL8852AU TX20U Plus)**.
   * Cliquez sur le bouton **Run workflow** à droite, puis validez.

4. **Télécharger l'image de votre OS :**
   * La compilation va s'exécuter sur les serveurs d'Ubuntu dans le cloud GitHub (environ 1h30 à 2h).
   * Une fois terminé (coche verte), descendez tout en bas de la page de l'exécution dans la section **Artifacts**.
   * Cliquez sur **LibreELEC-11.0.6-Generic-legacy-Archer-TX20U-Plus** pour télécharger le fichier `.zip` contenant l'image `.img.gz`.

---

## Installation sur la machine cible :

1. Branchez une clé USB sur votre PC Windows.
2. Téléchargez et ouvrez **Rufus** (ou **Raspberry Pi Imager**).
3. Sélectionnez votre clé USB et le fichier `LibreELEC-Generic-legacy.x86_64-11.0.6.img.gz`.
4. Cliquez sur **Démarrer** pour flasher.
5. Branchez la clé USB sur votre machine AMD A4-5300B avec la clé Wi-Fi TX20U Plus branchée en USB.
6. Démarrez la machine sur la clé USB et installez l'OS. Le Wi-Fi fonctionnera immédiatement au premier démarrage.

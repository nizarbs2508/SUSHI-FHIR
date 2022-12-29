
Voici un cas d'utilisation français

### Installation pour les utilisateurs de SUSHI

SUSHI nécessite que Node.js soit installé sur le système de l'utilisateur. Les utilisateurs doivent installer Node.js 12 (LTS), bien que la version précédente de LTS  (Node.js 10) devrait également fonctionner.  

Une fois Node.js installé, exécutez la commande suivante pour installer ou mettre à jour SUSHI : 

$ npm install -g fsh-sushi  

Après l'installation, la ligne de sushicommande sera disponible sur votre chemin :  

$ sushi --help  
Usage: sushi [path-to-fsh-project] [options]  

Options:  

  -o, --out <out>       the path to the output folder  
  -d, --debug           output extra debugging information  
  -p, --preprocessed    output FSH produced by preprocessing steps  
  -s, --snapshot        generate snapshot in Structure Definition output (default: false)  
  -r, --require-latest  exit with error if this is not the latest version of SUSHI (default: false)  
  -i, --init            initialize a SUSHI project  
  -v, --version         print SUSHI version  
  -h, --help            output usage information  

Additional information:  

  [path-to-fsh-project]  
    Default: "."  
  -o, --out <out>  
    Default: "fsh-generated"  

    
### Génération IG  
    
SUSHI prend en charge la publication de guides de mise en œuvre via le nouveau IG Publisher basé sur des modèles. L'éditeur basé sur des modèles est toujours en cours   de développement par la communauté FHIR. Voir les conseils pour la création d'IG HL7 pour plus de détails.  

En fonction des entrées dans les fichiers FSH, sushi-config.yaml et du répertoire du projet IG, SUSHI remplit le répertoire de sortie. Consultez la documentation sur IG Project with SUSHI pour plus d'informations sur l'utilisation de SUSHI pour générer des IG.  


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# $ rake db:seed
# rake db:migrate

#rails g migration AddServicetabToRedacteurtabs servicetab:references

rails g scaffold Arrivetab anneech:string datesch:date numeroech:string referencech:string objetch:string correspondantch:string adressech:string tch:boolean cch:boolean
rails g scaffold Attributtab descriptionch:string siglech:string
rails g scaffold Autorisationpaiementhstab anneech:string datesch:date numerooch:string referencech:string descriptionch:string datevch:date vch:boolean cch:boolean
rails g scaffold Banquetab codebanquech:string descriptionch:string siglech:string
rails g scaffold Cadretab descriptionch:string siglech:string
rails g scaffold Corpstab descriptionch:string siglech:string
rails g scaffold Departtab anneech:string datesch:date numeroech:string referencech:string objetch:string correspondantch:string adressech:string tch:boolean cch:boolean
rails g scaffold Destinateurtab descriptionch:string
rails g scaffold Dossiertab anneech:string datesch:date referencech:string objetch:string cch:boolean
rails g scaffold Employetab numeromclech:string prenomch:string nomch:string datench:date telephonech:string adressech:string rch:boolean cch:boolean
rails g scaffold Comptebanquetab codech:string numerocomptech:string ribch:string ibanbicch:string numerocomptecompletch:string pch:boolean
rails g scaffold Etatciviltabs descriptionch:string siglech:string
rails g scaffold Etatcontenuhstab anneech:string datesch:date numerooch:string volumeheurech:string montantch:string datevch:date vch:boolean cch:boolean
rails g scaffold Etatpaiementhstab anneech:string datesch:date numerooch:string descriptionch:string datesgch:date datevch:date vch:boolean cch:boolean
rails g scaffold Expediteurtab descriptionch:string
rails g scaffold Familletab code:string famille:string descriptionch:string
rails g scaffold Filetab anneech:string datesch:string descriptionch:string pdfch:string cch:string
rails g scaffold Genretab descriptionch:string siglech:string
rails g scaffold Materieltab code:string descriptionch:string descriptionch:string
rails g scaffold Mouvementtab date:date quantite:integer descriptionch:string
rails g scaffold Redacteurtab descriptionch:string observationch:string
rails g scaffold Servicetab descriptionch:string siglech:string observationch:string
rails g scaffold Signatairetab recteurtitrech:string recteurprenomch:string recteurnomch:string recteurcorpsch:string recteurdistinctionch:string doyentitrech:string doyenprenomch:string doyennomch:string doyencorpsch:string doyendistinctionch:string chefservicefinancetitrech:string chefservicefinanceprenomch:string chefservicefinancenomch:string chefservicefinancecorpsch:string chefservicefinancedistinctionch:string agentcomptabletitre_ch:string agentcomptableprenom_ch:string agentcomptablenom_ch:string agentcomptablecorps_ch:string agentcomptabledistinction_ch:string controlefinanciertitrech:string controlefinancierprenomch:string controlefinanciernomch:string controlefinanciercorpsch:string controlefinancierdistinctionch:string
rails g scaffold Statuttab descriptionch:string siglech:string
rails g scaffold Structuretab descriptionch:string siglech:string
rails g scaffold Supporttab descriptionch:string siglech:string
rails g scaffold Tauxhorairehstab tauxhorairehsch:string descriptionch:string pch:boolean
rails g scaffold Transmissionarrivetab anneech:string datesch:date numeroech:string notech:string tch:boolean daterch:string rch:boolean cch:boolean
rails g scaffold Transmissiondeparttab anneech:string datesch:date numeroech:string notech:string tch:boolean daterch:string rch:boolean cch:boolean
rails g scaffold Typemouvementtab descriptionch:string siglech:string

rails g migration AddAttributtabToArrivetabs attributtab:references
rails g migration AddSupporttabToArrivetabs supporttab:references
rails g migration AddTauxhorairehstabToAutorisationpaiementhstabs tauxhorairehstab:references
rails g migration AddStructuretabToAutorisationpaiementhstabs structuretab:references
rails g migration AddArrivetabToDeparttabs arrivetab:references
rails g migration AddRedacteurtabToDeparttabs redacteurtab:references
rails g migration AddServicetabToDeparttabs servicetab:references
rails g migration AddAttributtabToDeparttabs attributtab:references
rails g migration AddSupporttabToDeparttabs supporttab:references
rails g migration AddServicetabToDestinateurtabs servicetab:references
rails g migration AddGenretabToEmployetabs genretab:references
rails g migration AddEtatciviltabToEmployetabs etatciviltab:references
rails g migration AddStatuttabToEmployetabs statuttab:references
rails g migration AddCadretabToEmployetabs cadretab:references
rails g migration AddCorpstabToEmployetabs corpstab:references
rails g migration AddStructuretabToEmployetabs structuretab:references
rails g migration AddServicetabToEmployetabs servicetab:references
rails g migration AddBanquetabToEmployetabs banquetab:references
rails g migration AddBanquetabToComptebanquetabs banquetab:references
rails g migration AddEmployetabToComptebanquetabs employetab:references
rails g migration AddAutorisationpaiementhstabToEtatcontenuhstabs autorisationpaiementhstab:references
rails g migration AddEtatpaiementhstabToEtatcontenuhstabs etatpaiementhstab:references
rails g migration AddEmployetabToEtatcontenuhstabs employetab:references
rails g migration AddTauxhorairehstabToEtatcontenuhstabs tauxhorairehstab:references
rails g migration AddComptebanquetabToEtatcontenuhstabs comptebanquetab:references
rails g migration AddBanquetabToEtatcontenuhstabs banquetab:references
rails g migration AddStructuretabToEtatcontenuhstabs structuretab:references
rails g migration AddToEtatpaiementhstabs autorisationpaiementhstab:references
rails g migration AddToEtatpaiementhstabs tauxhorairehstab:references
rails g migration AddToEtatpaiementhstabs structuretab:references
rails g migration AddToEtatpaiementhstabs banquetab:references
rails g migration AddServicetabToExpediteurtabs servicetab:references
rails g migration AddDossiertabToFiletabs dossiertab:references
rails g migration AddFamilletabToMaterieltabs familletab:references
rails g migration AddMaterieltabToMouvementtabs materieltab:references
rails g migration AddTypemouvementtabToMouvementtabs typemouvementtab:references
rails g migration AddServicetabToRedacteurtabs servicetab:references
rails g migration AddStructuretabToServicetabs structuretab:references
rails g migration AddSignatairetabToStructuretabs signatairetab:references
rails g migration AddArrivetabToTransmissionarrivetabs arrivetab:references
rails g migration AddExpediteurtabToTransmissionarrivetabs expediteurtab:references
rails g migration AddDestinateurtabToTransmissionarrivetabs destinateurtab:references
rails g migration AddDeparttabToTransmissionarrivetabs departtab:references
rails g migration AddExpediteurtabToTransmissionarrivetabs expediteurtab:references
rails g migration AddDestinateurtabToTransmissionarrivetabs destinateurtab:references


=begin

rails g scaffold Arrivetab anneech:string datesch:date numeroech:string attributtab:belongs_to referencech:string objetch:string correspondantch:string adressech:string supporttab:belongs_to tch:boolean cch:boolean
rails g migration Add AttributtabToArrivetabs attributtab:references
rails g migration Add SupporttabToArrivetabs supporttab:references

rails g scaffold Attributtab descriptionch:string siglech:string

rails g scaffold Autorisationpaiementhstabs anneech:string datesch:date numerooch:string referencech:string descriptionch:string tauxhorairehstab:belongs_to structuretab:belongs_to datevch:date vch:boolean cch:boolean
rails g migration Add TauxhorairehstabToAutorisationpaiementhstabs tauxhorairehstab:references
rails g migration Add StructuretabToAutorisationpaiementhstabs structuretab:references

rails g scaffold Banquetab codebanquech:string descriptionch:string siglech:string
rails g scaffold Cadretab descriptionch:string siglech:string
rails g scaffold Comptebanquetab banquetab:belongs_to codech:string numerocomptech:string ribch:string ibanbicch:string numerocomptecompletch:string employetab:belongs_to pch:boolean
rails g migration Add BanquetabToComptebanquetabs banquetab:references
rails g migration Add EmployetabToComptebanquetabs employetab:references

rails g scaffold Corpstab descriptionch:string siglech:string
rails g scaffold Departtab anneech:string datesch:date numeroech:string arrivetab:belongs_to referencech:string objetch:string redacteurtab:belongs_to servicetab:belongs_to attributtab:belongs_to correspondantch:string adressech:string supporttab:belongs_to tch:boolean cch:boolean
rails g migration Add ArrivetabToDeparttabs arrivetab:references
rails g migration Add RedacteurtabToDeparttabs redacteurtab:references
rails g migration Add ServicetabToDeparttabs servicetab:references
rails g migration Add AttributtabToDeparttabs attributtab:references
rails g migration Add SupporttabToDeparttabs supporttab:references


rails g scaffold Destinateurtab descriptionch:string servicetab:belongs_to
rails g migration Add ServicetabToDestinateurtabs servicetab:references

rails g scaffold Dossiertab anneech:string datesch:date referencech:string objetch:string cch:boolean

rails g scaffold Employetab numeromclech:string prenomch:string nomch:string genretab:belongs_to datench:date etatciviltab:belongs_to telephonech:string adressech:string statuttab:belongs_to cadretab:belongs_to corpstab:belongs_to structuretab:belongs_to servicetab:belongs_to comptebanquetab:belongs_to banquetab:belongs_to rch:boolean cch:boolean
rails g migration AddGenretabToEmployetabs genretab:references
rails g migration AddEtatciviltabToEmployetabs etatciviltab:references
rails g migration AddStatuttabToEmployetabs statuttab:references
rails g migration AddCorpstabToEmployetabs corpstab:references
rails g migration AddStructuretabToEmployetabs structuretab:references
rails g migration AddComptebanquetabToEmployetabs comptebanquetab:references
rails g migration AddBanquetabToEmployetabs banquetab:references


rails g scaffold Etatciviltabs descriptionch:string siglech:string

rails g scaffold Etatcontenuhstab anneech:string datesch:date numerooch:string autorisationpaiementhstab:belongs_to etatpaiementhstab:belongs_to employetab:belongs_to volumeheurech:string tauxhorairehstab:belongs_to montantch:string comptebanquetab:belongs_to banquetab:belongs_to structuretab:belongs_to datevch:date vch:boolean cch:boolean
rails g migration Add AutorisationpaiementhstabToEtatcontenuhstabs autorisationpaiementhstab:references
rails g migration Add EtatpaiementhstabToEtatcontenuhstabs etatpaiementhstab:references
rails g migration Add EmployetabToEtatcontenuhstabs employetab:references
rails g migration Add TauxhorairehstabToEtatcontenuhstabs tauxhorairehstab:references
rails g migration Add ComptebanquetabToEtatcontenuhstabs comptebanquetab:references
rails g migration Add BanquetabToEtatcontenuhstabs banquetab:references


rails g scaffold Etatpaiementhstab anneech:string datesch:date numerooch:string autorisationpaiementhstab:belongs_to descriptionch:string tauxhorairehstab:belongs_to structuretab:belongs_to banquetab:belongs_to datesgch:date datevch:date vch:boolean cch:boolean
rails g migration Add AutorisationpaiementhstabToEtatpaiementhstabs autorisationpaiementhstab:references
rails g migration Add TauxhorairehstabToEtatpaiementhstabs tauxhorairehstab:references
rails g migration Add StructuretabToEtatpaiementhstabs structuretab:references
rails g migration Add BanquetabToEtatpaiementhstabs banquetab:references

rails g scaffold Expediteurtab descriptionch:string servicetab:belongs_to
rails g migration Add ServicetabToExpediteurtabs servicetab:references

rails g scaffold Familletab code:string famille:string description:string
rails g scaffold Filetab anneech:string datesch:string dossiertab:belongs_to descriptionch:string pdfch:string cch:string
rails g migration Add DossiertabToFiletabs dossiertab:references

rails g scaffold Genretab descriptionch:string siglech:string
rails g scaffold Materieltab code:string descriptionch:string familletab:belongs_to description:string
rails g migration Add FamilletabToMaterieltabs familletab:references

rails g scaffold Mouvementtab date:date materieltab:belongs_to typemouvementtab:belongs_to quantite:integer description:string
rails g migration Add MaterieltabToMouvementtabs materieltab:references
rails g migration Add TypemouvementtabToMouvementtab typemouvementtab:references

rails g scaffold Redacteurtab descriptionch:string servicetab:belongs_to observationch:string
rails g migration Add ServicetabToRedacteurtabs servicetab:references

rails g scaffold Servicetab descriptionch:string siglech:string structuretab:belongs_to observationch:string
rails g migration Add StructuretabToServicetabs structuretab:references

rails g scaffold Signatairetab recteurtitrech:string recteurprenomch:string recteurnomch:string recteurcorpsch:string recteurdistinctionch:string doyentitrech:string doyenprenomch:string doyennomch:string doyencorpsch:string doyendistinctionch:string chefservicefinancetitrech:string chefservicefinanceprenomch:string chefservicefinancenomch:string chefservicefinancecorpsch:string chefservicefinancedistinctionch:string agentcomptabletitre_ch:string agentcomptableprenom_ch:string agentcomptablenom_ch:string agentcomptablecorps_ch:string agentcomptabledistinction_ch:string controlefinanciertitrech:string controlefinancierprenomch:string controlefinanciernomch:string controlefinanciercorpsch:string controlefinancierdistinctionch:string
rails g scaffold Statuttab descriptionch:string siglech:string
rails g scaffold Structuretab descriptionch:string siglech:string signatairetab:belongs_to
rails g migration Add SignatairetabToStructuretabs signatairetab:references

rails g scaffold Supporttab descriptionch:string siglech:string
rails g scaffold Tauxhorairehstab tauxhorairehsch:string descriptionch:string pch:boolean
rails g scaffold Transmissionarrivetab anneech:string datesch:date numeroech:string arrivetab:belongs_to expediteurtab:belongs_to destinateurtab:belongs_to notech:string tch:boolean daterch:string rch:boolean cch:boolean
rails g migration Add ArrivetabToTransmissionarrivetabs arrivetab:references
rails g migration Add ExpediteurtabToTransmissionarrivetabs expediteurtab:references
rails g migration Add DestinateurtabToTransmissionarrivetabs destinateurtab:references


rails g scaffold Transmissiondeparttab anneech:string datesch:date numeroech:string departtab:belongs_to expediteurtab:belongs_to destinateurtab:belongs_to notech:string tch:boolean daterch:string rch:boolean cch:boolean

rails g migration Add DeparttabToTransmissiondeparttabs departtab:references
rails g migration Add ExpediteurtabToTransmissiondeparttabs expediteurtab:references
rails g migration Add DestinateurtabToTransmissiondeparttabs destinateurtab:references

rails g scaffold Typemouvementtab descriptionch:string

# ---------------------------------------------------------

# ARRIVE
rails g migration AddAttributtabToArrivetabs attributtab:references
rails g migration AddSupporttabToArrivetabs supporttab:references
# AUTORISATION DE PAIEMENT
rails g migration AddTauxhorairehstabToAutorisationpaiementhstabs tauxhorairehstab:references
rails g migration AddStructuretabToAutorisationpaiementhstabs structuretab:references
# COMPTE BANCAIRE
rails g migration AddBanquetabToComptebanquetabs banquetab:references
rails g migration AddEmployetabToComptebanquetabs employetab:references
# DEPART
rails g migration AddArrivetabToDeparttabs arrivetab:references
rails g migration AddRedacteurtabToDeparttabs redacteurtab:references
rails g migration AddServicetabToDeparttabs servicetab:references
rails g migration AddAttributtabToDeparttabs attributtab:references
rails g migration AddSupporttabToDeparttabs supporttab:references
# DESTINATEUR
rails g migration AddServicetabToDestinateurtabs servicetab:references
# EMPLOYE
rails g migration AddGenretabToEmployetabs genretab:references
rails g migration AddGenretabToEmployetabs genretab:references
rails g migration AddEtatciviltabToEmployetabs etatciviltab:references
rails g migration AddStatuttabToEmployetabs statuttab:references
rails g migration AddCorpstabToEmployetabs corpstab:references
rails g migration AddStructuretabToEmployetabs structuretab:references
rails g migration AddComptebanquetabToEmployetabs comptebanquetab:references
rails g migration AddBanquetabToEmployetabs banquetab:references
# ETAT DE PAIEMENT CONTENU
rails g migration AddAutorisationpaiementhstabToEtatcontenuhstabs autorisationpaiementhstab:references
rails g migration AddEtatpaiementhstabToEtatcontenuhstabs etatpaiementhstab:references
rails g migration AddEmployetabToEtatcontenuhstabs employetab:references
rails g migration AddTauxhorairehstabToEtatcontenuhstabs tauxhorairehstab:references
rails g migration AddComptebanquetabToEtatcontenuhstabs comptebanquetab:references
rails g migration AddBanquetabToEtatcontenuhstabs banquetab:references
# ETAT DE PAIEMENT
rails g migration AddAutorisationpaiementhstabToEtatpaiementhstabs autorisationpaiementhstab:references
rails g migration AddTauxhorairehstabToEtatpaiementhstabs tauxhorairehstab:references
rails g migration AddStructuretabToEtatpaiementhstabs structuretab:references
rails g migration AddBanquetabToEtatpaiementhstabs banquetab:references
# EXPEDITEUR
rails g migration AddServicetabToExpediteurtabs servicetab:references
# FICHIER ARCHIVE
rails g migration AddDossiertabToFiletabs dossiertab:references
# MATERIELS
rails g migration AddFamilletabToMaterieltabs familletab:references
# MOUVEMENT DE MATERIEL
rails g migration AddMaterieltabToMouvementtabs materieltab:references
rails g migration AddTypemouvementtabToMouvementtab typemouvementtab:references
# REDACTEUR
rails g migration AddServicetabToRedacteurtabs servicetab:references
# SERVICE
rails g migration AddStructuretabToServicetabs structuretab:references
# STRUTURE
rails g migration AddSignatairetabToStructuretabs signatairetab:references
# TRANSMISSION ARRIVE
rails g migration AddArrivetabToTransmissionarrivetabs arrivetab:references
rails g migration AddExpediteurtabToTransmissionarrivetabs expediteurtab:references
rails g migration AddDestinateurtabToTransmissionarrivetabs destinateurtab:references
# TRANSMISSION DEPART
rails g migration AddDeparttabToTransmissiondeparttabs departtab:references
rails g migration AddExpediteurtabToTransmissiondeparttabs expediteurtab:references
rails g migration AddDestinateurtabToTransmissiondeparttabs destinateurtab:references

# --------------------------------------------------------------------



# ------------------------------ CREATE TABLES

rails g scaffold Arrivetab anneech:string datesch:date numeroech:string referencech:string objetch:string correspondantch:string adressech:string tch:boolean cch:boolean
rails g scaffold Attributtab descriptionch:string siglech:string
rails g scaffold Autorisationpaiementhstabs anneech:string datesch:date numerooch:string referencech:string descriptionch:string datevch:date vch:boolean cch:boolean
rails g scaffold Banquetab codebanquech:string descriptionch:string siglech:string
rails g scaffold Cadretab descriptionch:string siglech:string
rails g scaffold Comptebanquetab codech:string numerocomptech:string ribch:string ibanbicch:string numerocomptecompletch:string pch:boolean
rails g scaffold Corpstab descriptionch:string siglech:string
rails g scaffold Departtab anneech:string datesch:date numeroech:string referencech:string objetch:string correspondantch:string adressech:string tch:boolean cch:boolean
rails g scaffold Destinateurtab descriptionch:string
rails g scaffold Dossiertab anneech:string datesch:date referencech:string objetch:string cch:boolean
rails g scaffold Employetab numeromclech:string prenomch:string nomch:string datench:date telephonech:string adressech:string rch:boolean cch:boolean
rails g scaffold Etatciviltabs descriptionch:string siglech:string
rails g scaffold Etatcontenuhstab anneech:string datesch:date numerooch:string volumeheurech:string montantch:string datevch:date vch:boolean cch:boolean
rails g scaffold Etatpaiementhstab anneech:string datesch:date numerooch:string descriptionch:string datesgch:date datevch:date vch:boolean cch:boolean
rails g scaffold Expediteurtab descriptionch:string
rails g scaffold Familletab code:string famille:string description:string
rails g scaffold Filetab anneech:string datesch:string descriptionch:string pdfch:string cch:string
rails g scaffold Genretab descriptionch:string siglech:string
rails g scaffold Materieltab code:string descriptionch:string description:string
rails g scaffold Mouvementtab date:date quantite:integer description:string
rails g scaffold Redacteurtab descriptionch:string observationch:string
rails g scaffold Servicetab descriptionch:string siglech:string observationch:string
rails g scaffold Signatairetab recteurtitrech:string recteurprenomch:string recteurnomch:string recteurcorpsch:string recteurdistinctionch:string doyentitrech:string doyenprenomch:string doyennomch:string doyencorpsch:string doyendistinctionch:string chefservicefinancetitrech:string chefservicefinanceprenomch:string chefservicefinancenomch:string chefservicefinancecorpsch:string chefservicefinancedistinctionch:string agentcomptabletitre_ch:string agentcomptableprenom_ch:string agentcomptablenom_ch:string agentcomptablecorps_ch:string agentcomptabledistinction_ch:string controlefinanciertitrech:string controlefinancierprenomch:string controlefinanciernomch:string controlefinanciercorpsch:string controlefinancierdistinctionch:string
rails g scaffold Statuttab descriptionch:string siglech:string
rails g scaffold Structuretab descriptionch:string siglech:string
rails g scaffold Supporttab descriptionch:string siglech:string
rails g scaffold Tauxhorairehstab tauxhorairehsch:string descriptionch:string pch:boolean
rails g scaffold Transmissionarrivetab anneech:string datesch:date numeroech:string notech:string tch:boolean daterch:string rch:boolean cch:boolean
rails g scaffold Transmissiondeparttab anneech:string datesch:date numeroech:string notech:string tch:boolean daterch:string rch:boolean cch:boolean
rails g scaffold Typemouvementtab descriptionch:string

# ------------------------------ ADD CONSTRAINT
#
rails g migration AddAttributtabToArrivetabs attributtab:references
rails g migration AddSupporttabToArrivetabs supporttab:references

rails g migration AddTauxhorairehstabToAutorisationpaiementhstabs tauxhorairehstab:references
rails g migration AddStructuretabToAutorisationpaiementhstabs structuretab:references

rails g migration AddBanquetabToComptebanquetabs banquetab:references
rails g migration AddEmployetabToComptebanquetabs employetab:references

rails g migration AddArrivetabToDeparttabs arrivetab:references
rails g migration AddRedacteurtabToDeparttabs redacteurtab:references
rails g migration AddServicetabToDeparttabs servicetab:references
rails g migration AddAttributtabToDeparttabs attributtab:references
rails g migration AddSupporttabToDeparttabs supporttab:references

rails g migration AddServicetabToDestinateurtabs servicetab:references

rails g migration AddGenretabToEmployetabs genretab:references
rails g migration AddEtatciviltabToEmployetabs etatciviltab:references
rails g migration AddStatuttabToEmployetabs statuttab:references
rails g migration AddCorpstabToEmployetabs corpstab:references
rails g migration AddStructuretabToEmployetabs structuretab:references
rails g migration AddComptebanquetabToEmployetabs comptebanquetab:references
rails g migration AddBanquetabToEmployetabs banquetab:references

rails g migration AddAutorisationpaiementhstabToEtatcontenuhstabs autorisationpaiementhstab:references
rails g migration AddEtatpaiementhstabToEtatcontenuhstabs etatpaiementhstab:references
rails g migration AddEmployetabToEtatcontenuhstabs employetab:references
rails g migration AddTauxhorairehstabToEtatcontenuhstabs tauxhorairehstab:references
rails g migration AddComptebanquetabToEtatcontenuhstabs comptebanquetab:references
rails g migration AddBanquetabToEtatcontenuhstabs banquetab:references

rails g migration AddAutorisationpaiementhstabToEtatpaiementhstabs autorisationpaiementhstab:references
rails g migration AddTauxhorairehstabToEtatpaiementhstabs tauxhorairehstab:references
rails g migration AddStructuretabToEtatpaiementhstabs structuretab:references
rails g migration AddBanquetabToEtatpaiementhstabs banquetab:references

rails g migration AddServicetabToExpediteurtabs servicetab:references

rails g migration AddDossiertabToFiletabs dossiertab:references

rails g migration AddFamilletabToMaterieltabs familletab:references

rails g migration AddMaterieltabToMouvementtabs materieltab:references
rails g migration AddTypemouvementtabToMouvementtab typemouvementtab:references

rails g migration AddServicetabToRedacteurtabs servicetab:references

rails g migration AddStructuretabToServicetabs structuretab:references

rails g migration AddSignatairetabToStructuretabs signatairetab:references

rails g migration AddArrivetabToTransmissionarrivetabs arrivetab:references
rails g migration AddExpediteurtabToTransmissionarrivetabs expediteurtab:references
rails g migration AddDestinateurtabToTransmissionarrivetabs destinateurtab:references

rails g migration AddDeparttabToTransmissiondeparttabs departtab:references
rails g migration AddExpediteurtabToTransmissiondeparttabs expediteurtab:references
rails g migration AddDestinateurtabToTransmissiondeparttabs destinateurtab:references

=end
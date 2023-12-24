import 'package:get/get.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar_AR": {
          "login": 'تسجيل الدخول',
          'happy_to_see_you':
              'سعداء لرؤيتك مرة أخرى , الرجاء إدخال رقم الموبايل وكلمة المرور',
          'phone': 'رقم الموبايل',
          'password': 'كلمة المرور',
          'log': 'دخول',
          'error': 'خطأ',
          'please_try_again': 'يرجى إعادة المحاولة',
          'welcome': 'مرحباً بك في تطبيق دناك الخاص بك',
          'time_to_manage': 'حان الوقت لإدارة المخزون و المنتجات',
          'hand_buying': 'البيع اليدوي',
          'store_management': 'إدارة المخزن',
          'driver_client_management': 'إدارة المندوب و السائق',
          'orders_mangement': 'إدارة المخازن',
          'human_resources': 'الموارد البشرية',
          'box': 'الصندوق',
          'products': 'المنتجات',
          'categories': 'الأصناف',
          'suppliers': 'الموردين',
          'clients': 'العملاء',
          'outputs': 'المخرجات',
          'inputs': 'المدخلات',
          'destoyed': 'بضائع تالفة',
          'restored': 'بضائع مسترجعة',
          'name': 'الاسم',
          'number': 'الرقم',
          'cats': 'أصناف',
          'add': 'إضافة',
          'catName': 'اسم الصنف',
          'save': 'حفظ',
          'Settings': 'الإعدادات',
          'profile': 'الملف الشخصي',
          'lang': 'اللغة',
          'logout': 'تسجيل الخروج',
          'arabic': 'العربية',
          'french': 'الفرنسية',
          'are_you_sure_logout': 'هل انت متأكد من تسجيل الخروج؟',
          'ok': 'موافق',
          'cancel': 'إلغاء',
          'Add_cat': 'إضافة صنف جديد',
          'prod': 'منتج',
          'product': 'المنتج',
          'quantity': 'الكمية',
          'price': 'السعر',
          'add_products': 'إضافة منتج',
          'product_name': 'اسم المنتج',
          'product_image': 'صورة المنتج',
          'product_desc': 'وصف المنتج',
          'img_src': 'اختر مصدر الصورة',
          'gallery': 'الاستوديو',
          'camera': 'الكاميرا',
          'barcode': 'الباركود',
          'sell_price': 'سعر المبيع',
          'buy_price': 'سعر الشراء',
          'items_count_per_unit': 'عدد القطع في الوحدة',
          'units_per_cartoon': 'عدد الوحدات في الكرتون',
          'alarm_lower': 'تنبيه عندما تقل الكمية عن :',
          'alarm_upper': 'تنبيه عندما تزيد الكمية عن :',
          'cat': 'التصنيف',
          'notes': 'ملاحظات',
          'dont_have_account': 'ليس لديك حساب؟',
          'create_account': 'إنشاء حساب',
          'please_insert_info': 'الرجاء إدخال المعلومات بالأسفل لإنشاء الحساب',
          'image_empty': 'لا يمكن ترك الحقول فارغة',
          'remove_photo': 'إزالة الصورة',
          'product_added_successfully': "تمت إضافة المنتج بنجاح",
          'cart': 'العلبة',
          'cartoon': 'الكرتونة',
          'edit': 'تعديل',
          'delete': 'حذف',
          'd_location': 'تحديد موقعي',
          'd_location_2': 'الرجاء تحديد موقعك على الخريطة ليتم قبول حسابك',
          'sups': 'مزود',
          'add_suppliers': 'إضافة مورد',
          'supplier_name': 'اسم المورد',
          'company_name': 'اسم الشركة',
          'address': 'العنوان',
          'buys': 'عدد المشتريات',
          'debts': 'ديون و مستحقات',
          'add_clients': 'إضافة عملاء',
          'client_name': 'اسم العميل',
          'entries_num': 'عدد المدخلات',
          'total': 'المجموع',
          'invoice_number': 'رقم الوصل',
          'products_num': 'عدد المنتجات',
          'tota': 'المبلغ الإجمالي',
          'add_invoice_input': 'إضافة وصل مدخلات',
          'search_product_name': 'ابحث باسم المنتج',
          'no_products_added': 'لم يتم إضافة أي منتجات الى وصل التسليم',
          'confirm': 'تأكيد',
          'choose_product': 'اختر منتج',
          'units_count': 'عدد الوحدات',
          'unit_price': 'سعر الوحدة',
          'delete_product': "حذف منتج",
          'are_you_sure_delete_product_from_list':
              'هل انت متأكد من أنك تريد حذف المنتج من القائمة؟',
          'product_already': 'المنتج موجود بالفعل',
          'forgot_password': 'نسيت كلمة المرور',
          'please_enter_phone':
              'الرجاء إدخال رقم الموبايل المرتبط بالحساب لإرسال رمز التحقق',
          'send_code': 'إرسال الرمز',
          'add_invoice_outputs': 'إضافة وصل مخرجات',
          'clts': 'عملاء',
          'proxy_name': 'اسم المندوب',
          'proxy_truk_num': 'رقم شاحنة المندوب',
          'employee_name': 'اسم الموظف',
          'customer_service_phone': 'رقم خدمة الزبائن',
          'ver_invoice_code': 'كود التحقق من الوصل',
          'old_debts': 'ديون سابقة',
          'returns_products': 'منتجات مسترجعة',
          'discount': 'الخصم',
          'paid_money': 'المبلغ المدفوع',
          'product_deleted_successfully': 'تم حذف المنتج بنجاح',
          'product_edited_successfully': 'تم تعديل المنتح بنجاح',
          'supplier_added_successfully': "تم إضافة المورد بنجاح",
          'edit_supplier': 'تعديل مورد',
          'supplier_edited_successfully': 'تم تعديل المورد بنجاح',
          'supplier_deleted_successfully': 'تم حذف المورد بنجاح',
          'client_deleted_successfully': 'تم حذف العميل بنجاح',
          'client_added_successfully': 'تم إضافة العميل بنجاح',
          'client_edited_successfully': 'تم تعديل العميل بنجاح',
          'done': 'تم',
          'rem_amt': 'المبلغ المتبقي',
          'invoice_save_with_num': 'تم حفظ وصل التسليم رقم',
          'invoive_details': 'تفاصيل الوصل',
          'special_products': 'منتجات مميزة',
          'see_all': 'مشاهدة الكل',
          'add_to_cart': 'إضافة للسلة',
          'new_products': 'منتجات جديدة',
          'most_sale_products': 'الأكثر مبيعاً',
          'search_results': 'نتائج البحث',
          'back': 'رجوع',
          'unit': 'الوحدة',
          'cartoon_price': 'سعر الكرتونة',
          'add_to_cart_successfuly': 'تم إضافة المنتج للسلة',
          'back_to_browse': 'العودة للتصفح',
          'cartt': 'السلة',
          'cart_empty': 'السلة فارغة',
          'order': 'الطلب',
          'select_order_date': 'الرجاء تحديد وقت استلام الطلب',
          'order_successfuly': 'تم إرسال طلبك',
          'drinks': 'مشروبات',
          'food': 'غذائيات',
          'others': 'أخرى',
          'my_points': 'نقاطي',
          'my_loyality_points': 'نقاط الولاء الخاصة بي',
          'settings2': 'اللغة, الإشعارات , الملف الشخصي',
          'my_orders': 'طلباتي',
          'points': 'نقطة',
          'points_expired': 'ستنتهي صلاحية النقاط في ',
          'orders_num': 'عدد الطلبات',
          'order_number': 'رقم الطلب',
          'edit_profile_pic': 'تعديل الصورة الشخصية',
          'order_num': 'رقم الطلب',
          'order_data': 'بيانات الطلب',
          'order_date': 'تاريخ الطلب',
          'contact_info': 'بيانات الاتصال',
          'order_details': 'تفاصيل الطلب',
          'points_details': 'تفاصيل النقاط',
          'categories_details': 'تفاصيل الفئات',
          'how_to_use_my_points': 'كيف يمكنني أن أستخدم نقاطي ؟',
          'what_to_do_with_my_points': 'ماذا يمكنني أن أفعل بنقاطي ؟',
          'finished': 'منتهية',
          'desierve': 'مستحقة',
          'used': 'مستخدمة',
          'all': 'الجميع',
          'bronz': 'بروزنزي',
          'start_point': 'نقطة انطلاقك بين 0 - 150 نقطة',
          'what_aftr_bronz': 'ماذا بعد البرونزي؟',
          'silver': 'فضي',
          'to_reach_silver':
              'لتصل للميدالية الفضية يجب أن تقع نقاطك بين 151 - 300 نقطة ',
          'gold': 'ذهبي',
          'to_reach_gold':
              'لتصل للميدالية الذهبية يجب أن تقع نقاطك بين 301 - 400 نقطة',
          'platinum': 'بلاتينيوم',
          'to_reach_platinum':
              'لتصل للميدالية البلاتينية يجب أن تتعدى نقاطك 400 نقطة',
          'use_points': 'استخدام النقاط',
          'enter_otp_code': 'أدخل رمز التحقق',
          'please_insert_otp':
              'يرجى إدخال رمز التحقق المرسل إلى البريد الالكتروني',
          'confirm_code': 'تأكيد الرمز' ,
          'reset_pass': 'إعادة تعيين كلمة المرور' , 
          'please_renter':'الرجاء إدخال كلمة المرور الجديدة وتأكيدها' , 
          'new_password' : 'كلمة المرور الجديدة', 
          'confirm_newpassword' :'تأكيد كلمة المرور الجديدة'
        },
        "fr_FR": {
          "login": 'Se Connecter',
          'happy_to_see_you':
              'Nous sommes heureux de vous revoir, merci de saisir votre numéro de portable et votre mot de passe',
          'phone': "Numéro De Portable",
          'password': 'Mot de passe',
          'log': 'Entrée',
          'error': 'Erreur',
          'please_try_again': 'Veuillez Réessayer',
          'welcome': 'Bienvenue sur votre application Danac',
          'time_to_manage': "Il est temps de gérer les stocks et les produits",
          'hand_buying': 'Vente Manuelle',
          'store_management': "Gestion d'entrepôt",
          'driver_client_management': 'Gestion des délégués et des chauffeurs',
          'orders_mangement': 'Warehouse Management',
          'human_resources': 'Ressources Humaines',
          'box': 'Boîte',
          'products': 'Des Produits',
          'categories': 'Articles',
          'suppliers': 'Fournisseurs',
          'clients': 'Clients',
          'outputs': 'Les Sorties',
          'inputs': 'Saisir',
          'destoyed': 'Biens Endommagés',
          'restored': 'Marchandises Retournées',
          'name': 'le Nom',
          'number': 'le Nombre',
          'cats': 'Variétés',
          'add': 'Ajout',
          'catName': 'Nom du Produit',
          'save': 'Sauvegarder',
          'Settings': 'Paramètres',
          'profile': 'Profil Personnel',
          'lang': 'La Langue',
          'logout': 'Se Déconnecter',
          'arabic': "L'arabe",
          'french': 'Français',
          'are_you_sure_logout': "Êtes-vous sûr de vous déconnecter?",
          'ok': "D'ACCORD",
          'cancel': 'Annulation',
          'Add_cat': 'Ajouter une nouvelle catégorie',
          'prod': 'Projet',
          'product': 'Projet',
          'quantity': 'Quantité',
          'price': 'Le Prix',
          'add_products': 'Ajouter un Produit',
          'product_name': 'Nom du Produit',
          'product_image': "Image du Produit",
          'product_desc': 'Description du Produit',
          'img_src': "Choisir la source de l'image",
          'gallery': 'Studio',
          'camera': 'Caméra',
          'barcode': 'Code à Barre',
          'sell_price': 'Prix de Vente',
          'buy_price': "Prix d'Achat",
          'items_count_per_unit': 'Nombre de Pièces par Unité',
          'units_per_cartoon': "Nombre d'unités par Carton",
          'alarm_lower': "Alerte lorsque la quantité est inférieure à :",
          'alarm_upper': 'Alerte lorsque la quantité dépasse :',
          'cat': 'Catégorie',
          'notes': 'Commentaires',
          'dont_have_account': "Vous n'avez pas de compte ?",
          'create_account': "Création d'un compte",
          'please_insert_info':
              'Veuillez saisir les informations ci-dessous pour créer un compte',
          'image_empty': "Les champs ne peuvent pas rester vides",
          'remove_photo': "Supprimer l'image",
          'product_added_successfully': "Produit ajouté avec succès",
          'cart': 'La Boîte',
          'cartoon': 'Le Carton',
          'edit': 'Amendement',
          'delete': 'Supprimer',
          'd_location': 'Localise-moi',
          'd_location_2':
              'Veuillez préciser votre emplacement sur la carte afin que votre compte soit accepté',
          'sups': 'Fournisseur',
          'add_suppliers': 'Ajouter une Ressource',
          'supplier_name': 'Nom de la ressource',
          'address': "L'adresse",
          'company_name': "Nom de l'entreprise",
          'buys': "Nombre d'achats",
          'debts': 'Dettes et créances',
          'add_clients': 'Ajouter des Clients',
          'client_name': "Nom de L'agent",
          'entries_num': "Nombre d'entrées",
          'total': 'Le total',
          'invoice_number': 'Numéro de bon',
          'products_num': 'Nombre de produits',
          'tota': 'Montant Total',
          'add_invoice_input': "Ajouter une connexion d'entrée",
          'search_product_name': "Rechercher par nom de produit",
          'no_products_added':
              "Aucun produit n'a été ajouté au bon de livraison",
          'confirm': 'être sûr',
          'choose_product': 'Sélectionner un produit',
          'units_count': "Nombre d'unités",
          'unit_price': 'Prix unitaire',
          'delete_product': "Supprimer le produit",
          'are_you_sure_delete_product_from_list':
              "Êtes-vous sûr de vouloir supprimer le produit de la liste?",
          'forgot_password': "J'ai oublie le mot de passe",
          'please_enter_phone':
              "Veuillez saisir le numéro de mobile associé au compte pour envoyer le code de vérification",
          'send_code': 'Envoyer le code',
          'add_invoice_outputs': 'Ajouter un lien de sortie',
          'clts': 'Client',
          'proxy_name': 'Nom du délégué',
          'proxy_truk_num': 'Numéro de camion délégué',
          'employee_name': "Nom de l'employé",
          'customer_service_phone': 'Numéro du service client',
          'ver_invoice_code': 'Code de vérification du lien',
          'old_debts': 'Dettes antérieures',
          'returns_products': 'Produits de rappel',
          'discount': 'Rabais',
          'paid_money': "Le montant payé",
          'product_deleted_successfully':
              'Le produit a été supprimé avec succès',
          'product_edited_successfully': 'Le produit a été modifié avec succès',
          'supplier_added_successfully':
              "La ressource a été ajoutée avec succès",
          'edit_supplier': 'Modifier la ressource',
          'supplier_edited_successfully':
              'La ressource a été modifiée avec succès',
          'supplier_deleted_successfully':
              "La ressource a été supprimée avec succès",
          'client_deleted_successfully': "Client supprimé avec succès",
          'client_added_successfully': 'Client ajouté avec succès',
          'client_edited_successfully': 'Client modifié avec succès',
          'done': 'Fait',
          'rem_amt': 'Le montant restant',
          'invoice_save_with_num':
              'Le numéro de reçu de livraison a été enregistré',
          'invoive_details': 'Connecter les détails',
          'special_products': 'Produits populaires',
          'see_all': 'Voir tout',
          'add_to_cart': 'Ajouter au panier',
          'new_products': 'Nouveaux produits',
          'most_sale_products': 'Best-seller',
          'search_results': 'Résultats de recherche',
          'back': 'Dos',
          'cartoon_price': 'Prix du carton',
          'add_to_cart_successfuly': 'Le produit a été ajouté au panier',
          'back_to_browse': 'Retour à la navigation',
          'cartt': 'Panier',
          'cart_empty': "Le panier est vide",
          'order': 'La demande',
          'select_order_date':
              'Veuillez préciser une heure pour recevoir la commande',
          'order_successfuly': 'Votre demande à été envoyé',
          'drinks': 'Boissons',
          'food': 'diététique',
          'others': 'Autre',
          'my_points': 'Mes points',
          'my_loyality_points': 'Mes points de fidélité',
          'settings2': 'Langue, notifications, profil',
          'my_orders': 'Mes commandes',
          'points': 'Point',
          'points_expired': 'Les points expireront le',
          'orders_num': 'Nombre de demandes',
          'order_number': 'Numéro de commande',
          'edit_profile_pic': 'Modifier une photo personnelle',
          'order_num': 'Numéro de commande',
          'order_data': 'Demander des données',
          'order_date': 'Date de la demande',
          'contact_info': 'Données de contact',
          'order_details': 'Détails de la commande',
          'points_details': 'Détails des points',
          'categories_details': 'Détails des catégories',
          'how_to_use_my_points': 'Comment puis-je utiliser mes points ?',
          'what_to_do_with_my_points': 'Que puis-je faire avec mes points ?',
          'finished': 'Fini',
          'all': 'tout le monde',
          'used': 'Utilisé',
          'desierve': 'Bien mérité',
          'bronz': 'Bronze',
          'start_point': 'Votre point de départ se situe entre 0 et 150 points',
          'what_aftr_bronz': 'Quelle est la prochaine étape pour le bronze ?',
          'silver': 'Argent',
          'to_reach_silver':
              "Pour atteindre la médaille d'argent, vos points doivent être compris entre 151 et 300 points.",
          'gold': 'Doré',
          'to_reach_gold':
              "Pour atteindre la médaille d'or, vos points doivent se situer entre 301 et 400 points.",
          'platinum': 'Platine',
          'to_reach_platinum':
              'Pour atteindre la médaille de platine, vos points doivent dépasser 400 points',
          'use_points': 'Utiliser des points',
          'enter_otp_code': 'Entrez le code de vérification',
          'please_insert_otp':
              'Veuillez saisir le code de vérification envoyé à votre adresse e-mail',
          'confirm_code': 'Confirmez le code',
          'reset_pass': 'Réinitialisation du mot de passe' , 
          'please_renter': 'Veuillez saisir et confirmer votre nouveau mot de passe' , 
          'new_password' :'nouveau mot de passe' , 
          'confirm_newpassword' : 'Confirmez le mot de passe'
        }
      };
}

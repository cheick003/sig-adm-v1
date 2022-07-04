class GestionCourrierController < ApplicationController
  def g_courrier

    @title_page = "gest. courriers"

    # BEGIN HEADER
    @header_item_1 = "Systeme Integré de Gestion-Administration"
    @header_item_1_icon_1 = "bi-stack"
    @header_item_1_icon_2 = "bi-chevron-right"
    @header_item_1_visibility = ""
    @header_item_1_link = root_path

    @header_item_2 = "Item_2"
    @header_item_2_icon_1 = ""
    @header_item_2_visibility = ""
    @header_item_2_link = root_path

    @header_item_3 = "Item_3"
    @header_item_3_icon_1 = ""
    @header_item_3_visibility = ""
    @header_item_3_link = root_path

    @header_item_4 = "Item_4"
    @header_item_4_icon_1 = ""
    @header_item_4_visibility = ""
    @header_item_4_link = root_path

    @header_item_5 = "Item_5"
    @header_item_5_icon_1 = ""
    @header_item_5_visibility = ""
    @header_item_5_link = root_path

    # dropdowns
    @header_item_6 = "User"
    @header_item_6_icon_1 = ""
    @header_item_6_visibility = ""
    @header_item_6_link = root_path

    @header_item_6_1 = "Profil"
    @header_item_6_1_icon_1 = "bi bi-person-bounding-box"
    @header_item_6_1_visibility = ""
    @header_item_6_1_active = ""
    @header_item_6_1_link = root_path

    @header_item_6_2 = "Modifier"
    @header_item_6_2_icon_1 = "bi bi-person-check-fill"
    @header_item_6_2_visibility = ""
    @header_item_6_2_active = ""
    @header_item_6_2_link = root_path

    @header_item_6_3 = "item_6_3"
    @header_item_6_3_icon_1 = ""
    @header_item_6_3_visibility = "d-none"
    @header_item_6_3_active = ""
    @header_item_6_3_link = root_path

    @header_item_6_4 = "Item_6_4"
    @header_item_6_4_icon_1 = ""
    @header_item_6_4_visibility = "d-none"
    @header_item_6_4_active = ""
    @header_item_6_4_link = root_path

    @header_item_6_5 = "Item_6_5"
    @header_item_6_5_icon_1 = ""
    @header_item_6_5_visibility = "d-none"
    @header_item_6_5_active = ""
    @header_item_6_5_link = root_path

    @header_item_6_20 = "Deconnexion"
    @header_item_6_20_icon_1 = "bi bi-door-closed-fill"
    @header_item_6_20_visibility = ""
    @header_item_6_20_active = "bg-danger-tech"
    @header_item_6_20_link = root_path

    # BEGIN SIDEBAR
    # 1_accordion
    @sidebar_item_1_1 = "Ménus"
    @sidebar_item_1_1_icon_1 = "bi-grip-vertical"
    @sidebar_item_1_1_icon_2 = "bi-menu-button-wide-fill"
    @sidebar_item_1_1_visibility = ""
    @sidebar_item_1_1_show = "show"

    @sidebar_item_1_2 = "Gest. Courriers"
    @sidebar_item_1_2_icon_1 = "bi-envelope-fill"
    @sidebar_item_1_2_visibility = ""
    @sidebar_item_1_2_link = root_path

    @sidebar_item_1_3 = "Courriers Arrives"
    @sidebar_item_1_3_icon_1 = "bi-envelope-exclamation-fill"
    @sidebar_item_1_3_visibility = ""
    @sidebar_item_1_3_active = ""
    @sidebar_item_1_3_link = root_path

    @sidebar_item_1_4 = "Courriers Départs"
    @sidebar_item_1_4_icon_1 = "bi-envelope-check-fill"
    @sidebar_item_1_4_visibility = ""
    @sidebar_item_1_4_active = ""
    @sidebar_item_1_4_link = root_path

    @sidebar_item_1_5 = "item_1_5"
    @sidebar_item_1_5_icon_1 = ""
    @sidebar_item_1_5_visibility = "d-none"
    @sidebar_item_1_5_active = ""
    @sidebar_item_1_5_link = root_path

    @sidebar_item_1_6 = "item_1_6"
    @sidebar_item_1_6_icon_1 = ""
    @sidebar_item_1_6_visibility = "d-none"
    @sidebar_item_1_6_active = ""
    @sidebar_item_1_6_link = root_path

    @sidebar_item_1_7 = "item_1_7"
    @sidebar_item_1_7_icon_1 = ""
    @sidebar_item_1_7_visibility = "d-none"
    @sidebar_item_1_7_active = ""
    @sidebar_item_1_7_link = root_path

    @sidebar_item_1_8 = "item_1_8"
    @sidebar_item_1_8_icon_1 = ""
    @sidebar_item_1_8_visibility = "d-none"
    @sidebar_item_1_8_active = ""
    @sidebar_item_1_8_link = root_path

    @sidebar_item_1_9 = "item_1_9"
    @sidebar_item_1_9_icon_1 = ""
    @sidebar_item_1_9_visibility = "d-none"
    @sidebar_item_1_9_active = ""
    @sidebar_item_1_9_link = root_path

    # 2_accordion
    @sidebar_item_2_1 = "item_2_1"
    @sidebar_item_2_1_icon_1 = ""
    @sidebar_item_2_1_icon_2 = ""
    @sidebar_item_2_1_visibility = "d-none"
    @sidebar_item_2_1_show = ""

    @sidebar_item_2_2 = "item_2_2"
    @sidebar_item_2_2_icon_1 = ""
    @sidebar_item_2_2_visibility = "d-none"
    @sidebar_item_2_2_link = root_path

    @sidebar_item_2_3 = "item_2_3"
    @sidebar_item_2_3_icon_1 = ""
    @sidebar_item_2_3_visibility = "d-none"
    @sidebar_item_2_3_active = ""
    @sidebar_item_2_3_link = root_path

    @sidebar_item_2_4 = "item_2_4"
    @sidebar_item_2_4_icon_1 = ""
    @sidebar_item_2_4_visibility = "d-none"
    @sidebar_item_2_4_active = ""
    @sidebar_item_2_4_link = root_path

    @sidebar_item_2_5 = "item_2_5"
    @sidebar_item_2_5_icon_1 = ""
    @sidebar_item_2_5_visibility = "d-none"
    @sidebar_item_2_5_active = ""
    @sidebar_item_2_5_link = root_path

    @sidebar_item_2_6 = "item_2_6"
    @sidebar_item_2_6_icon_1 = ""
    @sidebar_item_2_6_visibility = "d-none"
    @sidebar_item_2_6_active = ""
    @sidebar_item_2_6_link = root_path

    @sidebar_item_2_7 = "item_2_7"
    @sidebar_item_2_7_icon_1 = ""
    @sidebar_item_2_7_visibility = "d-none"
    @sidebar_item_2_7_active = ""
    @sidebar_item_2_7_link = root_path

    @sidebar_item_2_8 = "item_2_8"
    @sidebar_item_2_8_icon_1 = ""
    @sidebar_item_2_8_visibility = "d-none"
    @sidebar_item_2_8_active = ""
    @sidebar_item_2_8_link = root_path

    @sidebar_item_2_9 = "item_2_9"
    @sidebar_item_2_9_icon_1 = ""
    @sidebar_item_2_9_visibility = "d-none"
    @sidebar_item_2_9_active = ""
    @sidebar_item_2_9_link = root_path

    # 3_accordion
    @sidebar_item_3_1 = "Sècurités"
    @sidebar_item_3_1_icon_1 = "bi-grip-vertical"
    @sidebar_item_3_1_icon_2 = "bi-shield-lock-fill"
    @sidebar_item_3_1_visibility = ""
    @sidebar_item_3_1_show = ""

    @sidebar_item_3_2 = "Utilisateurs"
    @sidebar_item_3_2_icon_1 = "bi-shield-lock-fill"
    @sidebar_item_3_2_visibility = ""
    @sidebar_item_3_2_link = root_path

    @sidebar_item_3_3 = "Profil"
    @sidebar_item_3_3_icon_1 = "bi bi-person-bounding-box"
    @sidebar_item_3_3_visibility = ""
    @sidebar_item_3_3_active = ""
    @sidebar_item_3_3_link = root_path

    @sidebar_item_3_4 = "Modifier"
    @sidebar_item_3_4_icon_1 = "bi bi-person-check-fill"
    @sidebar_item_3_4_visibility = ""
    @sidebar_item_3_4_active = ""
    @sidebar_item_3_4_link = root_path

    @sidebar_item_3_5 = "Deconnexion"
    @sidebar_item_3_5_icon_1 = "bi bi-door-closed-fill"
    @sidebar_item_3_5_visibility = "xd-none"
    @sidebar_item_3_5_active = "bg-danger-tech"
    @sidebar_item_3_5_link = root_path

    @sidebar_item_3_6 = "item_3_5"
    @sidebar_item_3_6_icon_1 = ""
    @sidebar_item_3_6_visibility = "d-none"
    @sidebar_item_3_6_active = ""
    @sidebar_item_3_6_link = root_path

    @sidebar_item_3_7 = "item_3_6"
    @sidebar_item_3_7_icon_1 = ""
    @sidebar_item_3_7_visibility = "d-none"
    @sidebar_item_3_7_active = ""
    @sidebar_item_3_7_link = root_path

    @sidebar_item_3_8 = "item_3_7"
    @sidebar_item_3_8_icon_1 = ""
    @sidebar_item_3_8_visibility = "d-none"
    @sidebar_item_3_8_active = ""
    @sidebar_item_3_8_link = root_path

    @sidebar_item_3_9 = "item_3_8"
    @sidebar_item_3_9_icon_1 = ""
    @sidebar_item_3_9_visibility = "d-none"
    @sidebar_item_3_9_active = ""
    @sidebar_item_3_9_link = root_path

    # 4_accordion
    @sidebar_item_4_1 = "Aides"
    @sidebar_item_4_1_icon_1 = "bi-grip-vertical"
    @sidebar_item_4_1_icon_2 = "bi-question-square-fill"
    @sidebar_item_4_1_visibility = "d-none"
    @sidebar_item_4_1_show = ""

    @sidebar_item_4_2 = "Documentations"
    @sidebar_item_4_2_icon_1 = "bi-question-square-fill"
    @sidebar_item_4_2_visibility = "d-none"
    @sidebar_item_4_2_link = root_path

    @sidebar_item_4_3 = "A propos"
    @sidebar_item_4_3_icon_1 = ""
    @sidebar_item_4_3_visibility = ""
    @sidebar_item_4_3_active = ""
    @sidebar_item_4_3_link = root_path

    @sidebar_item_4_4 = "Manuel"
    @sidebar_item_4_4_icon_1 = ""
    @sidebar_item_4_4_visibility = ""
    @sidebar_item_4_4_active = ""
    @sidebar_item_4_4_link = root_path

    @sidebar_item_4_5 = "item_4_5"
    @sidebar_item_4_5_icon_1 = ""
    @sidebar_item_4_5_visibility = "d-none"
    @sidebar_item_4_5_active = ""
    @sidebar_item_4_5_link = root_path

    @sidebar_item_4_6 = "item_4_6"
    @sidebar_item_4_6_icon_1 = ""
    @sidebar_item_4_6_visibility = "d-none"
    @sidebar_item_4_6_active = ""
    @sidebar_item_4_6_link = root_path

    @sidebar_item_4_7 = "item_4_7"
    @sidebar_item_4_7_icon_1 = ""
    @sidebar_item_4_7_visibility = "d-none"
    @sidebar_item_4_7_active = ""
    @sidebar_item_4_7_link = root_path

    @sidebar_item_4_8 = "item_4_8"
    @sidebar_item_4_8_icon_1 = ""
    @sidebar_item_4_8_visibility = "d-none"
    @sidebar_item_4_8_active = ""
    @sidebar_item_4_8_link = root_path

    @sidebar_item_4_9 = "item_4_9"
    @sidebar_item_4_9_icon_1 = ""
    @sidebar_item_4_9_visibility = "d-none"
    @sidebar_item_4_9_active = ""
    @sidebar_item_4_9_link = root_path

    # BEGIN BANNER TITLE
    @banner_item_1 = "Courriers"
    @banner_item_1_icon_1 = ""
    @banner_item_1_visibility = ""

    # BUTTON: group button
    @banner_btn_1 = "btn_1"
    @banner_btn_1_icon_1 = "bi-plus-lg"
    @banner_btn_1_visibility = "d-none"
    @banner_btn_1_active = ""
    @banner_btn_1_link = root_path

    @banner_btn_2 = "btn_2"
    @banner_btn_2_icon_1 = "bi-dash-lg"
    @banner_btn_2_visibility = "d-none"
    @banner_btn_2_active = ""
    @banner_btn_2_link = root_path

    @banner_btn_3 = "btn_3"
    @banner_btn_3_icon_1 = "bi-x-lg"
    @banner_btn_3_visibility = "d-none"
    @banner_btn_3_active = ""
    @banner_btn_3_link = root_path

    @banner_btn_4 = "btn_4"
    @banner_btn_4_icon_1 = "bi-eye"
    @banner_btn_4_visibility = "d-none"
    @banner_btn_4_active = ""
    @banner_btn_4_link = root_path

    # button/btn_5
    @banner_btn_5 = "Ménus"
    @banner_btn_5_icon_1 = "bi-list"
    @banner_btn_5_visibility = ""
    @banner_btn_5_active = ""
    @banner_btn_5_link = root_path

    @banner_btn_5_1 = "Courriers Arrivés"
    @banner_btn_5_1_icon_1 = "bi-envelope-exclamation"
    @banner_btn_5_1_visibility = ""
    @banner_btn_5_1_active = ""
    @banner_btn_5_1_link = root_path

    @banner_btn_5_2 = "Courriers Départs"
    @banner_btn_5_2_icon_1 = "bi-envelope-check"
    @banner_btn_5_2_visibility = ""
    @banner_btn_5_2_active = ""
    @banner_btn_5_2_link = root_path

    @banner_btn_5_3 = "btn_5_3"
    @banner_btn_5_3_icon_1 = ""
    @banner_btn_5_3_visibility = "d-none"
    @banner_btn_5_3_active = ""
    @banner_btn_5_3_link = root_path

    @banner_btn_5_4 = "btn_5_4"
    @banner_btn_5_4_icon_1 = ""
    @banner_btn_5_4_visibility = "d-none"
    @banner_btn_5_4_active = ""
    @banner_btn_5_4_link = root_path

    @banner_btn_5_5 = "btn_5_5"
    @banner_btn_5_5_icon_1 = ""
    @banner_btn_5_5_visibility = "d-none"
    @banner_btn_5_5_active = ""
    @banner_btn_5_5_link = root_path

    @banner_btn_5_6 = "btn_5_6"
    @banner_btn_5_6_icon_1 = ""
    @banner_btn_5_6_visibility = "d-none"
    @banner_btn_5_6_active = ""
    @banner_btn_5_6_link = root_path

    @banner_btn_5_7 = "btn_5_7"
    @banner_btn_5_7_icon_1 = ""
    @banner_btn_5_7_visibility = "d-none"
    @banner_btn_5_7_active = ""
    @banner_btn_5_7_link = root_path

    @banner_btn_5_8 = "btn_5_8"
    @banner_btn_5_8_icon_1 = ""
    @banner_btn_5_8_visibility = "d-none"
    @banner_btn_5_8_active = ""

    @banner_btn_5_9 = "btn_5_9"
    @banner_btn_5_9_icon_1 = ""
    @banner_btn_5_9_visibility = "d-none"
    @banner_btn_5_9_active = ""
    @banner_btn_5_9_link = root_path

    # BEGIN CONTENT
    @content_item_1 = ""
    @content_item_1_icon_1 = ""
    @content_item_1_visibility = "d-none"

  end
end

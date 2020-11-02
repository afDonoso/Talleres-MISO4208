.class public final Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;
.super Landroidx/fragment/app/b;
.source "NavigationDrawerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$Companion;

.field public static final SIDEBAR_ABOUT:Ljava/lang/String; = "about"

.field public static final SIDEBAR_ABOUT_HEADER:Ljava/lang/String; = "about_header"

.field public static final SIDEBAR_ACHIEVEMENTS:Ljava/lang/String; = "achievements"

.field public static final SIDEBAR_ADVENTURE_GUIDE:Ljava/lang/String; = "adventureguide"

.field public static final SIDEBAR_AVATAR:Ljava/lang/String; = "avatar"

.field public static final SIDEBAR_CHALLENGES:Ljava/lang/String; = "challenges"

.field public static final SIDEBAR_EQUIPMENT:Ljava/lang/String; = "equipment"

.field public static final SIDEBAR_G1G1_PROMO:Ljava/lang/String; = "g1g1promo"

.field public static final SIDEBAR_GEMS:Ljava/lang/String; = "gems"

.field public static final SIDEBAR_GUILDS:Ljava/lang/String; = "guilds"

.field public static final SIDEBAR_HELP:Ljava/lang/String; = "help"

.field public static final SIDEBAR_INVENTORY:Ljava/lang/String; = "inventory"

.field public static final SIDEBAR_ITEMS:Ljava/lang/String; = "items"

.field public static final SIDEBAR_NEWS:Ljava/lang/String; = "news"

.field public static final SIDEBAR_PARTY:Ljava/lang/String; = "party"

.field public static final SIDEBAR_PROMO:Ljava/lang/String; = "promo"

.field public static final SIDEBAR_SHOPS_MARKET:Ljava/lang/String; = "market"

.field public static final SIDEBAR_SHOPS_QUEST:Ljava/lang/String; = "questShop"

.field public static final SIDEBAR_SHOPS_SEASONAL:Ljava/lang/String; = "seasonalShop"

.field public static final SIDEBAR_SHOPS_TIMETRAVEL:Ljava/lang/String; = "timeTravelersShop"

.field public static final SIDEBAR_SKILLS:Ljava/lang/String; = "skills"

.field public static final SIDEBAR_SOCIAL:Ljava/lang/String; = "social"

.field public static final SIDEBAR_STABLE:Ljava/lang/String; = "stable"

.field public static final SIDEBAR_STATS:Ljava/lang/String; = "stats"

.field public static final SIDEBAR_SUBSCRIPTION:Ljava/lang/String; = "subscription"

.field public static final SIDEBAR_SUBSCRIPTION_PROMO:Ljava/lang/String; = "subscriptionpromo"

.field public static final SIDEBAR_TASKS:Ljava/lang/String; = "tasks"

.field public static final SIDEBAR_TAVERN:Ljava/lang/String; = "tavern"

.field private static final STATE_SELECTED_POSITION:Ljava/lang/String; = "selected_navigation_drawer_position"


# instance fields
.field private activePromo:Lcom/habitrpg/android/habitica/models/promotions/HabiticaPromotion;

.field private adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

.field private binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

.field public configManager:Lcom/habitrpg/android/habitica/helpers/AppConfigManager;

.field private drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private fragmentContainerView:Landroid/view/View;

.field public inventoryRepository:Lcom/habitrpg/android/habitica/data/InventoryRepository;

.field private mCurrentSelectedPosition:I

.field private mFromSavedInstanceState:Z

.field private quest:Lcom/habitrpg/android/habitica/models/inventory/Quest;

.field private questContent:Lcom/habitrpg/android/habitica/models/inventory/QuestContent;

.field public socialRepository:Lcom/habitrpg/android/habitica/data/SocialRepository;

.field private subscriptions:Lf/b/b0/a;

.field public userRepository:Lcom/habitrpg/android/habitica/data/UserRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$Companion;-><init>(Lkotlin/u/d/g;)V

    sput-object v0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->Companion:Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/b;-><init>()V

    return-void
.end method

.method public static final synthetic access$getItemWithIdentifier(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;Ljava/lang/String;)Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->getItemWithIdentifier(Ljava/lang/String;)Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getQuest$p(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;)Lcom/habitrpg/android/habitica/models/inventory/Quest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->quest:Lcom/habitrpg/android/habitica/models/inventory/Quest;

    return-object p0
.end method

.method public static final synthetic access$getQuestContent$p(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;)Lcom/habitrpg/android/habitica/models/inventory/QuestContent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->questContent:Lcom/habitrpg/android/habitica/models/inventory/QuestContent;

    return-object p0
.end method

.method public static final synthetic access$setNotificationsCount(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->setNotificationsCount(I)V

    return-void
.end method

.method public static final synthetic access$setNotificationsSeen(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->setNotificationsSeen(Z)V

    return-void
.end method

.method public static final synthetic access$setQuest$p(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;Lcom/habitrpg/android/habitica/models/inventory/Quest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->setQuest(Lcom/habitrpg/android/habitica/models/inventory/Quest;)V

    return-void
.end method

.method public static final synthetic access$setQuestContent$p(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;Lcom/habitrpg/android/habitica/models/inventory/QuestContent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->setQuestContent(Lcom/habitrpg/android/habitica/models/inventory/QuestContent;)V

    return-void
.end method

.method public static final synthetic access$startNotificationsActivity(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->startNotificationsActivity()V

    return-void
.end method

.method public static final synthetic access$updateUser(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;Lcom/habitrpg/android/habitica/models/user/User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->updateUser(Lcom/habitrpg/android/habitica/models/user/User;)V

    return-void
.end method

.method private final getItemWithIdentifier(Ljava/lang/String;)Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;->getItemWithIdentifier(Ljava/lang/String;)Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final initializeMenuItems()V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090475

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 3
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v6, 0x7f090078

    const-string v7, "adventureguide"

    invoke-direct {v5, v6, v7}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x4

    .line 4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setItemViewType(Ljava/lang/Integer;)V

    .line 5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v8, 0x7f0904a6

    const v6, 0x7f110c22

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v6, "context.getString(R.string.sidebar_tasks)"

    invoke-static {v10, v6}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    const-string v9, "tasks"

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v15, 0x7f09042a

    const v6, 0x7f110c1e

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.sidebar_skills)"

    invoke-static {v6, v7}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x8

    const/16 v20, 0x0

    const-string v16, "skills"

    move-object v14, v5

    move-object/from16 v17, v6

    invoke-direct/range {v14 .. v20}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v8, 0x7f090450

    const v6, 0x7f110c20

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v6, "context.getString(R.string.sidebar_stats)"

    invoke-static {v10, v6}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "stats"

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v15, 0x7f090045

    const v6, 0x7f110c10

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.sidebar_achievements)"

    invoke-static {v6, v7}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v16, "achievements"

    move-object v14, v5

    move-object/from16 v17, v6

    invoke-direct/range {v14 .. v20}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v6, 0x7f110c1d

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.sidebar_shops)"

    invoke-static {v6, v7}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    const-string v8, "inventory"

    invoke-direct {v5, v4, v8, v6, v7}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v10, 0x7f0902bf

    const v6, 0x7f110a7d

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v6, "context.getString(R.string.market)"

    invoke-static {v12, v6}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    const-string v11, "market"

    move-object v9, v5

    invoke-direct/range {v9 .. v15}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v17, 0x7f0903a4

    const v6, 0x7f110b73

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.questShop)"

    invoke-static {v6, v7}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v20, 0x0

    const/16 v21, 0x8

    const/16 v22, 0x0

    const-string v18, "questShop"

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v22}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v10, 0x7f090407

    const v6, 0x7f110bd1

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v6, "context.getString(R.string.seasonalShop)"

    invoke-static {v12, v6}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "seasonalShop"

    move-object v9, v5

    invoke-direct/range {v9 .. v15}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v17, 0x7f0904c2

    const v6, 0x7f110c9b

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.timeTravelers)"

    invoke-static {v6, v7}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v18, "timeTravelersShop"

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v22}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v6, 0x7f110c1b

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.stri\u2026idebar_section_inventory)"

    invoke-static {v6, v7}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-direct {v5, v4, v8, v6, v7}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v10, 0x7f090274

    const v6, 0x7f110c18

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v6, "context.getString(R.string.sidebar_items)"

    invoke-static {v12, v6}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "items"

    move-object v9, v5

    invoke-direct/range {v9 .. v15}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v17, 0x7f0901b6

    const v6, 0x7f110c13

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.sidebar_equipment)"

    invoke-static {v6, v7}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v18, "equipment"

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v22}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v8, 0x7f090443

    const v6, 0x7f110c1f

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v6, "context.getString(R.string.sidebar_stable)"

    invoke-static {v10, v6}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    const-string v9, "stable"

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v15, 0x7f0900a1

    const v6, 0x7f110c11

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.sidebar_avatar)"

    invoke-static {v6, v7}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x8

    const/16 v20, 0x0

    const-string v16, "avatar"

    move-object v14, v5

    move-object/from16 v17, v6

    invoke-direct/range {v14 .. v20}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v8, 0x7f0901f1

    const v6, 0x7f110c14

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v6, "context.getString(R.string.sidebar_gems)"

    invoke-static {v10, v6}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "gems"

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v6, 0x7f110c21

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.sidebar_subscription)"

    invoke-static {v6, v7}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "subscription"

    invoke-direct {v5, v3, v7, v6, v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v6, 0x7f110c1c

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.sidebar_section_social)"

    invoke-static {v6, v7}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    const-string v8, "social"

    invoke-direct {v5, v4, v8, v6, v7}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v6, 0x7f0904a8

    const v7, 0x7f110c23

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "context.getString(R.string.sidebar_tavern)"

    invoke-static {v7, v8}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "tavern"

    invoke-direct {v5, v6, v8, v7, v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v10, 0x7f090356

    const v6, 0x7f110c1a

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v6, "context.getString(R.string.sidebar_party)"

    invoke-static {v12, v6}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    const-string v11, "party"

    move-object v9, v5

    invoke-direct/range {v9 .. v15}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v17, 0x7f090220

    const v6, 0x7f110c15

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.sidebar_guilds)"

    invoke-static {v6, v7}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v20, 0x0

    const-string v18, "guilds"

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v22}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v8, 0x7f090104

    const v6, 0x7f110c12

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v6, "context.getString(R.string.sidebar_challenges)"

    invoke-static {v10, v6}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    const-string v9, "challenges"

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v6, 0x7f110c0f

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.sidebar_about)"

    invoke-static {v6, v7}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x1

    const-string v9, "about_header"

    invoke-direct {v5, v4, v9, v6, v8}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v11, 0x7f090314

    const v6, 0x7f110c19

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v6, "context.getString(R.string.sidebar_news)"

    invoke-static {v13, v6}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    const-string v12, "news"

    move-object v10, v5

    invoke-direct/range {v10 .. v16}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v18, 0x7f090486

    const v6, 0x7f110c16

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "context.getString(R.string.sidebar_help)"

    invoke-static {v6, v8}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v21, 0x0

    const/16 v22, 0x8

    const/16 v23, 0x0

    const-string v19, "help"

    move-object/from16 v17, v5

    move-object/from16 v20, v6

    invoke-direct/range {v17 .. v23}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v5, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const v9, 0x7f090010

    const v6, 0x7f110c0f

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v7}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    const-string v10, "about"

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZILkotlin/u/d/g;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    new-instance v2, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const-string v5, "promo"

    invoke-direct {v2, v3, v5}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x5

    .line 32
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setItemViewType(Ljava/lang/Integer;)V

    .line 33
    invoke-virtual {v2, v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setVisible(Z)V

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v2, v0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->configManager:Lcom/habitrpg/android/habitica/helpers/AppConfigManager;

    const-string v4, "configManager"

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/habitrpg/android/habitica/helpers/AppConfigManager;->enableGiftOneGetOne()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    new-instance v2, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const-string v4, "g1g1promo"

    invoke-direct {v2, v3, v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x3

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setItemViewType(Ljava/lang/Integer;)V

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_1
    iget-object v2, v0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->configManager:Lcom/habitrpg/android/habitica/helpers/AppConfigManager;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/habitrpg/android/habitica/helpers/AppConfigManager;->showSubscriptionBanner()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    new-instance v2, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    const-string v4, "subscriptionpromo"

    invoke-direct {v2, v3, v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x2

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setItemViewType(Ljava/lang/Integer;)V

    .line 42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;->updateItems(Ljava/util/List;)V

    return-void

    :cond_3
    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v5

    .line 44
    :cond_4
    invoke-static {v4}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v5

    .line 45
    :cond_5
    invoke-static {v4}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v5
.end method

.method private final setDisplayName(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->toolbarTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->toolbarTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f110062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private final setMessagesCount(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->messagesBadge:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->messagesBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->messagesBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final setNotificationsCount(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->notificationsBadge:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->notificationsBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->notificationsBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final setNotificationsSeen(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    const p1, 0x7f0601bd

    .line 2
    invoke-static {v0, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const-string p1, "it"

    .line 3
    invoke-static {v0, p1}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f0400ca

    invoke-static {v0, p1}, Lcom/habitrpg/android/habitica/extensions/Context_ExtensionsKt;->getThemeColor(Landroid/content/Context;I)I

    move-result p1

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->notificationsBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_3

    .line 5
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method private final setQuest(Lcom/habitrpg/android/habitica/models/inventory/Quest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->quest:Lcom/habitrpg/android/habitica/models/inventory/Quest;

    .line 2
    invoke-direct {p0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->updateQuestDisplay()V

    return-void
.end method

.method private final setQuestContent(Lcom/habitrpg/android/habitica/models/inventory/QuestContent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->questContent:Lcom/habitrpg/android/habitica/models/inventory/QuestContent;

    .line 2
    invoke-direct {p0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->updateQuestDisplay()V

    return-void
.end method

.method public static synthetic setSelection$default(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;Ljava/lang/Integer;Landroid/os/Bundle;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->setSelection(Ljava/lang/Integer;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private final setSettingsCount(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->settingsBadge:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->settingsBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->settingsBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final setUsername(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->usernameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private final startNotificationsActivity()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->closeDrawer()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    instance-of v1, v0, Lcom/habitrpg/android/habitica/ui/activities/MainActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/habitrpg/android/habitica/ui/activities/MainActivity;

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/habitrpg/android/habitica/ui/activities/NotificationsActivity;

    const/4 v1, 0x0

    const/16 v2, 0xde

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/habitrpg/android/habitica/ui/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private final updateItem(Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;->updateItem(Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;)V

    return-void

    :cond_0
    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final updateQuestDisplay()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->quest:Lcom/habitrpg/android/habitica/models/inventory/Quest;

    .line 2
    iget-object v1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->questContent:Lcom/habitrpg/android/habitica/models/inventory/QuestContent;

    const-string v2, "tavern"

    const/16 v3, 0x8

    const-string v4, "adapter"

    const/4 v5, 0x0

    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    .line 3
    invoke-virtual {v0}, Lcom/habitrpg/android/habitica/models/inventory/Quest;->getActive()Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_5

    .line 4
    :cond_0
    iget-object v6, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    iget-object v6, v6, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->questMenuView:Lcom/habitrpg/android/habitica/ui/views/social/QuestMenuView;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v6, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v6, :cond_3

    iget-object v6, v6, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->menuHeaderView:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Lcom/habitrpg/android/habitica/models/inventory/QuestContent;->getColors()Lcom/habitrpg/android/habitica/models/inventory/QuestColors;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/habitrpg/android/habitica/models/inventory/QuestColors;->getDarkColor()I

    move-result v8

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 6
    :cond_3
    iget-object v6, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v6, :cond_4

    iget-object v6, v6, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->questMenuView:Lcom/habitrpg/android/habitica/ui/views/social/QuestMenuView;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v0}, Lcom/habitrpg/android/habitica/ui/views/social/QuestMenuView;->configure(Lcom/habitrpg/android/habitica/models/inventory/Quest;)V

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->questMenuView:Lcom/habitrpg/android/habitica/ui/views/social/QuestMenuView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lcom/habitrpg/android/habitica/ui/views/social/QuestMenuView;->configure(Lcom/habitrpg/android/habitica/models/inventory/QuestContent;)V

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    if-eqz v0, :cond_14

    invoke-virtual {v1}, Lcom/habitrpg/android/habitica/models/inventory/QuestContent;->getColors()Lcom/habitrpg/android/habitica/models/inventory/QuestColors;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/habitrpg/android/habitica/models/inventory/QuestColors;->getExtraLightColor()I

    move-result v6

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v0, v6}, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;->setTintColor(I)V

    .line 9
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    if-eqz v0, :cond_13

    invoke-virtual {v1}, Lcom/habitrpg/android/habitica/models/inventory/QuestContent;->getColors()Lcom/habitrpg/android/habitica/models/inventory/QuestColors;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/habitrpg/android/habitica/models/inventory/QuestColors;->getDarkColor()I

    move-result v7

    :cond_7
    invoke-virtual {v0, v7}, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;->setBackgroundTintColor(I)V

    .line 10
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->messagesBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :cond_8
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->settingsBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :cond_9
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->notificationsBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    :cond_a
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->questMenuView:Lcom/habitrpg/android/habitica/ui/views/social/QuestMenuView;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/habitrpg/android/habitica/ui/views/social/QuestMenuView;->hideBossArt()V

    .line 14
    :cond_b
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;->getItems$Habitica_prodRelease()Ljava/util/List;

    move-result-object v0

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    .line 17
    invoke-virtual {v7}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/u/d/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_e

    const v6, 0x7f110046

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_e
    move-object v3, v5

    :goto_4
    invoke-virtual {v2, v3}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setSubtitle(Ljava/lang/String;)V

    goto :goto_3

    .line 20
    :cond_f
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 21
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->questMenuView:Lcom/habitrpg/android/habitica/ui/views/social/QuestMenuView;

    if-eqz v0, :cond_10

    new-instance v2, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$updateQuestDisplay$6;

    invoke-direct {v2, p0, v1}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$updateQuestDisplay$6;-><init>(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;Lcom/habitrpg/android/habitica/models/inventory/QuestContent;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    return-void

    .line 22
    :cond_11
    invoke-static {v4}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v5

    .line 23
    :cond_12
    invoke-static {v4}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v5

    .line 24
    :cond_13
    invoke-static {v4}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v5

    .line 25
    :cond_14
    invoke-static {v4}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v5

    .line 26
    :cond_15
    :goto_5
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->questMenuView:Lcom/habitrpg/android/habitica/ui/views/social/QuestMenuView;

    if-eqz v0, :cond_16

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    :cond_16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 28
    iget-object v1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    if-eqz v1, :cond_1a

    const-string v3, "it"

    invoke-static {v0, v3}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0400da

    invoke-static {v0, v3}, Lcom/habitrpg/android/habitica/extensions/Context_ExtensionsKt;->getThemeColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;->setTintColor(I)V

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-static {v1}, Lcom/habitrpg/android/habitica/extensions/Context_ExtensionsKt;->isUsingNightModeResources(Landroid/content/Context;)Z

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_18

    .line 30
    iget-object v1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    if-eqz v1, :cond_17

    const v3, 0x7f0600eb

    invoke-static {v0, v3}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;->setBackgroundTintColor(I)V

    goto :goto_6

    :cond_17
    invoke-static {v4}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v5

    .line 31
    :cond_18
    iget-object v1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    if-eqz v1, :cond_19

    invoke-static {v0, v3}, Lcom/habitrpg/android/habitica/extensions/Context_ExtensionsKt;->getThemeColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;->setBackgroundTintColor(I)V

    goto :goto_6

    :cond_19
    invoke-static {v4}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v5

    .line 32
    :cond_1a
    invoke-static {v4}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v5

    .line 33
    :cond_1b
    :goto_6
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;->getItems$Habitica_prodRelease()Ljava/util/List;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    .line 36
    invoke-virtual {v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/u/d/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 37
    :cond_1d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    .line 38
    invoke-virtual {v1, v5}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setSubtitle(Ljava/lang/String;)V

    goto :goto_8

    :cond_1e
    return-void

    .line 39
    :cond_1f
    invoke-static {v4}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v5
.end method

.method private final updateUser(Lcom/habitrpg/android/habitica/models/user/User;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->getInbox()Lcom/habitrpg/android/habitica/models/user/Inbox;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/habitrpg/android/habitica/models/user/Inbox;->getNewMessages()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->setMessagesCount(I)V

    .line 2
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->getFlags()Lcom/habitrpg/android/habitica/models/user/Flags;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/habitrpg/android/habitica/models/user/Flags;->getVerifiedUsername()Z

    move-result v0

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0, v0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->setSettingsCount(I)V

    .line 3
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->getProfile()Lcom/habitrpg/android/habitica/models/user/Profile;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/habitrpg/android/habitica/models/user/Profile;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v3

    :goto_3
    invoke-direct {p0, v0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->setDisplayName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->getFormattedUsername()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->setUsername(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->avatarView:Lcom/habitrpg/android/habitica/ui/AvatarView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/habitrpg/android/habitica/ui/AvatarView;->setAvatar(Lcom/habitrpg/android/habitica/models/Avatar;)V

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->questMenuView:Lcom/habitrpg/android/habitica/ui/views/social/QuestMenuView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/habitrpg/android/habitica/ui/views/social/QuestMenuView;->configure(Lcom/habitrpg/android/habitica/models/user/User;)V

    :cond_5
    const-string v0, "tavern"

    .line 7
    invoke-direct {p0, v0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->getItemWithIdentifier(Ljava/lang/String;)Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->getPreferences()Lcom/habitrpg/android/habitica/models/user/Preferences;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/habitrpg/android/habitica/models/user/Preferences;->getSleep()Z

    move-result v4

    if-ne v4, v2, :cond_7

    if-eqz v0, :cond_8

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_6

    const v5, 0x7f110147

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    move-object v4, v3

    :goto_4
    invoke-virtual {v0, v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setSubtitle(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    if-eqz v0, :cond_8

    .line 10
    invoke-virtual {v0, v3}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setSubtitle(Ljava/lang/String;)V

    .line 11
    :cond_8
    :goto_5
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->getItems()Lcom/habitrpg/android/habitica/models/user/Items;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/habitrpg/android/habitica/models/user/Items;->getSpecial()Lcom/habitrpg/android/habitica/models/user/SpecialItems;

    move-result-object v0

    goto :goto_6

    :cond_9
    move-object v0, v3

    :goto_6
    if-eqz v0, :cond_a

    .line 12
    invoke-virtual {v0}, Lcom/habitrpg/android/habitica/models/user/SpecialItems;->hasSpecialItems()Z

    move-result v0

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    const-string v4, "skills"

    .line 13
    invoke-direct {p0, v4}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->getItemWithIdentifier(Ljava/lang/String;)Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 14
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->hasClass()Z

    move-result v5

    if-nez v5, :cond_b

    if-nez v0, :cond_b

    .line 15
    invoke-virtual {v4, v1}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setVisible(Z)V

    goto :goto_a

    .line 16
    :cond_b
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->getStats()Lcom/habitrpg/android/habitica/models/user/Stats;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/habitrpg/android/habitica/models/user/Stats;->getLvl()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    :goto_8
    const/16 v6, 0xb

    if-ge v5, v6, :cond_d

    if-nez v0, :cond_d

    const v0, 0x7f110cc3

    .line 17
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setPillText(Ljava/lang/String;)V

    goto :goto_9

    .line 18
    :cond_d
    invoke-virtual {v4, v3}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setPillText(Ljava/lang/String;)V

    .line 19
    :goto_9
    invoke-virtual {v4, v2}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setVisible(Z)V

    .line 20
    :goto_a
    invoke-direct {p0, v4}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->updateItem(Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;)V

    :cond_e
    const-string v0, "stats"

    .line 21
    invoke-direct {p0, v0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->getItemWithIdentifier(Ljava/lang/String;)Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 22
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->getPreferences()Lcom/habitrpg/android/habitica/models/user/Preferences;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/habitrpg/android/habitica/models/user/Preferences;->getDisableClasses()Z

    move-result v4

    if-eq v4, v2, :cond_f

    goto :goto_b

    .line 23
    :cond_f
    invoke-virtual {v0, v1}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setVisible(Z)V

    goto :goto_10

    .line 24
    :cond_10
    :goto_b
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->getStats()Lcom/habitrpg/android/habitica/models/user/Stats;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/habitrpg/android/habitica/models/user/Stats;->getLvl()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_c

    :cond_11
    const/4 v4, 0x0

    :goto_c
    const/16 v5, 0xa

    if-lt v4, v5, :cond_14

    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->getStats()Lcom/habitrpg/android/habitica/models/user/Stats;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/habitrpg/android/habitica/models/user/Stats;->getPoints()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_d

    :cond_12
    const/4 v4, 0x0

    :goto_d
    if-lez v4, :cond_14

    .line 25
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->getStats()Lcom/habitrpg/android/habitica/models/user/Stats;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lcom/habitrpg/android/habitica/models/user/Stats;->getPoints()Ljava/lang/Integer;

    move-result-object v4

    goto :goto_e

    :cond_13
    move-object v4, v3

    :goto_e
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setPillText(Ljava/lang/String;)V

    goto :goto_f

    .line 26
    :cond_14
    invoke-virtual {v0, v3}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setPillText(Ljava/lang/String;)V

    .line 27
    :goto_f
    invoke-virtual {v0, v2}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setVisible(Z)V

    .line 28
    :goto_10
    invoke-direct {p0, v0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->updateItem(Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;)V

    :cond_15
    const-string v0, "subscription"

    .line 29
    invoke-direct {p0, v0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->getItemWithIdentifier(Ljava/lang/String;)Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->isSubscribed()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->getPurchased()Lcom/habitrpg/android/habitica/models/user/Purchases;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Lcom/habitrpg/android/habitica/models/user/Purchases;->getPlan()Lcom/habitrpg/android/habitica/models/user/SubscriptionPlan;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Lcom/habitrpg/android/habitica/models/user/SubscriptionPlan;->realmGet$dateTerminated()Ljava/util/Date;

    move-result-object v4

    goto :goto_11

    :cond_16
    move-object v4, v3

    :goto_11
    if-eqz v4, :cond_1c

    .line 31
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const-string v5, "terminatedCalendar"

    .line 32
    invoke-static {v4, v5}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->getPurchased()Lcom/habitrpg/android/habitica/models/user/Purchases;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Lcom/habitrpg/android/habitica/models/user/Purchases;->getPlan()Lcom/habitrpg/android/habitica/models/user/SubscriptionPlan;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Lcom/habitrpg/android/habitica/models/user/SubscriptionPlan;->realmGet$dateTerminated()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_17

    goto :goto_12

    :cond_17
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    :goto_12
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 33
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const-string v7, "Calendar.getInstance()"

    invoke-static {v6, v7}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 34
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    const/16 v6, 0x1e

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1f

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_1f

    const-string v7, "it"

    if-eqz v0, :cond_19

    .line 36
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->getPurchased()Lcom/habitrpg/android/habitica/models/user/Purchases;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-virtual {v8}, Lcom/habitrpg/android/habitica/models/user/Purchases;->getPlan()Lcom/habitrpg/android/habitica/models/user/SubscriptionPlan;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-virtual {v8}, Lcom/habitrpg/android/habitica/models/user/SubscriptionPlan;->realmGet$dateTerminated()Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-static {v6, v7}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "it.resources"

    invoke-static {v9, v10}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/habitrpg/android/habitica/extensions/Date_ExtensionsKt;->getRemainingString(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    goto :goto_13

    :cond_18
    move-object v8, v3

    :goto_13
    invoke-virtual {v0, v8}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setSubtitle(Ljava/lang/String;)V

    :cond_19
    if-eqz v0, :cond_1f

    const/4 v8, 0x2

    int-to-long v8, v8

    cmp-long v10, v4, v8

    if-gtz v10, :cond_1a

    const v4, 0x7f060171

    .line 37
    invoke-static {v6, v4}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_14

    :cond_1a
    const/4 v8, 0x7

    int-to-long v8, v8

    cmp-long v10, v4, v8

    if-gtz v10, :cond_1b

    const v4, 0x7f06004b

    .line 38
    invoke-static {v6, v4}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_14

    .line 39
    :cond_1b
    invoke-static {v6, v7}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f040349

    invoke-static {v6, v4}, Lcom/habitrpg/android/habitica/extensions/Context_ExtensionsKt;->getThemeColor(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 40
    :goto_14
    invoke-virtual {v0, v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setSubtitleTextColor(Ljava/lang/Integer;)V

    goto :goto_16

    .line 41
    :cond_1c
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->isSubscribed()Z

    move-result v4

    if-eqz v4, :cond_1d

    if-eqz v0, :cond_1f

    .line 42
    invoke-virtual {v0, v3}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setSubtitle(Ljava/lang/String;)V

    goto :goto_16

    :cond_1d
    if-eqz v0, :cond_1f

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1e

    const v5, 0x7f110a8f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_15

    :cond_1e
    move-object v4, v3

    :goto_15
    invoke-virtual {v0, v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setSubtitle(Ljava/lang/String;)V

    .line 44
    :cond_1f
    :goto_16
    iget-object v4, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->configManager:Lcom/habitrpg/android/habitica/helpers/AppConfigManager;

    const-string v5, "configManager"

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Lcom/habitrpg/android/habitica/helpers/AppConfigManager;->enableGiftOneGetOne()Z

    move-result v4

    if-eqz v4, :cond_22

    if-eqz v0, :cond_21

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_20

    const v6, 0x7f110bc5

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_17

    :cond_20
    move-object v4, v3

    :goto_17
    invoke-virtual {v0, v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setPillText(Ljava/lang/String;)V

    .line 46
    :cond_21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_22

    if-eqz v0, :cond_22

    const v6, 0x7f08021e

    invoke-static {v4, v6}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setPillBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_22
    if-eqz v0, :cond_23

    .line 47
    invoke-direct {p0, v0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->updateItem(Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;)V

    :cond_23
    const-string v0, "subscriptionpromo"

    .line 48
    invoke-direct {p0, v0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->getItemWithIdentifier(Ljava/lang/String;)Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 49
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->isSubscribed()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-virtual {v0, v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setVisible(Z)V

    .line 50
    invoke-direct {p0, v0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->updateItem(Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;)V

    :cond_24
    const-string v0, "news"

    .line 51
    invoke-direct {p0, v0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->getItemWithIdentifier(Ljava/lang/String;)Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 52
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->getFlags()Lcom/habitrpg/android/habitica/models/user/Flags;

    move-result-object v4

    if-eqz v4, :cond_25

    invoke-virtual {v4}, Lcom/habitrpg/android/habitica/models/user/Flags;->getNewStuff()Z

    move-result v4

    goto :goto_18

    :cond_25
    const/4 v4, 0x0

    :goto_18
    invoke-virtual {v0, v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setShowBubble(Z)V

    :cond_26
    const-string v0, "party"

    .line 53
    invoke-direct {p0, v0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->getItemWithIdentifier(Ljava/lang/String;)Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->hasParty()Z

    move-result v4

    if-eqz v4, :cond_2a

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    goto :goto_19

    :cond_27
    move-object v4, v3

    :goto_19
    if-nez v4, :cond_2a

    if-eqz v0, :cond_28

    const v4, 0x7f090356

    .line 55
    invoke-virtual {v0, v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setTransitionId(I)V

    :cond_28
    if-eqz v0, :cond_2c

    new-array v4, v2, [Lkotlin/j;

    .line 56
    new-instance v6, Lkotlin/j;

    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->getParty()Lcom/habitrpg/android/habitica/models/social/UserParty;

    move-result-object v7

    if-eqz v7, :cond_29

    invoke-virtual {v7}, Lcom/habitrpg/android/habitica/models/social/UserParty;->getId()Ljava/lang/String;

    move-result-object v7

    goto :goto_1a

    :cond_29
    move-object v7, v3

    :goto_1a
    const-string v8, "partyID"

    invoke-direct {v6, v8, v7}, Lkotlin/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v1

    invoke-static {v4}, Landroidx/core/os/b;->a([Lkotlin/j;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setBundle(Landroid/os/Bundle;)V

    goto :goto_1b

    .line 57
    :cond_2a
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->hasParty()Z

    move-result v4

    if-nez v4, :cond_2c

    if-eqz v0, :cond_2b

    const v4, 0x7f090318

    .line 58
    invoke-virtual {v0, v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setTransitionId(I)V

    :cond_2b
    if-eqz v0, :cond_2c

    .line 59
    invoke-virtual {v0, v3}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setBundle(Landroid/os/Bundle;)V

    :cond_2c
    :goto_1b
    const-string v0, "adventureguide"

    .line 60
    invoke-direct {p0, v0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->getItemWithIdentifier(Ljava/lang/String;)Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    move-result-object v0

    .line 61
    iget-object v4, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->configManager:Lcom/habitrpg/android/habitica/helpers/AppConfigManager;

    if-eqz v4, :cond_30

    invoke-virtual {v4}, Lcom/habitrpg/android/habitica/helpers/AppConfigManager;->enableAdventureGuide()Z

    move-result v3

    if-eqz v3, :cond_2e

    if-eqz v0, :cond_2d

    .line 62
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/models/user/User;->getHasCompletedOnboarding()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setVisible(Z)V

    :cond_2d
    if-eqz v0, :cond_2f

    .line 63
    invoke-virtual {v0, p1}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setUser(Lcom/habitrpg/android/habitica/models/user/User;)V

    goto :goto_1c

    :cond_2e
    if-eqz v0, :cond_2f

    .line 64
    invoke-virtual {v0, v1}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setVisible(Z)V

    :cond_2f
    :goto_1c
    return-void

    .line 65
    :cond_30
    invoke-static {v5}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v3

    .line 66
    :cond_31
    invoke-static {v5}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final closeDrawer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->fragmentContainerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->f(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final getConfigManager()Lcom/habitrpg/android/habitica/helpers/AppConfigManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->configManager:Lcom/habitrpg/android/habitica/helpers/AppConfigManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "configManager"

    invoke-static {v0}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getInventoryRepository()Lcom/habitrpg/android/habitica/data/InventoryRepository;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->inventoryRepository:Lcom/habitrpg/android/habitica/data/InventoryRepository;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "inventoryRepository"

    invoke-static {v0}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSocialRepository()Lcom/habitrpg/android/habitica/data/SocialRepository;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->socialRepository:Lcom/habitrpg/android/habitica/data/SocialRepository;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "socialRepository"

    invoke-static {v0}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getUserRepository()Lcom/habitrpg/android/habitica/data/UserRepository;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->userRepository:Lcom/habitrpg/android/habitica/data/UserRepository;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "userRepository"

    invoke-static {v0}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final isDrawerOpen()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->C(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    const v2, 0x7f0400da

    invoke-static {v0, v2}, Lcom/habitrpg/android/habitica/extensions/Context_ExtensionsKt;->getThemeColor(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x7f0400dd

    invoke-static {v0, v3}, Lcom/habitrpg/android/habitica/extensions/Context_ExtensionsKt;->getThemeColor(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;-><init>(II)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    const/4 v0, 0x0

    invoke-direct {v1, v0, v0}, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;-><init>(II)V

    .line 4
    :goto_0
    iput-object v1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    .line 5
    new-instance v0, Lf/b/b0/a;

    invoke-direct {v0}, Lf/b/b0/a;-><init>()V

    iput-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->subscriptions:Lf/b/b0/a;

    .line 6
    sget-object v0, Lcom/habitrpg/android/habitica/HabiticaBaseApplication;->Companion:Lcom/habitrpg/android/habitica/HabiticaBaseApplication$Companion;

    invoke-virtual {v0}, Lcom/habitrpg/android/habitica/HabiticaBaseApplication$Companion;->getUserComponent()Lcom/habitrpg/android/habitica/components/UserComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/habitrpg/android/habitica/components/UserComponent;->inject(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;)V

    .line 7
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    const-string v0, "selected_navigation_drawer_position"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->mFromSavedInstanceState:Z

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/u/d/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c008d

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->subscriptions:Lf/b/b0/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/b/b0/a;->dispose()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->socialRepository:Lcom/habitrpg/android/habitica/data/SocialRepository;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/habitrpg/android/habitica/data/BaseRepository;->close()V

    .line 3
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->inventoryRepository:Lcom/habitrpg/android/habitica/data/InventoryRepository;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/habitrpg/android/habitica/data/BaseRepository;->close()V

    .line 4
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->userRepository:Lcom/habitrpg/android/habitica/data/UserRepository;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/habitrpg/android/habitica/data/BaseRepository;->close()V

    .line 5
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void

    :cond_1
    const-string v0, "userRepository"

    .line 6
    invoke-static {v0}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "inventoryRepository"

    .line 7
    invoke-static {v0}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "socialRepository"

    .line 8
    invoke-static {v0}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/u/d/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    const-string v1, "selected_navigation_drawer_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/u/d/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-static {p1}, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->bind(Landroid/view/View;)Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    const-string p2, "adapter"

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->initializeMenuItems()V

    .line 6
    iget-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->subscriptions:Lf/b/b0/a;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;->getItemSelectionEvents()Lf/b/f;

    move-result-object p2

    new-instance v1, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$1;

    invoke-direct {v1, p0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$1;-><init>(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;)V

    .line 7
    sget-object v2, Lcom/habitrpg/android/habitica/helpers/RxErrorHandler;->Companion:Lcom/habitrpg/android/habitica/helpers/RxErrorHandler$Companion;

    invoke-virtual {v2}, Lcom/habitrpg/android/habitica/helpers/RxErrorHandler$Companion;->handleEmptyError()Lf/b/c0/f;

    move-result-object v2

    .line 8
    invoke-virtual {p2, v1, v2}, Lf/b/f;->U(Lf/b/c0/f;Lf/b/c0/f;)Lf/b/b0/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/b/b0/a;->b(Lf/b/b0/b;)Z

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->subscriptions:Lf/b/b0/a;

    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->socialRepository:Lcom/habitrpg/android/habitica/data/SocialRepository;

    if-eqz p2, :cond_5

    const-string v1, "00000000-0000-4000-A000-000000000000"

    invoke-interface {p2, v1}, Lcom/habitrpg/android/habitica/data/SocialRepository;->getGroup(Ljava/lang/String;)Lf/b/f;

    move-result-object p2

    .line 10
    new-instance v1, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$2;

    invoke-direct {v1, p0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$2;-><init>(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;)V

    invoke-virtual {p2, v1}, Lf/b/f;->t(Lf/b/c0/f;)Lf/b/f;

    move-result-object p2

    .line 11
    sget-object v1, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$3;->INSTANCE:Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$3;

    invoke-virtual {p2, v1}, Lf/b/f;->x(Lf/b/c0/o;)Lf/b/f;

    move-result-object p2

    .line 12
    new-instance v1, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$4;

    invoke-direct {v1, p0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$4;-><init>(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;)V

    invoke-virtual {p2, v1}, Lf/b/f;->B(Lf/b/c0/n;)Lf/b/f;

    move-result-object p2

    .line 13
    new-instance v1, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$5;

    invoke-direct {v1, p0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$5;-><init>(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;)V

    .line 14
    sget-object v2, Lcom/habitrpg/android/habitica/helpers/RxErrorHandler;->Companion:Lcom/habitrpg/android/habitica/helpers/RxErrorHandler$Companion;

    invoke-virtual {v2}, Lcom/habitrpg/android/habitica/helpers/RxErrorHandler$Companion;->handleEmptyError()Lf/b/c0/f;

    move-result-object v2

    .line 15
    invoke-virtual {p2, v1, v2}, Lf/b/f;->U(Lf/b/c0/f;Lf/b/c0/f;)Lf/b/b0/b;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Lf/b/b0/a;->b(Lf/b/b0/b;)Z

    goto :goto_2

    :cond_5
    const-string p1, "socialRepository"

    invoke-static {p1}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->subscriptions:Lf/b/b0/a;

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->userRepository:Lcom/habitrpg/android/habitica/data/UserRepository;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lcom/habitrpg/android/habitica/data/UserRepository;->getUser()Lf/b/f;

    move-result-object p2

    new-instance v0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$6;

    invoke-direct {v0, p0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$6;-><init>(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;)V

    .line 18
    sget-object v1, Lcom/habitrpg/android/habitica/helpers/RxErrorHandler;->Companion:Lcom/habitrpg/android/habitica/helpers/RxErrorHandler$Companion;

    invoke-virtual {v1}, Lcom/habitrpg/android/habitica/helpers/RxErrorHandler$Companion;->handleEmptyError()Lf/b/c0/f;

    move-result-object v1

    .line 19
    invoke-virtual {p2, v0, v1}, Lf/b/f;->U(Lf/b/c0/f;Lf/b/c0/f;)Lf/b/b0/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/b/b0/a;->b(Lf/b/b0/b;)Z

    goto :goto_3

    :cond_7
    const-string p1, "userRepository"

    invoke-static {p1}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->messagesButtonWrapper:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_9

    new-instance p2, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$7;

    invoke-direct {p2, p0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$7;-><init>(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_9
    iget-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->settingsButtonWrapper:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_a

    new-instance p2, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$8;

    invoke-direct {p2, p0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$8;-><init>(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_a
    iget-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->binding:Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcom/habitrpg/android/habitica/databinding/DrawerMainBinding;->notificationsButtonWrapper:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_b

    new-instance p2, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$9;

    invoke-direct {p2, p0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$onViewCreated$9;-><init>(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void
.end method

.method public final openDrawer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->fragmentContainerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->M(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final setConfigManager(Lcom/habitrpg/android/habitica/helpers/AppConfigManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/u/d/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->configManager:Lcom/habitrpg/android/habitica/helpers/AppConfigManager;

    return-void
.end method

.method public final setInventoryRepository(Lcom/habitrpg/android/habitica/data/InventoryRepository;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/u/d/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->inventoryRepository:Lcom/habitrpg/android/habitica/data/InventoryRepository;

    return-void
.end method

.method public final setSelection(Ljava/lang/Integer;Landroid/os/Bundle;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->closeDrawer()V

    .line 2
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    const-string v1, "adapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;->getSelectedItem()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;->getSelectedItem()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/u/d/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;->setSelectedItem(Ljava/lang/Integer;)V

    if-nez p3, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 4
    sget-object p3, Lcom/habitrpg/android/habitica/helpers/MainNavigationController;->INSTANCE:Lcom/habitrpg/android/habitica/helpers/MainNavigationController;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1, p2}, Lcom/habitrpg/android/habitica/helpers/MainNavigationController;->navigate(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 5
    :cond_3
    sget-object p2, Lcom/habitrpg/android/habitica/helpers/MainNavigationController;->INSTANCE:Lcom/habitrpg/android/habitica/helpers/MainNavigationController;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p3, 0x2

    invoke-static {p2, p1, v2, p3, v2}, Lcom/habitrpg/android/habitica/helpers/MainNavigationController;->navigate$default(Lcom/habitrpg/android/habitica/helpers/MainNavigationController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    :cond_4
    :goto_0
    return-void

    .line 6
    :cond_5
    invoke-static {v1}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_6
    invoke-static {v1}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method public final setSocialRepository(Lcom/habitrpg/android/habitica/data/SocialRepository;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/u/d/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->socialRepository:Lcom/habitrpg/android/habitica/data/SocialRepository;

    return-void
.end method

.method public final setUp(ILandroidx/drawerlayout/widget/DrawerLayout;Lcom/habitrpg/android/habitica/ui/viewmodels/NotificationsViewModel;)V
    .locals 1

    const-string v0, "drawerLayout"

    invoke-static {p2, v0}, Lkotlin/u/d/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p3, v0}, Lkotlin/u/d/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->fragmentContainerView:Landroid/view/View;

    .line 2
    iput-object p2, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p2, :cond_1

    const p1, 0x7f08011e

    const v0, 0x800003

    .line 3
    invoke-virtual {p2, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->U(II)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->subscriptions:Lf/b/b0/a;

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/habitrpg/android/habitica/ui/viewmodels/NotificationsViewModel;->getNotificationCount()Lf/b/f;

    move-result-object p2

    new-instance v0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$setUp$1;

    invoke-direct {v0, p0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$setUp$1;-><init>(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;)V

    invoke-static {p2, v0}, Lcom/habitrpg/android/habitica/extensions/Flowable_ExtensionsKt;->subscribeWithErrorHandler(Lf/b/f;Lf/b/c0/f;)Lf/b/b0/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/b/b0/a;->b(Lf/b/b0/b;)Z

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->subscriptions:Lf/b/b0/a;

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lcom/habitrpg/android/habitica/ui/viewmodels/NotificationsViewModel;->allNotificationsSeen()Lf/b/f;

    move-result-object p2

    new-instance v0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$setUp$2;

    invoke-direct {v0, p0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$setUp$2;-><init>(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;)V

    invoke-static {p2, v0}, Lcom/habitrpg/android/habitica/extensions/Flowable_ExtensionsKt;->subscribeWithErrorHandler(Lf/b/f;Lf/b/c0/f;)Lf/b/b0/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/b/b0/a;->b(Lf/b/b0/b;)Z

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->subscriptions:Lf/b/b0/a;

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Lcom/habitrpg/android/habitica/ui/viewmodels/NotificationsViewModel;->getHasPartyNotification()Lf/b/f;

    move-result-object p2

    new-instance p3, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$setUp$3;

    invoke-direct {p3, p0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment$setUp$3;-><init>(Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;)V

    invoke-static {p2, p3}, Lcom/habitrpg/android/habitica/extensions/Flowable_ExtensionsKt;->subscribeWithErrorHandler(Lf/b/f;Lf/b/c0/f;)Lf/b/b0/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/b/b0/a;->b(Lf/b/b0/b;)Z

    :cond_4
    return-void
.end method

.method public final setUserRepository(Lcom/habitrpg/android/habitica/data/UserRepository;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/u/d/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->userRepository:Lcom/habitrpg/android/habitica/data/UserRepository;

    return-void
.end method

.method public final updatePromo()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "it"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->configManager:Lcom/habitrpg/android/habitica/helpers/AppConfigManager;

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/habitrpg/android/habitica/helpers/AppConfigManager;->activePromo(Landroid/content/Context;)Lcom/habitrpg/android/habitica/models/promotions/HabiticaPromotion;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "configManager"

    invoke-static {v0}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->activePromo:Lcom/habitrpg/android/habitica/models/promotions/HabiticaPromotion;

    const-string v0, "promo"

    .line 2
    invoke-direct {p0, v0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->getItemWithIdentifier(Ljava/lang/String;)Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3
    iget-object v3, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->activePromo:Lcom/habitrpg/android/habitica/models/promotions/HabiticaPromotion;

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v3}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setVisible(Z)V

    .line 5
    iget-object v3, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->adapter:Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;

    if-eqz v3, :cond_c

    iget-object v4, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->activePromo:Lcom/habitrpg/android/habitica/models/promotions/HabiticaPromotion;

    invoke-virtual {v3, v4}, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;->setActivePromo(Lcom/habitrpg/android/habitica/models/promotions/HabiticaPromotion;)V

    .line 6
    iget-object v3, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->activePromo:Lcom/habitrpg/android/habitica/models/promotions/HabiticaPromotion;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/habitrpg/android/habitica/models/promotions/HabiticaPromotion;->getPromoType()Lcom/habitrpg/android/habitica/models/promotions/PromoType;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    sget-object v4, Lcom/habitrpg/android/habitica/models/promotions/PromoType;->GEMS_AMOUNT:Lcom/habitrpg/android/habitica/models/promotions/PromoType;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->activePromo:Lcom/habitrpg/android/habitica/models/promotions/HabiticaPromotion;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/habitrpg/android/habitica/models/promotions/HabiticaPromotion;->getPromoType()Lcom/habitrpg/android/habitica/models/promotions/PromoType;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    sget-object v4, Lcom/habitrpg/android/habitica/models/promotions/PromoType;->GEMS_PRICE:Lcom/habitrpg/android/habitica/models/promotions/PromoType;

    if-ne v3, v4, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v2

    goto :goto_4

    :cond_5
    :goto_3
    const-string v3, "gems"

    .line 7
    invoke-direct {p0, v3}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->getItemWithIdentifier(Ljava/lang/String;)Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    move-result-object v3

    .line 8
    :goto_4
    iget-object v4, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->activePromo:Lcom/habitrpg/android/habitica/models/promotions/HabiticaPromotion;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/habitrpg/android/habitica/models/promotions/HabiticaPromotion;->getPromoType()Lcom/habitrpg/android/habitica/models/promotions/PromoType;

    move-result-object v4

    goto :goto_5

    :cond_6
    move-object v4, v2

    :goto_5
    sget-object v5, Lcom/habitrpg/android/habitica/models/promotions/PromoType;->SUBSCRIPTION:Lcom/habitrpg/android/habitica/models/promotions/PromoType;

    if-ne v4, v5, :cond_7

    const-string v3, "subscription"

    .line 9
    invoke-direct {p0, v3}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->getItemWithIdentifier(Ljava/lang/String;)Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;

    move-result-object v3

    :cond_7
    if-eqz v3, :cond_9

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_8

    const v5, 0x7f110bc5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_8
    move-object v4, v2

    :goto_6
    invoke-virtual {v3, v4}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setPillText(Ljava/lang/String;)V

    :cond_9
    if-eqz v3, :cond_b

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v5, p0, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->activePromo:Lcom/habitrpg/android/habitica/models/promotions/HabiticaPromotion;

    if-eqz v5, :cond_a

    invoke-static {v4, v1}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/habitrpg/android/habitica/models/promotions/HabiticaPromotion;->pillBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    :cond_a
    invoke-virtual {v3, v2}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setPillBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    if-eqz v3, :cond_e

    .line 12
    invoke-direct {p0, v3}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->updateItem(Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;)V

    goto :goto_7

    :cond_c
    const-string v0, "adapter"

    .line 13
    invoke-static {v0}, Lkotlin/u/d/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_d
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->setVisible(Z)V

    .line 15
    :cond_e
    :goto_7
    invoke-direct {p0, v0}, Lcom/habitrpg/android/habitica/ui/fragments/NavigationDrawerFragment;->updateItem(Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;)V

    :cond_f
    return-void
.end method

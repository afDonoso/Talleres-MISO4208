.class public final Lcom/habitrpg/android/habitica/databinding/WidgetTaskListBinding;
.super Ljava/lang/Object;
.source "WidgetTaskListBinding.java"

# interfaces
.implements Lb/u/a;


# instance fields
.field public final emptyView:Landroid/widget/TextView;

.field public final listView:Landroid/widget/ListView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final widgetTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ListView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/habitrpg/android/habitica/databinding/WidgetTaskListBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcom/habitrpg/android/habitica/databinding/WidgetTaskListBinding;->emptyView:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcom/habitrpg/android/habitica/databinding/WidgetTaskListBinding;->listView:Landroid/widget/ListView;

    .line 5
    iput-object p4, p0, Lcom/habitrpg/android/habitica/databinding/WidgetTaskListBinding;->widgetTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/habitrpg/android/habitica/databinding/WidgetTaskListBinding;
    .locals 4

    const v0, 0x7f0901ac

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const v0, 0x7f0902a4

    .line 2

    const/4 v2, 0x0


    if-eqz v2, :cond_0

    const v0, 0x7f090517

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 4
    new-instance v0, Lcom/habitrpg/android/habitica/databinding/WidgetTaskListBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/habitrpg/android/habitica/databinding/WidgetTaskListBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ListView;Landroid/widget/TextView;)V

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/habitrpg/android/habitica/databinding/WidgetTaskListBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/habitrpg/android/habitica/databinding/WidgetTaskListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/habitrpg/android/habitica/databinding/WidgetTaskListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/habitrpg/android/habitica/databinding/WidgetTaskListBinding;
    .locals 2

    const v0, 0x7f0c0164

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/habitrpg/android/habitica/databinding/WidgetTaskListBinding;->bind(Landroid/view/View;)Lcom/habitrpg/android/habitica/databinding/WidgetTaskListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/habitrpg/android/habitica/databinding/WidgetTaskListBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/habitrpg/android/habitica/databinding/WidgetTaskListBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.class public final Lcom/habitrpg/android/habitica/databinding/ChecklistIndicatorBinding;
.super Ljava/lang/Object;
.source "ChecklistIndicatorBinding.java"

# interfaces
.implements Lb/u/a;


# instance fields
.field public final checkListAllTextView:Landroid/widget/TextView;

.field public final checkListCompletedTextView:Landroid/widget/TextView;

.field public final checklistDivider:Landroid/view/View;

.field public final checklistIndicatorWrapper:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/habitrpg/android/habitica/databinding/ChecklistIndicatorBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcom/habitrpg/android/habitica/databinding/ChecklistIndicatorBinding;->checkListAllTextView:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcom/habitrpg/android/habitica/databinding/ChecklistIndicatorBinding;->checkListCompletedTextView:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcom/habitrpg/android/habitica/databinding/ChecklistIndicatorBinding;->checklistDivider:Landroid/view/View;

    .line 6
    iput-object p5, p0, Lcom/habitrpg/android/habitica/databinding/ChecklistIndicatorBinding;->checklistIndicatorWrapper:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/habitrpg/android/habitica/databinding/ChecklistIndicatorBinding;
    .locals 8

    const v0, 0x7f09010e

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const v0, 0x7f09010f

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v0, 0x7f090114

    .line 3

    const/4 v6, 0x0


    if-eqz v6, :cond_0

    .line 4
    move-object v7, p0

    check-cast v7, Landroid/widget/LinearLayout;

    .line 5
    new-instance p0, Lcom/habitrpg/android/habitica/databinding/ChecklistIndicatorBinding;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v7}, Lcom/habitrpg/android/habitica/databinding/ChecklistIndicatorBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/LinearLayout;)V

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/habitrpg/android/habitica/databinding/ChecklistIndicatorBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/habitrpg/android/habitica/databinding/ChecklistIndicatorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/habitrpg/android/habitica/databinding/ChecklistIndicatorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/habitrpg/android/habitica/databinding/ChecklistIndicatorBinding;
    .locals 2

    const v0, 0x7f0c004a

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/habitrpg/android/habitica/databinding/ChecklistIndicatorBinding;->bind(Landroid/view/View;)Lcom/habitrpg/android/habitica/databinding/ChecklistIndicatorBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/habitrpg/android/habitica/databinding/ChecklistIndicatorBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/habitrpg/android/habitica/databinding/ChecklistIndicatorBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

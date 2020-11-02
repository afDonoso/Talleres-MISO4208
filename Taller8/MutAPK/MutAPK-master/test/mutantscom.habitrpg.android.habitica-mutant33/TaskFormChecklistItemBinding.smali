.class public final Lcom/habitrpg/android/habitica/databinding/TaskFormChecklistItemBinding;
.super Ljava/lang/Object;
.source "TaskFormChecklistItemBinding.java"

# interfaces
.implements Lb/u/a;


# instance fields
.field public final button:Landroid/widget/ImageButton;

.field public final dragGrip:Landroid/widget/ImageView;

.field public final editText:Landroidx/appcompat/widget/AppCompatEditText;

.field private final rootView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatEditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/habitrpg/android/habitica/databinding/TaskFormChecklistItemBinding;->rootView:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/habitrpg/android/habitica/databinding/TaskFormChecklistItemBinding;->button:Landroid/widget/ImageButton;

    .line 4
    iput-object p3, p0, Lcom/habitrpg/android/habitica/databinding/TaskFormChecklistItemBinding;->dragGrip:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcom/habitrpg/android/habitica/databinding/TaskFormChecklistItemBinding;->editText:Landroidx/appcompat/widget/AppCompatEditText;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/habitrpg/android/habitica/databinding/TaskFormChecklistItemBinding;
    .locals 4

    const v0, 0x7f0900de

    .line 1

    const/4 v1, 0x0


    if-eqz v1, :cond_0

    const v0, 0x7f09019d

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    const v0, 0x7f0901a4

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v3, :cond_0

    .line 4
    new-instance v0, Lcom/habitrpg/android/habitica/databinding/TaskFormChecklistItemBinding;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/habitrpg/android/habitica/databinding/TaskFormChecklistItemBinding;-><init>(Landroid/view/View;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatEditText;)V

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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/habitrpg/android/habitica/databinding/TaskFormChecklistItemBinding;
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0c0143

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    invoke-static {p1}, Lcom/habitrpg/android/habitica/databinding/TaskFormChecklistItemBinding;->bind(Landroid/view/View;)Lcom/habitrpg/android/habitica/databinding/TaskFormChecklistItemBinding;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/databinding/TaskFormChecklistItemBinding;->rootView:Landroid/view/View;

    return-object v0
.end method

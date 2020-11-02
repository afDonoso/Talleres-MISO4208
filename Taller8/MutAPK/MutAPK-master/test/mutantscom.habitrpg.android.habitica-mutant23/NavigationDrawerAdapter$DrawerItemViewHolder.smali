.class public final Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "NavigationDrawerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrawerItemViewHolder"
.end annotation


# instance fields
.field private final additionalInfoView:Landroid/widget/TextView;

.field private backgroundTintColor:I

.field private final bubbleView:Landroid/view/View;

.field private final pillView:Landroid/widget/TextView;

.field private tintColor:I

.field private final titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/u/d/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0904c7

    .line 2

    const/4 v0, 0x0


    iput-object v0, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->titleTextView:Landroid/widget/TextView;

    const v0, 0x7f09036c

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->pillView:Landroid/widget/TextView;

    const v0, 0x7f0900d8

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->bubbleView:Landroid/view/View;

    const v0, 0x7f090072

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->additionalInfoView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;Z)V
    .locals 9

    const-string v0, "drawerItem"

    invoke-static {p1, v0}, Lkotlin/u/d/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "itemView"

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06015c

    invoke-static {v1, v2}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const-string v1, "itemView.background"

    invoke-static {p2, v1}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x45

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4
    iget-object p2, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->titleTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    iget v1, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->tintColor:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060097

    invoke-static {v1, v2}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    iget-object p2, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->titleTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {v1, v0}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0601b6

    invoke-static {v1, v2}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->getPillText()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p2, :cond_4

    .line 8
    iget-object p2, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->pillView:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    .line 9
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->getPillText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    .line 12
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    .line 13
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    .line 14
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v6

    .line 15
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->getPillBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {v7, v0}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080218

    invoke-static {v7, v8}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_1
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {v7, v0}, Lkotlin/u/d/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v7, 0x7f0601d1

    invoke-static {v0, v7}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 18
    :cond_4
    iget-object p2, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->pillView:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->getSubtitle()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 20
    iget-object p2, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->additionalInfoView:Landroid/widget/TextView;

    if-eqz p2, :cond_8

    .line 21
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->getSubtitleTextColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->tintColor:I

    :goto_3
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 24
    :cond_7
    iget-object p2, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->additionalInfoView:Landroid/widget/TextView;

    if-eqz p2, :cond_8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    :cond_8
    :goto_4
    iget-object p2, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->bubbleView:Landroid/view/View;

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/habitrpg/android/habitica/ui/menu/HabiticaDrawerItem;->getShowBubble()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public final getBackgroundTintColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->backgroundTintColor:I

    return v0
.end method

.method public final getTintColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->tintColor:I

    return v0
.end method

.method public final setBackgroundTintColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->backgroundTintColor:I

    return-void
.end method

.method public final setTintColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/habitrpg/android/habitica/ui/adapter/NavigationDrawerAdapter$DrawerItemViewHolder;->tintColor:I

    return-void
.end method

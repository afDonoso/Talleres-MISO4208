.class final Lcom/habitrpg/android/habitica/ui/activities/GiftOneGetOneInfoActivity$showGiftSubscriptionDialog$1;
.super Lkotlin/u/d/l;
.source "GiftOneGetOneInfoActivity.kt"

# interfaces
.implements Lkotlin/u/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/habitrpg/android/habitica/ui/activities/GiftOneGetOneInfoActivity;->showGiftSubscriptionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/u/d/l;",
        "Lkotlin/u/c/p<",
        "Lcom/habitrpg/android/habitica/ui/views/dialogs/HabiticaAlertDialog;",
        "Ljava/lang/Integer;",
        "Lkotlin/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $chooseRecipientDialogView:Landroid/view/View;

.field final synthetic this$0:Lcom/habitrpg/android/habitica/ui/activities/GiftOneGetOneInfoActivity;


# direct methods
.method constructor <init>(Lcom/habitrpg/android/habitica/ui/activities/GiftOneGetOneInfoActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/habitrpg/android/habitica/ui/activities/GiftOneGetOneInfoActivity$showGiftSubscriptionDialog$1;->this$0:Lcom/habitrpg/android/habitica/ui/activities/GiftOneGetOneInfoActivity;

    iput-object p2, p0, Lcom/habitrpg/android/habitica/ui/activities/GiftOneGetOneInfoActivity$showGiftSubscriptionDialog$1;->$chooseRecipientDialogView:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/u/d/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/habitrpg/android/habitica/ui/views/dialogs/HabiticaAlertDialog;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/habitrpg/android/habitica/ui/activities/GiftOneGetOneInfoActivity$showGiftSubscriptionDialog$1;->invoke(Lcom/habitrpg/android/habitica/ui/views/dialogs/HabiticaAlertDialog;I)V

    sget-object p1, Lkotlin/p;->a:Lkotlin/p;

    return-object p1
.end method

.method public final invoke(Lcom/habitrpg/android/habitica/ui/views/dialogs/HabiticaAlertDialog;I)V
    .locals 3

    const-string p2, "<anonymous parameter 0>"

    invoke-static {p1, p2}, Lkotlin/u/d/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/habitrpg/android/habitica/ui/activities/GiftOneGetOneInfoActivity$showGiftSubscriptionDialog$1;->$chooseRecipientDialogView:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const v0, 0x7f090503

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-nez v0, :cond_1

    move-object p1, p2

    :cond_1
    check-cast p1, Landroid/widget/EditText;

    .line 3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/habitrpg/android/habitica/ui/activities/GiftOneGetOneInfoActivity$showGiftSubscriptionDialog$1;->this$0:Lcom/habitrpg/android/habitica/ui/activities/GiftOneGetOneInfoActivity;

    const-class v2, Lcom/habitrpg/android/habitica/ui/activities/GiftSubscriptionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "3e532a8fff504fec83819a5aa990fb47"


    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcom/habitrpg/android/habitica/ui/activities/GiftOneGetOneInfoActivity$showGiftSubscriptionDialog$1;->this$0:Lcom/habitrpg/android/habitica/ui/activities/GiftOneGetOneInfoActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/habitrpg/android/habitica/ui/activities/GiftOneGetOneInfoActivity$showGiftSubscriptionDialog$1;->this$0:Lcom/habitrpg/android/habitica/ui/activities/GiftOneGetOneInfoActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

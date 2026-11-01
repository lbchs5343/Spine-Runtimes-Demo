.class public final Lg/hdo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/hdo;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/hdo;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg/hdo;->a:Ljava/lang/Object;

    iput p3, p0, Lg/hdo;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lg/hdo;->c:I

    iput-object p1, p0, Lg/hdo;->b:Ljava/lang/Object;

    iput p2, p0, Lg/hdo;->d:I

    iput-object p3, p0, Lg/hdo;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    iput p4, p0, Lg/hdo;->c:I

    iput-object p1, p0, Lg/hdo;->a:Ljava/lang/Object;

    iput-object p2, p0, Lg/hdo;->b:Ljava/lang/Object;

    iput p3, p0, Lg/hdo;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lg/hdo;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/hdo;->a:Ljava/lang/Object;

    check-cast v0, Lg/jf;

    iget-object v1, p0, Lg/hdo;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget v2, p0, Lg/hdo;->d:I

    invoke-virtual {v0, v2, v1}, Lg/jf;->o(ILandroid/content/Intent;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/hdo;->b:Ljava/lang/Object;

    check-cast v0, Lg/elf;

    const v1, 0x7f09030f

    invoke-virtual {v0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v0, 0x4b1

    iget v1, p0, Lg/hdo;->d:I

    if-eq v1, v0, :cond_2

    const/16 v0, 0x7c7

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x4b2

    if-ne v1, v0, :cond_1

    const v0, 0x7f1203ad

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const v0, 0x7f1203ac

    :goto_1
    iget-object v1, p0, Lg/hdo;->a:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lg/get;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v4, -0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lg/afo;->az(Landroid/view/View;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;Z)Lg/sd;

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/hdo;->b:Ljava/lang/Object;

    check-cast v0, Lg/cfo;

    iget-object v0, v0, Lg/cfo;->c:Lg/gwy;

    iget-object v1, p0, Lg/hdo;->a:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget v2, p0, Lg/hdo;->d:I

    invoke-virtual {v0, v2, v1}, Lg/gwy;->onNavigationEvent(ILandroid/os/Bundle;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/hdo;->b:Ljava/lang/Object;

    check-cast v0, Lg/zo;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lg/hdo;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/IntentSender$SendIntentException;

    const-string v3, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lg/hdo;->d:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/activity/result/a;->j(IILandroid/content/Intent;)Z

    return-void

    :pswitch_3
    iget-object v0, p0, Lg/hdo;->b:Ljava/lang/Object;

    check-cast v0, Lg/zo;

    iget-object v1, p0, Lg/hdo;->a:Ljava/lang/Object;

    check-cast v1, Lg/aoy;

    iget-object v1, v1, Lg/aoy;->h:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/activity/result/a;->c:Ljava/util/HashMap;

    iget v3, p0, Lg/hdo;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, v0, Landroidx/activity/result/a;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/dnr;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lg/dnr;->a:Lg/bez;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, v0, Landroidx/activity/result/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3, v1}, Lg/bez;->v(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v3, v0, Landroidx/activity/result/a;->g:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/activity/result/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lg/hdo;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lg/hdo;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget v2, p0, Lg/hdo;->d:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cl(Landroid/view/View;IZ)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lg/hdo;->a:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lg/hdo;->b:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Typeface;

    iget v2, p0, Lg/hdo;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lg/hdo;->a:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    new-array v1, v1, [I

    iget-object v2, p0, Lg/hdo;->b:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    array-length v5, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_7

    aget-object v7, v0, v6

    invoke-virtual {v3, v7, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    check-cast v2, Lg/aaz;

    iget v3, p0, Lg/hdo;->d:I

    invoke-interface {v2, v3, v0, v1}, Lg/aaz;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

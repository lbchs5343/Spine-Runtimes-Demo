.class public final Lg/get;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/get;->a:I

    iput-object p2, p0, Lg/get;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget v0, p0, Lg/get;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Lg/cwg;

    const/4 v0, 0x2

    iput v0, p1, Lg/cwg;->g:I

    iget-object p1, p1, Lg/cwg;->s:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbse;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbse;->zza(Z)V

    return-void

    :pswitch_1
    const/4 p1, 0x1

    sput-boolean p1, Lg/drp;->a:Z

    iget-object p1, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Lg/drp;

    invoke-virtual {p1}, Lg/drp;->l()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Lc/a/a;

    invoke-virtual {p1}, Lc/a/a;->w()Z

    return-void

    :pswitch_3
    iget-object p1, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->ak:Lg/glz;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lg/glz;->k:Lg/far;

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lg/far;->collapseActionView()Z

    :cond_1
    return-void

    :pswitch_4
    iget-object p1, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Lg/edx;

    invoke-virtual {p1}, Lg/edx;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lg/eib;->bc:Lg/eib;

    invoke-static {v0}, Lg/bfc;->ac(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lg/edx;->ap()V

    :cond_2
    return-void

    :pswitch_5
    iget-object p1, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Lg/fpl;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void

    :pswitch_6
    iget-object p1, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Lg/ebb;

    iget-object v0, p1, Lg/ebb;->s:Lg/fxs;

    sget-object v1, Lg/fxs;->YEAR:Lg/fxs;

    if-ne v0, v1, :cond_3

    sget-object v0, Lg/fxs;->DAY:Lg/fxs;

    invoke-virtual {p1, v0}, Lg/ebb;->v(Lg/fxs;)V

    iget-object v0, p1, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f120336

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    sget-object v2, Lg/fxs;->DAY:Lg/fxs;

    if-ne v0, v2, :cond_4

    invoke-virtual {p1, v1}, Lg/ebb;->v(Lg/fxs;)V

    iget-object v0, p1, Lg/ebb;->f:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f120337

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void

    :pswitch_7
    iget-object p1, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Lg/dmr;

    iget-object v1, p1, Lg/dmr;->d:Lg/elf;

    const p1, 0x7f120202

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "com.android.vending"

    invoke-static {v1, v3, v2}, Lg/eyt;->ab(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    const/high16 v4, 0x10000000

    const-string v5, "android.intent.action.VIEW"

    if-eqz v2, :cond_5

    new-instance v2, Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "market://details?id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    :goto_2
    move-object v2, p1

    goto :goto_3

    :cond_5
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "https://play.google.com/store/apps/details?id="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    goto :goto_2

    :goto_3
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    return-void

    :pswitch_8
    iget-object p1, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Lg/eie;

    iget-object p1, p1, Lg/eie;->g:Ljava/lang/Object;

    check-cast p1, Lg/emr;

    iget-object p1, p1, Lg/emr;->n:Ljava/lang/Object;

    check-cast p1, Lg/aco;

    iget-object p1, p1, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lg/dmr;

    iget-object p1, p1, Lg/dmr;->a:Lf/a/e;

    new-instance v0, Lg/evf;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lg/evf;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lg/cdy;->k(Lg/btp;)V

    return-void

    :pswitch_9
    iget-object p1, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Lg/elf;

    iget-object v0, p1, Lg/elf;->aa:Lg/elf;

    const-string v1, "rated"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object p1, p1, Lg/elf;->aa:Lg/elf;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lg/eyt;->ax(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, Lg/eyt;->ag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :pswitch_a
    iget-object p1, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Lg/baq;

    invoke-virtual {p1}, Lg/baq;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lg/eib;->bc:Lg/eib;

    invoke-static {v0}, Lg/bfc;->ac(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lg/baq;->aq()V

    :cond_6
    return-void

    :pswitch_b
    iget-object p1, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Lg/efx;

    iget-object v0, p1, Lg/efx;->be:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_7

    iget-object p1, p1, Lg/efx;->an:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_7
    return-void

    :pswitch_c
    iget-object p1, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Lg/amy;

    iget-object p1, p1, Lg/amy;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_8
    return-void

    :pswitch_d
    iget-object p1, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Lg/ajf;

    iget-object v0, p1, Lg/ajf;->b:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_9

    iget-object p1, p1, Lg/ajf;->f:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_9
    return-void

    :pswitch_e
    iget-object v0, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast v0, Lg/bgn;

    iget-object v1, v0, Lg/bgn;->y:Landroid/widget/Button;

    if-ne p1, v1, :cond_a

    iget-object v1, v0, Lg/bgn;->k:Landroid/os/Message;

    if-eqz v1, :cond_a

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_4

    :cond_a
    iget-object v1, v0, Lg/bgn;->v:Landroid/widget/Button;

    if-ne p1, v1, :cond_b

    iget-object v1, v0, Lg/bgn;->e:Landroid/os/Message;

    if-eqz v1, :cond_b

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_4

    :cond_b
    iget-object v1, v0, Lg/bgn;->u:Landroid/widget/Button;

    if-ne p1, v1, :cond_c

    iget-object p1, v0, Lg/bgn;->ah:Landroid/os/Message;

    if-eqz p1, :cond_c

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_4

    :cond_c
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    iget-object p1, v0, Lg/bgn;->g:Lg/giy;

    const/4 v1, 0x1

    iget-object v0, v0, Lg/bgn;->x:Lg/fpl;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_f
    iget-object p1, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Lg/gtg;

    invoke-virtual {p1}, Lg/gtg;->m()V

    return-void

    :pswitch_10
    iget-object p1, p0, Lg/get;->b:Ljava/lang/Object;

    check-cast p1, Lg/evr;

    iget-object v0, p1, Lg/evr;->aq:Lg/cuz;

    invoke-virtual {v0, p1}, Lg/cuz;->aa(Lg/evr;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

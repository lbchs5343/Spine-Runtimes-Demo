.class public final synthetic Lg/crx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/bus;


# direct methods
.method public synthetic constructor <init>(Lg/bus;I)V
    .locals 0

    iput p2, p0, Lg/crx;->a:I

    iput-object p1, p0, Lg/crx;->b:Lg/bus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lg/crx;->a:I

    iget-object v0, p0, Lg/crx;->b:Lg/bus;

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    sget p1, Lg/bus;->a:I

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "shizuku_compatibility_mode_enabled"

    invoke-static {p1, v3, v2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {p1}, Lg/ark;->q(Landroid/content/Context;)Lg/ark;

    move-result-object p1

    iget-object v2, p1, Lg/ark;->m:Landroid/os/Handler;

    new-instance v3, Lg/hdk;

    invoke-direct {v3, p1, v1}, Lg/hdk;-><init>(Lg/ark;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v2, Lg/yb;->a:I

    const-string v2, "debug_access_method_chosen"

    invoke-static {p1, v2, v1}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lg/yb;->m(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v1, 0x7f12042f

    invoke-static {p1, v1}, Lg/gm;->e(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lg/bus;->w()V

    return-void

    :pswitch_0
    sget p1, Lg/bus;->a:I

    invoke-virtual {v0}, Lg/bus;->w()V

    iget-object p1, v0, Lg/bus;->m:Lg/bro;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v2, v0, Lg/bus;->f:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lg/bus;->v()V

    goto/16 :goto_1

    :cond_1
    sget-object v2, Lg/gtr;->b:[I

    sget-object v3, Lg/bja;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    packed-switch p1, :pswitch_data_1

    sget-object p1, Lg/tg;->NONE:Lg/tg;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lg/tg;->FINISH:Lg/tg;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lg/tg;->USE:Lg/tg;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lg/tg;->REQUEST_PERMISSION:Lg/tg;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lg/tg;->OPEN_MANAGER:Lg/tg;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lg/tg;->INSTALL:Lg/tg;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v1, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lg/bus;->y()V

    goto :goto_1

    :cond_4
    iget-boolean p1, v0, Lg/bus;->o:Z

    if-eqz p1, :cond_a

    iget-boolean p1, v0, Lg/bus;->h:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, v0, Lg/bus;->l:Lg/ark;

    invoke-virtual {p1}, Lg/ark;->w()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lg/bus;->y()V

    goto :goto_1

    :cond_6
    iput-boolean v1, v0, Lg/bus;->h:Z

    invoke-virtual {v0}, Lg/bus;->w()V

    iget-object p1, v0, Lg/bus;->l:Lg/ark;

    new-instance v1, Lg/hbl;

    invoke-direct {v1, v0}, Lg/hbl;-><init>(Lg/bus;)V

    iget-object v0, p1, Lg/ark;->m:Landroid/os/Handler;

    new-instance v2, Lg/dsf;

    const/16 v3, 0xb

    invoke-direct {v2, p1, v3, v1}, Lg/dsf;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "moe.shizuku.privileged.api"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_a

    :cond_8
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f120430

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Lg/bus;->v()V

    :cond_a
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

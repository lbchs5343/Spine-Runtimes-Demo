.class public final synthetic Lg/cvx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/yb;


# direct methods
.method public synthetic constructor <init>(Lg/yb;I)V
    .locals 0

    iput p2, p0, Lg/cvx;->a:I

    iput-object p1, p0, Lg/cvx;->b:Lg/yb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget p1, p0, Lg/cvx;->a:I

    iget-object v0, p0, Lg/cvx;->b:Lg/yb;

    packed-switch p1, :pswitch_data_0

    iget-object p1, v0, Lg/yb;->d:Lg/fpl;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void

    :pswitch_0
    iget p1, v0, Lg/yb;->f:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    const-string v0, "shizuku_compatibility_mode_enabled"

    const-string v5, "debug_access_method_chosen"

    if-eqz p1, :cond_3

    invoke-static {v3}, Lg/ark;->q(Landroid/content/Context;)Lg/ark;

    move-result-object p1

    invoke-virtual {p1}, Lg/ark;->w()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lg/ark;->x()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lg/ark;->ab()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v3, v0, v1}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {v3, v5, v1}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {v3}, Lg/yb;->m(Landroid/app/Activity;)V

    invoke-static {v3, v4}, Lg/yb;->k(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    invoke-static {v3, v4}, Lg/bus;->s(Landroid/app/Activity;Landroid/os/Bundle;)Z

    goto :goto_1

    :cond_3
    sget p1, Lg/bus;->a:I

    invoke-static {v3, v0, v2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {v3}, Lg/ark;->q(Landroid/content/Context;)Lg/ark;

    move-result-object p1

    iget-object v0, p1, Lg/ark;->m:Landroid/os/Handler;

    new-instance v2, Lg/hdk;

    invoke-direct {v2, p1, v1}, Lg/hdk;-><init>(Lg/ark;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v3, v5, v1}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {v3}, Lg/yb;->m(Landroid/app/Activity;)V

    const-string p1, "settings"

    invoke-virtual {v4, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const p1, 0x7f120184

    invoke-static {v3, p1}, Lg/gm;->c(Landroid/content/Context;I)V

    :cond_4
    invoke-static {v3, v4}, Lg/yb;->k(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

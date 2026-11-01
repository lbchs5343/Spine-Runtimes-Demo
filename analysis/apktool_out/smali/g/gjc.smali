.class public final Lg/gjc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc/b/b;


# direct methods
.method public synthetic constructor <init>(Lc/b/b;I)V
    .locals 0

    iput p2, p0, Lg/gjc;->a:I

    iput-object p1, p0, Lg/gjc;->b:Lc/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget p1, p0, Lg/gjc;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/gjc;->b:Lc/b/b;

    invoke-static {p1}, Lc/b/b;->p(Lc/b/b;)Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x2

    const-string v1, "op_update_freq"

    invoke-static {p2, v0, v1}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    invoke-static {p2, v2, v1}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    if-ne p2, v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    if-ne p2, v1, :cond_2

    :goto_0
    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    if-ne p2, v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lc/b/b;->ab(ILandroid/view/MenuItem;)V

    invoke-virtual {p1}, Lg/ub;->invalidateOptionsMenu()V

    :try_start_0
    invoke-static {p1}, Lc/b/b;->q(Lc/b/b;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "op_updatable_total"

    const-string v0, "op_updatable_low_freq"

    invoke-static {p1, p2, v0}, Lg/dzm;->ah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lg/gjc;->b:Lc/b/b;

    invoke-static {p1}, Lc/b/b;->s(Lc/b/b;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "op_shortcuted"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lg/byh;->ad(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p1}, Lc/b/b;->u(Lc/b/b;)La/a/ab;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg/eyt;->au(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lg/dlb;->c()Ljava/lang/String;

    move-result-object p2

    :cond_4
    const v0, 0x7f120385

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lc/b/b;->y(Lc/b/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lc/b/b;->r(Lc/b/b;)La/a/ab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lc/b/b;->w(Lc/b/b;)La/a/ab;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120388

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f120386

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lc/b/b;

    invoke-static/range {v1 .. v6}, Lg/dov;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f080192

    invoke-static {p1, p2, v0, v2, v1}, Lg/baf;->v(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lg/gjc;->b:Lc/b/b;

    invoke-static {p1}, Lc/b/b;->m(Lc/b/b;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "op_shortcuted"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lg/byh;->ad(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

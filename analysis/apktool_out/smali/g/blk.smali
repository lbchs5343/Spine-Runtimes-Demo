.class public final Lg/blk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/hdb;


# virtual methods
.method public final _bz(Landroid/content/Context;Lg/ert;)Z
    .locals 5

    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p2

    invoke-virtual {p2}, Lg/atf;->j()Lg/fxe$a;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object v1, p2, Lg/fxe$a;->jsonUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lg/fxe$a;->jsonUrl:Ljava/lang/String;

    const v1, 0x7f12047d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120386

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lg/bys;->a:Ljava/lang/String;

    const-string v4, ""

    invoke-static {p2, v1, v4, v2, v3}, Lg/dov;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "isSubtitleShowFullUrl"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v1, v3, p2}, Lg/dov;->b(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    const-string p2, "json_new"

    invoke-static {p1, p2, v0}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    const-string p2, "json"

    invoke-static {p1, p2}, Lg/acr;->ae(Landroid/content/Context;Ljava/lang/String;)Lg/ert;

    move-result-object p2

    if-eqz p2, :cond_1

    iput-boolean v0, p2, Lg/ert;->c:Z

    invoke-static {p1}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "cn.trinea.android.lib.ACTION_TOOL_UPDATE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lg/fzn;->q(Landroid/content/Intent;)V

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v0
.end method

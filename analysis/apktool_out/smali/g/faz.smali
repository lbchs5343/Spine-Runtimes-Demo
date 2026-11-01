.class public final Lg/faz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/hdb;


# virtual methods
.method public final _bz(Landroid/content/Context;Lg/ert;)Z
    .locals 5

    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p2

    invoke-virtual {p2}, Lg/atf;->m()Lg/fxe$e;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lg/fxe$e;->jobsUrl:Ljava/lang/String;

    iget-object p2, p2, Lg/fxe$e;->jobsTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, v0

    move-object v1, p2

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "https://j.codekk.com/"

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const p2, 0x7f120490

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const v2, 0x7f120386

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lg/bys;->a:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, p2, v4, v2, v3}, Lg/dov;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1, v0, p2}, Lg/dov;->b(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

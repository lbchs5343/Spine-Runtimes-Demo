.class public final Lg/cny;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/hdb;


# virtual methods
.method public final _bz(Landroid/content/Context;Lg/ert;)Z
    .locals 7

    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p2

    invoke-virtual {p2}, Lg/atf;->m()Lg/fxe$e;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p2, Lg/fxe$e;->adUrl:Ljava/lang/String;

    iget-object p2, p2, Lg/fxe$e;->adTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p2, v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "https://p.codekk.com/"

    :cond_1
    move-object v2, v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p2, 0x7f12048f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    move-object v3, p2

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    const p2, 0x7f120386

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, ""

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lg/dov;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

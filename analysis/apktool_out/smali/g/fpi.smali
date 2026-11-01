.class public final Lg/fpi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/hdb;


# virtual methods
.method public final _bz(Landroid/content/Context;Lg/ert;)Z
    .locals 7

    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p2

    invoke-virtual {p2}, Lg/atf;->j()Lg/fxe$a;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p2, Lg/fxe$a;->userResearchUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p2, Lg/fxe$a;->userResearchTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120039

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    iget-object v0, p2, Lg/fxe$a;->userResearchTitle:Ljava/lang/String;

    goto :goto_0

    :goto_1
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p2, Lg/fxe$a;->userResearchUrl:Ljava/lang/String;

    const p2, 0x7f120386

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, ""

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lg/dov;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

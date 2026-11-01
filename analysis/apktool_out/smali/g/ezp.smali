.class public final Lg/ezp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/hdb;


# virtual methods
.method public final _bz(Landroid/content/Context;Lg/ert;)Z
    .locals 2

    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p2

    invoke-virtual {p2}, Lg/atf;->m()Lg/fxe$e;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lg/fxe$e;->isShowNewSecond:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lg/gtf;

    const/4 v1, 0x2

    invoke-direct {p2, p1, v1}, Lg/gtf;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Lg/cro;->t(Landroid/content/Context;ZLg/gtf;)Lg/fpl;

    move-result-object p2

    invoke-static {p1, p2}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    return v0

    :cond_1
    :goto_0
    invoke-static {p1}, Lg/cro;->ad(Landroid/content/Context;)V

    return v0
.end method

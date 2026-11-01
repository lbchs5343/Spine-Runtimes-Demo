.class public final Lg/fcs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/hdb;


# virtual methods
.method public final _bz(Landroid/content/Context;Lg/ert;)Z
    .locals 4

    invoke-static {p1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p2

    invoke-virtual {p2}, Lg/atf;->j()Lg/fxe$a;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p2, Lg/fxe$a;->faqUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p2, Lg/fxe$a;->faqTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120028

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lg/fxe$a;->faqTitle:Ljava/lang/String;

    :goto_0
    iget-object p2, p2, Lg/fxe$a;->faqUrl:Ljava/lang/String;

    const v1, 0x7f120386

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lg/bys;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {p2, v0, v3, v1, v2}, Lg/dov;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    check-cast p1, Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lg/dov;->b(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

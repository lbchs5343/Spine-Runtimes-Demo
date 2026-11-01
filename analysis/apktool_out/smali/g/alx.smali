.class public abstract Lg/alx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/res/Configuration;Lg/azt;)V
    .locals 0

    iget-object p1, p1, Lg/azt;->b:Lg/cmn;

    invoke-interface {p1}, Lg/cmn;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/o;->g(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p1

    invoke-static {p0, p1}, Lg/o;->t(Landroid/content/res/Configuration;Landroid/os/LocaleList;)V

    return-void
.end method

.method public static b(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1

    invoke-static {p0}, Lg/o;->aa(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object p0

    invoke-static {p1}, Lg/o;->aa(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0, p0}, Lg/o;->y(Ljava/lang/Object;Landroid/os/LocaleList;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2, v0}, Lg/o;->t(Landroid/content/res/Configuration;Landroid/os/LocaleList;)V

    iget-object p0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p0, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/res/Configuration;)Lg/azt;
    .locals 0

    invoke-static {p0}, Lg/o;->aa(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object p0

    invoke-static {p0}, Lg/o;->u(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg/azt;->d(Ljava/lang/String;)Lg/azt;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lg/azt;)V
    .locals 0

    iget-object p0, p0, Lg/azt;->b:Lg/cmn;

    invoke-interface {p0}, Lg/cmn;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg/o;->g(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p0

    invoke-static {p0}, Lg/o;->f(Landroid/os/LocaleList;)V

    return-void
.end method

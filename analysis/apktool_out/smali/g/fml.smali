.class public abstract Lg/fml;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/kf;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lg/kf;-><init>(I)V

    sput-object v0, Lg/kj;->c:Lg/kf;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 3

    sget-boolean v0, Lg/cyz;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lg/acr;->bu(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p0

    invoke-virtual {p0}, Lg/atf;->m()Lg/fxe$e;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget p0, p0, Lg/fxe$e;->fullAdInterval:I

    :goto_0
    rem-int/2addr p1, p0

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public static b(Lg/efx;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lg/byh;->aj(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120070

    goto :goto_0

    :cond_0
    const v0, 0x7f120071

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lg/byh;->aj(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120076

    goto :goto_0

    :cond_0
    const v0, 0x7f120077

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lg/fml;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lg/dxn;

    if-eqz v0, :cond_0

    check-cast p0, Lg/dxn;

    invoke-virtual {p0}, Lg/cms;->fullScreenAdShow()V

    :cond_0
    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->m()Lg/fxe$e;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lg/fxe$e;->isShowNativeAdForWeb:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "web_b_a_s"

    invoke-static {p0, v3, v0}, Lg/byh;->ad(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lg/acr;->bu(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    sget-boolean p0, Lg/cyz;->c:Z

    if-eqz p0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lg/byh;->aj(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12005c

    goto :goto_0

    :cond_0
    const v0, 0x7f12005d

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lg/efx;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lg/byh;->aj(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12006d

    goto :goto_0

    :cond_0
    const v0, 0x7f12006e

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lg/acr;->bu(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-boolean p0, Lg/cyz;->c:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

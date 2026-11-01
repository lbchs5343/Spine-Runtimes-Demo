.class public final Lg/frr;
.super Lg/zi;
.source "SourceFile"


# virtual methods
.method public final m(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final p(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lg/zi;->a:Ljava/lang/Object;

    :cond_0
    sget-object v0, Lg/zi;->d:Lg/buj;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lg/buj;->e(Lg/zi;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lg/zi;->k(Lg/zi;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

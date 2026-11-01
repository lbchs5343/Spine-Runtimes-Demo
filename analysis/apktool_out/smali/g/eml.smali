.class public final Lg/eml;
.super Lg/clm;
.source "SourceFile"


# virtual methods
.method public final f(Lg/dbv;I)Z
    .locals 1

    if-ltz p2, :cond_0

    iget-object v0, p1, Lg/dbv;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/acw;->bo(Ljava/util/Collection;)I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p1, p2}, Lg/dbv;->f(I)Lg/cng;

    move-result-object p1

    instance-of p1, p1, Lg/auj;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

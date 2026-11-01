.class public abstract Lg/pj;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Lg/dwg;)V
    .locals 0

    return-void
.end method

.method public j(Lg/hed;)V
    .locals 0

    return-void
.end method

.method public k(Lg/cci;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/pj;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

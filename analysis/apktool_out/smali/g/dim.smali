.class public final synthetic Lg/dim;
.super Lg/ecq;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# virtual methods
.method public final g()Lg/eqk;
    .locals 1

    sget-object v0, Lg/bii;->a:Lg/cky;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/cwy;->receiver:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

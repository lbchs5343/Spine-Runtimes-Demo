.class public final Lg/djr;
.super Lg/fpc;
.source "SourceFile"


# virtual methods
.method public final c()Z
    .locals 2

    invoke-super {p0}, Lg/fnk;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MULTI_PROCESS"

    invoke-static {v0}, Lg/bff;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lg/bdj;->a:I

    sget-object v0, Lg/gvy;->e:Lg/fpc;

    invoke-virtual {v0}, Lg/fnk;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lg/fea;->a:Lg/dbp;

    invoke-interface {v0}, Lg/dbp;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->isMultiProcessEnabled()Z

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by the current version of the framework and the current WebView APK"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

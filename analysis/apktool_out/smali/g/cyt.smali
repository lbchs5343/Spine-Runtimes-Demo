.class public abstract Lg/cyt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lg/iz;)Lg/gkm;
    .locals 2

    new-instance v0, Lg/gkm;

    move-object v1, p0

    check-cast v1, Lg/gyj;

    invoke-interface {v1}, Lg/gyj;->getViewModelStore()Lg/wg;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lg/gkm;-><init>(Lg/iz;Lg/wg;)V

    return-object v0
.end method

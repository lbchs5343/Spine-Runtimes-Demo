.class public final Lg/czw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/gtx;


# instance fields
.field public a:Ljava/lang/String;


# virtual methods
.method public ao()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lg/gyr;

    iget-object v1, p0, Lg/czw;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

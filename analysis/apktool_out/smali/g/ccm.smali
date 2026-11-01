.class public abstract Lg/ccm;
.super Lg/lh;
.source "SourceFile"


# instance fields
.field public bp:I


# virtual methods
.method public final bq(I)V
    .locals 0

    return-void
.end method

.method public final br(Lg/eek;)V
    .locals 1

    iget v0, p0, Lg/ccm;->bp:I

    if-nez v0, :cond_0

    iget p1, p1, Lg/ccm;->bp:I

    iput p1, p0, Lg/ccm;->bp:I

    :cond_0
    return-void
.end method

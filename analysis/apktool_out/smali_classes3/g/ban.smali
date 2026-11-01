.class public abstract Lg/ban;
.super Lg/eti;
.source "SourceFile"


# direct methods
.method public static load(Landroid/content/Context;Ljava/lang/String;Lg/elc;Lg/bka;)V
    .locals 0

    const-string p3, "Context cannot be null."

    invoke-static {p0, p3}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "AdUnitId cannot be null."

    invoke-static {p1, p0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "AdManagerAdRequest cannot be null."

    invoke-static {p2, p0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

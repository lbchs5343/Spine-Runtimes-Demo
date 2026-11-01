.class public abstract Lg/cpn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/Menu;Z)V
    .locals 2

    instance-of v0, p0, Lg/ftn;

    if-eqz v0, :cond_0

    check-cast p0, Lg/ftn;

    invoke-virtual {p0, p1}, Lg/ftn;->setGroupDividerEnabled(Z)V

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, Lg/eyo;->p(Landroid/view/Menu;Z)V

    :cond_1
    return-void
.end method

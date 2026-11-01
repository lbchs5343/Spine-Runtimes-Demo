.class public Lg/bip;
.super Lg/bgp;
.source "SourceFile"


# static fields
.field public static d:Z = true


# virtual methods
.method public e(Landroid/view/View;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lg/bli;->e(Landroid/view/View;I)V

    return-void

    :cond_0
    sget-boolean v0, Lg/bip;->d:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p1, p2}, Lg/fmy;->a(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Lg/bip;->d:Z

    :cond_1
    return-void
.end method

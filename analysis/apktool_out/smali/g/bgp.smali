.class public Lg/bgp;
.super Lg/bli;
.source "SourceFile"


# static fields
.field public static b:Z = true


# virtual methods
.method public c(Landroid/view/View;IIII)V
    .locals 1

    sget-boolean v0, Lg/bgp;->b:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lg/eza;->a(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Lg/bgp;->b:Z

    :cond_0
    return-void
.end method

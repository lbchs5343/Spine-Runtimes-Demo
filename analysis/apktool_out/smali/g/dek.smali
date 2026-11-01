.class public abstract Lg/dek;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/vf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lg/vf;->a:Lg/vf;

    sput-object v0, Lg/dek;->a:Lg/vf;

    return-void
.end method

.method public static b(Landroidx/fragment/app/Fragment;)Lg/vf;
    .locals 2

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/v;

    move-result-object v0

    const-string v1, "declaringFragment.parentFragmentManager"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lg/dek;->a:Lg/vf;

    return-object p0
.end method

.method public static c(Lg/crc;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/crc;->a()Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public static final d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    const-string v0, "previousFragmentId"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/fib;

    invoke-direct {v0, p0, p1}, Lg/fib;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-static {v0}, Lg/dek;->c(Lg/crc;)V

    invoke-static {p0}, Lg/dek;->b(Landroidx/fragment/app/Fragment;)Lg/vf;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

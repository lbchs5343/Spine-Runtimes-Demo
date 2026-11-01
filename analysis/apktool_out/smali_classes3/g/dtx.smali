.class public abstract Lg/dtx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final c:Lg/fsu;

.field public d:Lg/fsu;


# direct methods
.method public constructor <init>(Lg/fsu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dtx;->c:Lg/fsu;

    invoke-virtual {p1}, Lg/fsu;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lg/fsu;->i(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fsu;

    iput-object p1, p0, Lg/dtx;->d:Lg/fsu;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/dtx;->c:Lg/fsu;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lg/fsu;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dtx;

    invoke-virtual {p0}, Lg/dtx;->e()Lg/fsu;

    move-result-object v1

    iput-object v1, v0, Lg/dtx;->d:Lg/fsu;

    return-object v0
.end method

.method public final e()Lg/fsu;
    .locals 3

    iget-object v0, p0, Lg/dtx;->d:Lg/fsu;

    invoke-virtual {v0}, Lg/fsu;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/dtx;->d:Lg/fsu;

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/dtx;->d:Lg/fsu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/fjo;->a:Lg/fjo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/fjo;->d(Ljava/lang/Class;)Lg/dxm;

    move-result-object v1

    invoke-interface {v1, v0}, Lg/dxm;->aa(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg/fsu;->w()V

    iget-object v0, p0, Lg/dtx;->d:Lg/fsu;

    return-object v0
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lg/dtx;->d:Lg/fsu;

    invoke-virtual {v0}, Lg/fsu;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/dtx;->c:Lg/fsu;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lg/fsu;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fsu;

    iget-object v1, p0, Lg/dtx;->d:Lg/fsu;

    sget-object v2, Lg/fjo;->a:Lg/fjo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/fjo;->d(Ljava/lang/Class;)Lg/dxm;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lg/dxm;->al(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lg/dtx;->d:Lg/fsu;

    :cond_0
    return-void
.end method

.method public final g()Lg/fsu;
    .locals 2

    invoke-virtual {p0}, Lg/dtx;->e()Lg/fsu;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lg/fsu;->r(Lg/fsu;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lg/egc;

    invoke-direct {v0}, Lg/egc;-><init>()V

    throw v0
.end method

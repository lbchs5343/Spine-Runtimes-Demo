.class public final Lg/fdb;
.super Lg/alm;
.source "SourceFile"


# instance fields
.field public final i:Lg/ao;

.field public final j:Lg/cpq;

.field public final k:Lg/eeo;


# direct methods
.method public constructor <init>(ILg/cpq;Lg/eeo;Lg/ao;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/alm;-><init>(I)V

    iput-object p3, p0, Lg/fdb;->k:Lg/eeo;

    iput-object p2, p0, Lg/fdb;->j:Lg/cpq;

    iput-object p4, p0, Lg/fdb;->i:Lg/ao;

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    iget-boolean p1, p2, Lg/cpq;->e:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lg/fdb;->k:Lg/eeo;

    invoke-virtual {v0, p1}, Lg/eeo;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final d(Lg/fbd;)V
    .locals 2

    iget-object v0, p0, Lg/fdb;->k:Lg/eeo;

    :try_start_0
    iget-object v1, p0, Lg/fdb;->j:Lg/cpq;

    iget-object p1, p1, Lg/fbd;->l:Lg/cqh;

    iget-object v1, v1, Lg/cpq;->b:Ljava/lang/Object;

    check-cast v1, Lg/cpq;

    iget-object v1, v1, Lg/cpq;->a:Ljava/lang/Object;

    check-cast v1, Lg/asz;

    invoke-interface {v1, p1, v0}, Lg/asz;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    invoke-virtual {v0, p1}, Lg/eeo;->b(Ljava/lang/Exception;)V

    return-void

    :goto_1
    invoke-static {p1}, Lg/alm;->b(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/fdb;->h(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :goto_2
    throw p1
.end method

.method public final e(Lg/fbd;)Z
    .locals 0

    iget-object p1, p0, Lg/fdb;->j:Lg/cpq;

    iget-boolean p1, p1, Lg/cpq;->e:Z

    return p1
.end method

.method public final f(Lg/clx;Z)V
    .locals 4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v0, p1, Lg/clx;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lg/fdb;->k:Lg/eeo;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v1, Lg/eeo;->a:Lg/chw;

    new-instance v0, Lg/akj;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v1, v3}, Lg/akj;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lg/fot;->a:Lg/bxc;

    new-instance v1, Lg/err;

    invoke-direct {v1, p1, v0}, Lg/err;-><init>(Ljava/util/concurrent/Executor;Lg/dyt;)V

    iget-object p1, p2, Lg/chw;->i:Lg/ja;

    invoke-virtual {p1, v1}, Lg/ja;->f(Lg/err;)V

    invoke-virtual {p2}, Lg/chw;->n()V

    return-void
.end method

.method public final g(Lg/fbd;)[Lg/cqg;
    .locals 0

    iget-object p1, p0, Lg/fdb;->j:Lg/cpq;

    iget-object p1, p1, Lg/cpq;->a:Ljava/lang/Object;

    check-cast p1, [Lg/cqg;

    return-object p1
.end method

.method public final h(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lg/fdb;->i:Lg/ao;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lg/dsh;

    invoke-direct {v0, p1}, Lg/dmw;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lg/dmw;

    invoke-direct {v0, p1}, Lg/dmw;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    iget-object p1, p0, Lg/fdb;->k:Lg/eeo;

    invoke-virtual {p1, v0}, Lg/eeo;->b(Ljava/lang/Exception;)V

    return-void
.end method

.class public final Lg/drl;
.super Lg/cpk;
.source "SourceFile"

# interfaces
.implements Lg/fjt;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Z

.field public final h:Lg/drl;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z)V
    .locals 1

    invoke-direct {p0}, Lg/cpk;-><init>()V

    iput-object p1, p0, Lg/drl;->a:Landroid/os/Handler;

    iput-boolean p2, p0, Lg/drl;->b:Z

    if-eqz p2, :cond_0

    move-object p2, p0

    goto :goto_0

    :cond_0
    new-instance p2, Lg/drl;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lg/drl;-><init>(Landroid/os/Handler;Z)V

    :goto_0
    iput-object p2, p0, Lg/drl;->h:Lg/drl;

    return-void
.end method


# virtual methods
.method public final d(JLg/gsn;)V
    .locals 4

    new-instance v0, Lg/gfh;

    const/16 v1, 0x10

    invoke-direct {v0, p3, v1, p0}, Lg/gfh;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    move-wide p1, v1

    :cond_0
    iget-object v1, p0, Lg/drl;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lg/ggn;

    invoke-direct {p1, p0, v0}, Lg/ggn;-><init>(Lg/drl;Lg/gfh;)V

    invoke-virtual {p3, p1}, Lg/gsn;->y(Lg/and;)V

    return-void

    :cond_1
    iget-object p1, p3, Lg/gsn;->o:Lg/boj;

    invoke-virtual {p0, p1, v0}, Lg/drl;->j(Lg/boj;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lg/drl;

    if-eqz v0, :cond_0

    check-cast p1, Lg/drl;

    iget-object v0, p1, Lg/drl;->a:Landroid/os/Handler;

    iget-object v1, p0, Lg/drl;->a:Landroid/os/Handler;

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, Lg/drl;->b:Z

    iget-boolean v0, p0, Lg/drl;->b:Z

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lg/drl;->a:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lg/drl;->b:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final i(Lg/boj;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lg/drl;->a:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lg/drl;->j(Lg/boj;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final j(Lg/boj;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' was closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lg/kj;->aa(Lg/boj;Ljava/util/concurrent/CancellationException;)V

    sget-object v0, Lg/uj;->b:Lg/ady;

    invoke-virtual {v0, p1, p2}, Lg/ady;->i(Lg/boj;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lg/uj;->a:Lg/nt;

    sget-object v0, Lg/hcw;->a:Lg/drl;

    if-ne p0, v0, :cond_0

    const-string v0, "Dispatchers.Main"

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v0, Lg/drl;->h:Lg/drl;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v0, v1

    :goto_0
    if-ne p0, v0, :cond_1

    const-string v0, "Dispatchers.Main.immediate"

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lg/drl;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lg/drl;->b:Z

    if-eqz v1, :cond_2

    const-string v1, ".immediate"

    invoke-static {v0, v1}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final w(Lg/boj;)Z
    .locals 1

    iget-boolean p1, p0, Lg/drl;->b:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lg/drl;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

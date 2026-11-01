.class public abstract Lg/bkg;
.super Lg/cpk;
.source "SourceFile"


# instance fields
.field public l:J

.field public m:Z

.field public n:Lg/fbz;


# virtual methods
.method public abstract k()Ljava/lang/Thread;
.end method

.method public final o()V
    .locals 5

    iget-wide v0, p0, Lg/bkg;->l:J

    const-wide v2, 0x100000000L

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lg/bkg;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lg/bkg;->m:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg/bkg;->shutdown()V

    :cond_1
    :goto_0
    return-void
.end method

.method public p(JLg/ghe;)V
    .locals 1

    sget-object v0, Lg/bzr;->t:Lg/bzr;

    invoke-virtual {v0, p1, p2, p3}, Lg/er;->e(JLg/ghe;)V

    return-void
.end method

.method public final q(Lg/fpm;)V
    .locals 1

    iget-object v0, p0, Lg/bkg;->n:Lg/fbz;

    if-nez v0, :cond_0

    new-instance v0, Lg/fbz;

    invoke-direct {v0}, Lg/fbz;-><init>()V

    iput-object v0, p0, Lg/bkg;->n:Lg/fbz;

    :cond_0
    invoke-virtual {v0, p1}, Lg/fbz;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public final r()Z
    .locals 3

    iget-object v0, p0, Lg/bkg;->n:Lg/fbz;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lg/fbz;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lg/fbz;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lg/fpm;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lg/fpm;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public final s(Z)V
    .locals 4

    iget-wide v0, p0, Lg/bkg;->l:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    add-long/2addr v2, v0

    iput-wide v2, p0, Lg/bkg;->l:J

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/bkg;->m:Z

    :cond_1
    return-void
.end method

.method public abstract shutdown()V
.end method

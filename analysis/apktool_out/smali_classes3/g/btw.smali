.class public final Lg/btw;
.super Lg/crf;
.source "SourceFile"


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lg/crf;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/crf;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/crf;->i:Z

    :cond_0
    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/kk;

    invoke-static {p1, v0}, Lg/kk;->c(Ljava/lang/String;Lg/kk;)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-boolean v0, p0, Lg/crf;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/crf;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/crf;->i:Z

    :cond_0
    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/kk;

    invoke-static {v0, p1}, Lg/kk;->j(Lg/kk;I)V

    return-void
.end method

.method public final c()J
    .locals 2

    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/kk;

    invoke-virtual {v0}, Lg/kk;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(ILg/asm;)V
    .locals 1

    iget-boolean v0, p0, Lg/crf;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/crf;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/crf;->i:Z

    :cond_0
    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/kk;

    invoke-static {v0, p1, p2}, Lg/kk;->i(Lg/kk;ILg/asm;)V

    return-void
.end method

.method public final e(Lg/bd;)V
    .locals 1

    iget-boolean v0, p0, Lg/crf;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/crf;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/crf;->i:Z

    :cond_0
    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/kk;

    invoke-virtual {p1}, Lg/crf;->o()Lg/cys;

    move-result-object p1

    check-cast p1, Lg/asm;

    invoke-static {v0, p1}, Lg/kk;->d(Lg/kk;Lg/asm;)V

    return-void
.end method

.method public final f()J
    .locals 2

    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/kk;

    invoke-virtual {v0}, Lg/kk;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g(I)Lg/asm;
    .locals 1

    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/kk;

    invoke-virtual {v0, p1}, Lg/kk;->s(I)Lg/asm;

    move-result-object p1

    return-object p1
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/kk;

    invoke-virtual {v0}, Lg/kk;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lg/eft;
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

    check-cast v0, Lg/ne;

    invoke-static {v0, p1}, Lg/ne;->g(Lg/ne;Ljava/lang/String;)V

    return-void
.end method

.method public final b(J)V
    .locals 1

    iget-boolean v0, p0, Lg/crf;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/crf;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/crf;->i:Z

    :cond_0
    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/ne;

    invoke-static {v0, p1, p2}, Lg/ne;->j(Lg/ne;J)V

    return-void
.end method

.method public final c(J)V
    .locals 1

    iget-boolean v0, p0, Lg/crf;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/crf;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/crf;->i:Z

    :cond_0
    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/ne;

    invoke-static {v0, p1, p2}, Lg/ne;->e(Lg/ne;J)V

    return-void
.end method

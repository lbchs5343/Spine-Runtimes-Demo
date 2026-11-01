.class public final Lg/bd;
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

    check-cast v0, Lg/asm;

    invoke-static {v0, p1}, Lg/asm;->k(Lg/asm;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lg/crf;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/crf;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/crf;->i:Z

    :cond_0
    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/asm;

    invoke-static {v0, p1}, Lg/asm;->e(Lg/asm;Ljava/lang/String;)V

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

    check-cast v0, Lg/asm;

    invoke-static {v0, p1, p2}, Lg/asm;->h(Lg/asm;J)V

    return-void
.end method

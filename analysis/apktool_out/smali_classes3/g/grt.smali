.class public final Lg/grt;
.super Lg/crf;
.source "SourceFile"


# virtual methods
.method public final a()Lg/fzb;
    .locals 1

    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/flt;

    invoke-virtual {v0}, Lg/flt;->e()Lg/fzb;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lg/epg;)V
    .locals 1

    iget-boolean v0, p0, Lg/crf;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/crf;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/crf;->i:Z

    :cond_0
    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    check-cast v0, Lg/flt;

    invoke-virtual {p1}, Lg/crf;->o()Lg/cys;

    move-result-object p1

    check-cast p1, Lg/fzb;

    invoke-static {v0, p1}, Lg/flt;->b(Lg/flt;Lg/fzb;)V

    return-void
.end method

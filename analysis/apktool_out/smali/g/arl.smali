.class public final Lg/arl;
.super Lg/hdc;
.source "SourceFile"


# instance fields
.field public _bm:Lg/ecx;

.field public _bn:Z

.field public a:Lg/ayu;

.field public d:Lg/gif;

.field public y:Z


# virtual methods
.method public final _o()Lg/eek;
    .locals 4

    new-instance v0, Lg/arl;

    iget-object v1, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lg/hdc;->ad:Lg/ayu;

    iget-object v3, p0, Lg/hdc;->ab:Lg/eqp;

    invoke-direct {v0, v2, v3, v1}, Lg/hdc;-><init>(Lg/ayu;Lg/eqp;I)V

    invoke-virtual {p0, v0}, Lg/eek;->am(Lg/eek;)V

    iget-object v1, p0, Lg/arl;->a:Lg/ayu;

    iput-object v1, v0, Lg/arl;->a:Lg/ayu;

    iget-object v1, p0, Lg/arl;->_bm:Lg/ecx;

    iput-object v1, v0, Lg/arl;->_bm:Lg/ecx;

    iget-object v1, p0, Lg/arl;->d:Lg/gif;

    iput-object v1, v0, Lg/arl;->d:Lg/gif;

    iget-boolean v1, p0, Lg/arl;->y:Z

    iput-boolean v1, v0, Lg/arl;->y:Z

    iget-boolean v1, p0, Lg/arl;->_bn:Z

    iput-boolean v1, v0, Lg/arl;->_bn:Z

    return-object v0
.end method

.method public final _p(Lg/eek;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lg/arl;

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Lg/hdc;->_p(Lg/eek;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lg/arl;

    iget-object v0, p0, Lg/arl;->_bm:Lg/ecx;

    iget-object v1, p1, Lg/arl;->_bm:Lg/ecx;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lg/arl;->a:Lg/ayu;

    iget-object v1, p1, Lg/arl;->a:Lg/ayu;

    invoke-virtual {v0, v1}, Lg/ayu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/arl;->d:Lg/gif;

    iget-object v1, p1, Lg/arl;->d:Lg/gif;

    invoke-virtual {v0, v1}, Lg/eek;->_p(Lg/eek;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lg/arl;->y:Z

    iget-boolean v1, p1, Lg/arl;->y:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lg/arl;->_bn:Z

    iget-boolean p1, p1, Lg/arl;->_bn:Z

    if-ne v0, p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final aa()Lg/gsh;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lg/eek;->ag:I

    invoke-static {v1}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": INVOKE_CUSTOM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/eek;->ai:Lg/gks;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v0}, Lg/eek;->at(Ljava/lang/StringBuilder;)Z

    invoke-virtual {p0, v0}, Lg/eek;->al(Ljava/lang/StringBuilder;)V

    const-string v1, "\n handle type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/arl;->_bm:Lg/ecx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n lambda: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/arl;->a:Lg/ayu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n call insn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/arl;->d:Lg/gif;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

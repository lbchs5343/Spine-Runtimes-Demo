.class public final Lg/ago;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cbs;


# instance fields
.field public a:Z

.field public final b:Lg/evq;

.field public final c:Lg/clq;


# direct methods
.method public constructor <init>(Lg/evq;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ago;->b:Lg/evq;

    new-instance p1, Lg/clq;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ago;->c:Lg/clq;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 7

    iget-object v0, p0, Lg/ago;->b:Lg/evq;

    iget-boolean v1, p0, Lg/ago;->a:Z

    if-nez v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lg/ago;->c:Lg/clq;

    iget-wide v2, v1, Lg/clq;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    invoke-interface {v0, v1, v2, v3}, Lg/evq;->f(Lg/clq;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    :try_start_1
    invoke-interface {v0}, Lg/evq;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/ago;->a:Z

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    throw v1

    :cond_3
    :goto_3
    return-void
.end method

.method public final d(I[B)Lg/cbs;
    .locals 1

    const-string v0, "source"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lg/ago;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/ago;->c:Lg/clq;

    invoke-virtual {v0, p1, p2}, Lg/clq;->af(I[B)V

    invoke-virtual {p0}, Lg/ago;->i()Lg/cbs;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()Lg/dme;
    .locals 1

    iget-object v0, p0, Lg/ago;->b:Lg/evq;

    invoke-interface {v0}, Lg/evq;->e()Lg/dme;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lg/clq;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lg/ago;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/ago;->c:Lg/clq;

    invoke-virtual {v0, p1, p2, p3}, Lg/clq;->f(Lg/clq;J)V

    invoke-virtual {p0}, Lg/ago;->i()Lg/cbs;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final flush()V
    .locals 7

    iget-boolean v0, p0, Lg/ago;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/ago;->c:Lg/clq;

    iget-wide v1, v0, Lg/clq;->b:J

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lg/ago;->b:Lg/evq;

    cmp-long v6, v1, v3

    if-lez v6, :cond_0

    invoke-interface {v5, v0, v1, v2}, Lg/evq;->f(Lg/clq;J)V

    :cond_0
    invoke-interface {v5}, Lg/evq;->flush()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Lg/gei;)Lg/cbs;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lg/ago;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/ago;->c:Lg/clq;

    invoke-virtual {v0, p1}, Lg/clq;->o(Lg/gei;)V

    invoke-virtual {p0}, Lg/ago;->i()Lg/cbs;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()Lg/clq;
    .locals 1

    iget-object v0, p0, Lg/ago;->c:Lg/clq;

    return-object v0
.end method

.method public final i()Lg/cbs;
    .locals 6

    iget-boolean v0, p0, Lg/ago;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/ago;->c:Lg/clq;

    invoke-virtual {v0}, Lg/clq;->ao()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v3, p0, Lg/ago;->b:Lg/evq;

    invoke-interface {v3, v0, v1, v2}, Lg/evq;->f(Lg/clq;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lg/ago;->a:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final j(Ljava/lang/String;)Lg/cbs;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lg/ago;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/ago;->c:Lg/clq;

    invoke-virtual {v0, p1}, Lg/clq;->ap(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/ago;->i()Lg/cbs;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(J)Lg/cbs;
    .locals 1

    iget-boolean v0, p0, Lg/ago;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/ago;->c:Lg/clq;

    invoke-virtual {v0, p1, p2}, Lg/clq;->u(J)V

    invoke-virtual {p0}, Lg/ago;->i()Lg/cbs;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(J)Lg/cbs;
    .locals 1

    iget-boolean v0, p0, Lg/ago;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/ago;->c:Lg/clq;

    invoke-virtual {v0, p1, p2}, Lg/clq;->ag(J)V

    invoke-virtual {p0}, Lg/ago;->i()Lg/cbs;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/ago;->b:Lg/evq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lg/ago;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/ago;->c:Lg/clq;

    invoke-virtual {v0, p1}, Lg/clq;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0}, Lg/ago;->i()Lg/cbs;

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write([B)Lg/cbs;
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lg/ago;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/ago;->c:Lg/clq;

    array-length v1, p1

    invoke-virtual {v0, v1, p1}, Lg/clq;->af(I[B)V

    invoke-virtual {p0}, Lg/ago;->i()Lg/cbs;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeByte(I)Lg/cbs;
    .locals 1

    iget-boolean v0, p0, Lg/ago;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/ago;->c:Lg/clq;

    invoke-virtual {v0, p1}, Lg/clq;->al(I)V

    invoke-virtual {p0}, Lg/ago;->i()Lg/cbs;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeInt(I)Lg/cbs;
    .locals 1

    iget-boolean v0, p0, Lg/ago;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/ago;->c:Lg/clq;

    invoke-virtual {v0, p1}, Lg/clq;->r(I)V

    invoke-virtual {p0}, Lg/ago;->i()Lg/cbs;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeShort(I)Lg/cbs;
    .locals 1

    iget-boolean v0, p0, Lg/ago;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/ago;->c:Lg/clq;

    invoke-virtual {v0, p1}, Lg/clq;->ab(I)V

    invoke-virtual {p0}, Lg/ago;->i()Lg/cbs;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

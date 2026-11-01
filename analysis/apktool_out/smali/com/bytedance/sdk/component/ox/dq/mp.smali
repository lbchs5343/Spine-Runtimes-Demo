.class final Lcom/bytedance/sdk/component/ox/dq/mp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/dq/p;


# instance fields
.field public final d:Lcom/bytedance/sdk/component/ox/dq/cd;

.field public final dq:Lcom/bytedance/sdk/component/ox/dq/ox;

.field ox:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/dq/cd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->d:Lcom/bytedance/sdk/component/ox/dq/cd;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->ox:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/ox;->a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/mp;->i()Lcom/bytedance/sdk/component/ox/dq/p;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->ox:Z

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    iget-wide v1, v0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->d:Lcom/bytedance/sdk/component/ox/dq/cd;

    invoke-interface {v3, v0, v1, v2}, Lcom/bytedance/sdk/component/ox/dq/cd;->a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->d:Lcom/bytedance/sdk/component/ox/dq/cd;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/cd;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->ox:Z

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/i;->dq(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public d(Lcom/bytedance/sdk/component/ox/dq/iw;)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->ox:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(Lcom/bytedance/sdk/component/ox/dq/iw;)Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/mp;->i()Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->ox:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/mp;->i()Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->d:Lcom/bytedance/sdk/component/ox/dq/cd;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/cd;->dq()Lcom/bytedance/sdk/component/ox/dq/r;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->ox:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    iget-wide v1, v0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->d:Lcom/bytedance/sdk/component/ox/dq/cd;

    invoke-interface {v3, v0, v1, v2}, Lcom/bytedance/sdk/component/ox/dq/cd;->a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->d:Lcom/bytedance/sdk/component/ox/dq/cd;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/cd;->flush()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->ox:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->mn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->d:Lcom/bytedance/sdk/component/ox/dq/cd;

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-interface {v2, v3, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/cd;->a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ia(I)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->ox:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->ox(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/mp;->i()Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ig(J)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->ox:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/ox/dq/ox;->kk(J)Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/mp;->i()Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->ox:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kk(I)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->ox:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/mp;->i()Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mn(I)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->ox:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->p(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/mp;->i()Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public no(J)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->ox:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/ox/dq/ox;->o(J)Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/mp;->i()Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ox()Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    return-object v0
.end method

.method public ox([B)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->ox:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d([B)Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/mp;->i()Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ox([BII)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->ox:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/ox;->d([BII)Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/mp;->i()Lcom/bytedance/sdk/component/ox/dq/p;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->d:Lcom/bytedance/sdk/component/ox/dq/cd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->ox:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/mp;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/mp;->i()Lcom/bytedance/sdk/component/ox/dq/p;

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

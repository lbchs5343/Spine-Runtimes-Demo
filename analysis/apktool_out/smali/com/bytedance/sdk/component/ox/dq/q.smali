.class final Lcom/bytedance/sdk/component/ox/dq/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/dq/s;


# instance fields
.field public final d:Lcom/bytedance/sdk/component/ox/dq/gh;

.field public final dq:Lcom/bytedance/sdk/component/ox/dq/ox;

.field ox:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/dq/gh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/dq/q;->d:Lcom/bytedance/sdk/component/ox/dq/gh;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->ox:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->ox:Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->d:Lcom/bytedance/sdk/component/ox/dq/gh;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/gh;->close()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->cd()V

    return-void
.end method

.method public d(J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->ox:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    iget-wide v1, v0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/q;->d:Lcom/bytedance/sdk/component/ox/dq/gh;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lcom/bytedance/sdk/component/ox/dq/gh;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteCount < 0: "

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dq(B)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/q;->dq(BJJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public dq(BJJ)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->ox:Z

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    cmp-long v0, p4, p2

    if-ltz v0, :cond_3

    move-wide v3, p2

    :goto_0
    const-wide/16 p2, -0x1

    cmp-long v0, v3, p4

    if-gez v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    move v2, p1

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(BJJ)J

    move-result-wide p4

    cmp-long p1, p4, p2

    if-eqz p1, :cond_0

    return-wide p4

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    iget-wide p4, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    cmp-long v0, p4, v5

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->d:Lcom/bytedance/sdk/component/ox/dq/gh;

    const-wide/16 v7, 0x2000

    invoke-interface {v0, p1, v7, v8}, Lcom/bytedance/sdk/component/ox/dq/gh;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move p1, v2

    move-wide p4, v5

    goto :goto_0

    :cond_2
    :goto_1
    return-wide p2

    :cond_3
    move-wide v5, p4

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p4, "fromIndex="

    const-string p5, " toIndex="

    invoke-static {p2, p3, p4, p5}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/ox/dq/q;->ox:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    iget-wide v3, v2, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->d:Lcom/bytedance/sdk/component/ox/dq/gh;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lcom/bytedance/sdk/component/ox/dq/gh;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    iget-wide v0, v0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J

    move-result-wide p1

    return-wide p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount < 0: "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->d:Lcom/bytedance/sdk/component/ox/dq/gh;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/gh;->dq()Lcom/bytedance/sdk/component/ox/dq/r;

    move-result-object v0

    return-object v0
.end method

.method public dq(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/q;->d:Lcom/bytedance/sdk/component/ox/dq/gh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;)J

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "charset == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/ox/dq/q;->d(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public dq([B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/q;->dq(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq([B)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    iget-wide v3, v2, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    long-to-int v4, v3

    invoke-virtual {v2, p1, v1, v4}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    throw v0
.end method

.method public dq(JLcom/bytedance/sdk/component/ox/dq/iw;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ox/dq/iw;->mn()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/q;->dq(JLcom/bytedance/sdk/component/ox/dq/iw;II)Z

    move-result p1

    return p1
.end method

.method public dq(JLcom/bytedance/sdk/component/ox/dq/iw;II)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->ox:Z

    if-nez v0, :cond_5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-ltz v3, :cond_4

    if-ltz p4, :cond_4

    if-ltz p5, :cond_4

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ox/dq/iw;->mn()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_3

    int-to-long v3, v0

    add-long/2addr v3, p1

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/bytedance/sdk/component/ox/dq/q;->d(J)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(J)B

    move-result v1

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(I)B

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/q;->s(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fw()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/q;->d:Lcom/bytedance/sdk/component/ox/dq/gh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;)J

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->fw()[B

    move-result-object v0

    return-object v0
.end method

.method public ia()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/q;->dq(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->ia()B

    move-result v0

    return v0
.end method

.method public ia(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->ox:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    iget-wide v3, v2, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->d:Lcom/bytedance/sdk/component/ox/dq/gh;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lcom/bytedance/sdk/component/ox/dq/gh;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->ia(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ig()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/q;->dq(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->ig()I

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->ox:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iw()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/q$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ox/dq/q$1;-><init>(Lcom/bytedance/sdk/component/ox/dq/q;)V

    return-object v0
.end method

.method public kk()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/q;->dq(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->kk()S

    move-result v0

    return v0
.end method

.method public mn(J)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/ox/dq/q;->dq(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/ox/dq/ox;->mn(J)[B

    move-result-object p1

    return-object p1
.end method

.method public mp()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/q;->dq(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Lcom/bytedance/sdk/component/ox/dq/q;->d(J)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(J)B

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-le v3, v4, :cond_2

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x66

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    const/16 v4, 0x46

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v0, "Expected leading [0-9a-fA-F] character but was %#x"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->mp()J

    move-result-wide v0

    return-wide v0
.end method

.method public no()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/q;->dq(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->no()S

    move-result v0

    return v0
.end method

.method public o()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/q;->dq(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->o()I

    move-result v0

    return v0
.end method

.method public ox(J)Lcom/bytedance/sdk/component/ox/dq/iw;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/ox/dq/q;->dq(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/ox/dq/ox;->ox(J)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object p1

    return-object p1
.end method

.method public ox()Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    iget-wide v1, v0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/q;->d:Lcom/bytedance/sdk/component/ox/dq/gh;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lcom/bytedance/sdk/component/ox/dq/gh;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public s(J)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    move-wide v10, v2

    goto :goto_0

    :cond_0
    add-long v4, p1, v0

    move-wide v10, v4

    :goto_0
    const/16 v7, 0xa

    const-wide/16 v8, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/bytedance/sdk/component/ox/dq/q;->dq(BJJ)J

    move-result-wide v4

    const-wide/16 v7, -0x1

    cmp-long v9, v4, v7

    if-eqz v9, :cond_1

    iget-object p1, v6, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {p1, v4, v5}, Lcom/bytedance/sdk/component/ox/dq/ox;->iw(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    cmp-long v4, v10, v2

    if-gez v4, :cond_2

    invoke-virtual {p0, v10, v11}, Lcom/bytedance/sdk/component/ox/dq/q;->d(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v6, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    sub-long v3, v10, v0

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    add-long/2addr v0, v10

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/q;->d(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, v10, v11}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object p1, v6, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {p1, v10, v11}, Lcom/bytedance/sdk/component/ox/dq/ox;->iw(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v1, Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/ox/dq/ox;-><init>()V

    iget-object v0, v6, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    const-wide/16 v2, 0x20

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;JJ)Lcom/bytedance/sdk/component/ox/dq/ox;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: limit="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v3

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->q()Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/dq/iw;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v6, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "limit < 0: "

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->ox:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/q;->d:Lcom/bytedance/sdk/component/ox/dq/gh;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/q;->dq:Lcom/bytedance/sdk/component/ox/dq/ox;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/ox/dq/gh;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/q;->d:Lcom/bytedance/sdk/component/ox/dq/gh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

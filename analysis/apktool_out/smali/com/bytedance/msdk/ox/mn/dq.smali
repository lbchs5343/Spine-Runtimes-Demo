.class public Lcom/bytedance/msdk/ox/mn/dq;
.super Ljava/lang/Object;


# direct methods
.method private static dq(Ljava/util/List;)Lcom/bytedance/msdk/d/s;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)",
            "Lcom/bytedance/msdk/d/s;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/d/s;

    if-nez v0, :cond_1

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->z()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->z()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static dq(Lcom/bytedance/msdk/ox/s/dq/d;Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/ox/s/dq/d;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;Z)V"
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/bytedance/msdk/ox/mn/dq;->dq(Ljava/util/List;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->u()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/msdk/ox/s/dq/d;->ox(J)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v1

    const/4 v10, 0x1

    xor-int/lit8 v6, v1, 0x1

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->ir()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->op()J

    move-result-wide v7

    sub-long/2addr v3, v7

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object v5

    iget-object v5, v5, Lcom/bytedance/msdk/core/no/o;->dq:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v7, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object p1

    iget-boolean v8, p1, Lcom/bytedance/msdk/core/no/o;->s:Z

    move v9, p2

    invoke-static/range {v0 .. v9}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;JLjava/lang/String;ZIZZ)V

    invoke-virtual {p0, v10}, Lcom/bytedance/msdk/ox/s/dq/d;->p(Z)V

    :cond_2
    :goto_1
    return-void
.end method

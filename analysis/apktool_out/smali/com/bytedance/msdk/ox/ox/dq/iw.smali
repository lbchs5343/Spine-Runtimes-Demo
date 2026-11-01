.class public Lcom/bytedance/msdk/ox/ox/dq/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/ox/dq/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dq(Lcom/bytedance/msdk/ox/s/dq/d;I)V
    .locals 7

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object v0

    iget-object v4, v0, Lcom/bytedance/msdk/core/no/o;->dq:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;)V
    .locals 9

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/d;->o()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/core/kk/mp;->ia(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "TMe"

    const-string v4, ""

    if-nez v2, :cond_2

    const-string p1, "\u5e7f\u544a\u4f4d \u8bf7\u6c42\u89e6\u53d1\u6b21\u6570\u62e6\u622a............"

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/core/kk/mp;->iw(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    new-instance v1, Lcom/bytedance/msdk/api/d/d;

    const v2, 0xcd169

    invoke-static {v2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    iget-object v5, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    :cond_1
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/bytedance/msdk/api/d/d;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, v1, Lcom/bytedance/msdk/api/dq;->dq:I

    invoke-direct {p0, v0, p1}, Lcom/bytedance/msdk/ox/ox/dq/iw;->dq(Lcom/bytedance/msdk/ox/s/dq/d;I)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/bytedance/msdk/core/kk/mp;->ox(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v2

    if-nez v2, :cond_4

    const-string p1, "\u5e7f\u544a\u4f4d \u8bf7\u6c42\u89e6\u53d1\u65f6\u95f4\u95f4\u9694\u62e6\u622a............"

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bytedance/msdk/core/kk/mp;->s(Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/kk;

    move-result-object p1

    new-instance v2, Lcom/bytedance/msdk/api/d/ox;

    const v3, 0xcd16a

    invoke-static {v3}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/bytedance/msdk/core/kk/mp;->dq(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/kk;->o()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-direct {v2, v3, v5, v1, v4}, Lcom/bytedance/msdk/api/d/ox;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, v2, Lcom/bytedance/msdk/api/dq;->dq:I

    invoke-direct {p0, v0, p1}, Lcom/bytedance/msdk/ox/ox/dq/iw;->dq(Lcom/bytedance/msdk/ox/s/dq/d;I)V

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_4
    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq(Lcom/bytedance/msdk/ox/s/dq/d;)V

    return-void
.end method

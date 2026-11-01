.class public Lcom/bytedance/msdk/ox/ox/dq/ig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/ox/dq/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 8

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->ce()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/msdk/core/fw/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/bytedance/msdk/api/dq/d;->p(I)V

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/bytedance/msdk/core/fw/dq;->dq(Lcom/bytedance/msdk/core/no/d;Ljava/lang/String;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/core/no/d;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/bytedance/msdk/dq/s/s;->dq(Lcom/bytedance/msdk/core/no/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u6d4b\u8bd5\u5de5\u5177\u52a0\u8f7d\u5e7f\u544a........rit_id:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,slot_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result p1

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object p1

    iget-object v5, p1, Lcom/bytedance/msdk/core/no/o;->dq:Ljava/lang/String;

    const v6, 0x13c74

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    new-instance p1, Lcom/bytedance/msdk/api/d/dq;

    const v1, 0x13c74

    invoke-static {v1}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq(Lcom/bytedance/msdk/ox/s/dq/d;)V

    return-void
.end method

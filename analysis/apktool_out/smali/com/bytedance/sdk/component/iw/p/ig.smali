.class public Lcom/bytedance/sdk/component/iw/p/ig;
.super Lcom/bytedance/sdk/component/iw/p/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/iw/p/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Ljava/lang/String;
    .locals 1

    const-string v0, "raw_cache"

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/ox/ox;)V
    .locals 3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->r()Lcom/bytedance/sdk/component/iw/ox/iw;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->i()Lcom/bytedance/sdk/component/iw/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/iw/ox/iw;->d(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/gh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->iw()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/iw/dq;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/iw/p/iw;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/iw/p/iw;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z

    return-void

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/component/iw/p/d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/iw/p/d;-><init>([BLcom/bytedance/sdk/component/iw/iw;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z

    return-void
.end method

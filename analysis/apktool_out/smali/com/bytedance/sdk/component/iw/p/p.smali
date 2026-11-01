.class public Lcom/bytedance/sdk/component/iw/p/p;
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

    const-string v0, "cache_policy"

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/ox/ox;)V
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->i()Lcom/bytedance/sdk/component/iw/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/d;->ox()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/iw/p/o;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/iw/p/o;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/d;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/component/iw/p/iw;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/iw/p/iw;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z

    return-void

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/iw/p/no;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/iw/p/no;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z

    return-void
.end method

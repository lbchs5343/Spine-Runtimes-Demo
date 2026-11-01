.class Lcom/bytedance/sdk/openadsdk/core/gh/ia;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/dq/dq/d;


# instance fields
.field dq:Lcom/bytedance/sdk/component/kk/d/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/kk/d/ox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ia;->dq:Lcom/bytedance/sdk/component/kk/d/ox;

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/component/ia/dq/dq/s;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ia;->dq:Lcom/bytedance/sdk/component/kk/d/ox;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/d/ox;->dq()Lcom/bytedance/sdk/component/kk/d;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/kk;-><init>(Lcom/bytedance/sdk/component/kk/d;)V

    return-object v1
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ia;->dq:Lcom/bytedance/sdk/component/kk/d/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ia;->dq:Lcom/bytedance/sdk/component/kk/d/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.class public Lcom/bytedance/sdk/openadsdk/kk/dq;
.super Lcom/bytedance/sdk/component/dq/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/e;-><init>()V

    return-void
.end method


# virtual methods
.method public ox()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/e;->kk:Lcom/bytedance/sdk/component/mp/dq;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq()Lcom/bytedance/sdk/component/adexpress/s/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/dq/e;->kk:Lcom/bytedance/sdk/component/mp/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/component/dq/e;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, v2}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq(Lcom/bytedance/sdk/component/mp/dq;Lcom/bytedance/sdk/component/dq/e;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq()Lcom/bytedance/sdk/component/adexpress/s/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/dq/e;->kk:Lcom/bytedance/sdk/component/mp/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/component/dq/e;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq(Lcom/bytedance/sdk/component/mp/dq;Ljava/lang/String;)V

    return-void
.end method

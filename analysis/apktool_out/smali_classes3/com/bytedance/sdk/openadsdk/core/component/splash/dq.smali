.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;
.super Ljava/lang/Object;


# instance fields
.field private dq:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v1, 0x125c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;->dq:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;->dq()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 2

    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v1, 0x125c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;->dq:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;->dq:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
    .locals 2

    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v1, 0x125c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;->dq:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;->dq:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;

    return-void
.end method

.method public ox()Z
    .locals 3

    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v1, 0x125c

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;->dq:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;->dq:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;

    return-void
.end method

.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lg/gii;


# instance fields
.field private dq:Lcom/bytedance/sdk/component/utils/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/utils/i;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/no;->s()Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v1}, Lcom/bytedance/sdk/component/utils/i;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw;->dq:Lcom/bytedance/sdk/component/utils/i;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw;->dq:Lcom/bytedance/sdk/component/utils/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->d()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw;->dq:Lcom/bytedance/sdk/component/utils/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->dq()Z

    :cond_0
    return-void
.end method

.method public dq(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw;->dq:Lcom/bytedance/sdk/component/utils/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/utils/i;->dq(F)V

    :cond_0
    return-void
.end method

.method public dq(Lg/dry;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw;->dq:Lcom/bytedance/sdk/component/utils/i;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/iw;Lg/dry;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/i;->dq(Lcom/bytedance/sdk/component/utils/i$dq;)V

    :cond_0
    return-void
.end method

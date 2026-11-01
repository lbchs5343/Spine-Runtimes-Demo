.class Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/fw/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$5;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$5;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$5;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;I)V

    :cond_0
    return-void
.end method

.method public dq(I)V
    .locals 0

    return-void
.end method

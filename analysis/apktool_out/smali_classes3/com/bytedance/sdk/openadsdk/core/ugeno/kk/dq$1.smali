.class Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/le/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;)Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;)Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;->dq(I)V

    :cond_0
    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->dq(Lorg/json/JSONObject;)V

    return-void
.end method

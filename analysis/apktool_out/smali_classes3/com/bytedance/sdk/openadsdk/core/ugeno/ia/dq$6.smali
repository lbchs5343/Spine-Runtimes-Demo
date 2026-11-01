.class Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->dq(Lg/dlv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

.field final synthetic dq:Lg/dlv;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;Ljava/lang/String;Lg/dlv;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;->dq:Lg/dlv;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->q:Lorg/json/JSONObject;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ds()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/le/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/fw/ox;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-void
.end method

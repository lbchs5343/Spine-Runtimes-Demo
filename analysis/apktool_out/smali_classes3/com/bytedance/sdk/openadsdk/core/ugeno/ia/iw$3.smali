.class Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$3;
.super Ljava/lang/Object;

# interfaces
.implements Lg/cal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->d(Lorg/json/JSONObject;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lg/dlv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/dlv;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/p;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/p;->iw(Lg/dlv;)V

    :cond_0
    return-void
.end method

.method public dq(Lg/dlv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/dlv;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$3;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/p;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/p;->s(Lg/dlv;)V

    :cond_0
    return-void
.end method

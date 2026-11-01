.class Lcom/bytedance/msdk/ox/dq/dq/p$1;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/ia;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/dq/dq/p;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/ox/dq/dq/p;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/dq/dq/p;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/dq/dq/p$1;->d:Lcom/bytedance/msdk/ox/dq/dq/p;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/dq/dq/p$1;->dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/iw;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ia;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/p$1;->dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/iw;->dq()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/p$1;->dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/iw;

    new-instance v1, Lcom/bytedance/msdk/dq/p/dq/p/s;

    invoke-direct {v1, p1}, Lcom/bytedance/msdk/dq/p/dq/p/s;-><init>(Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/iw;->dq(Lcom/bytedance/sdk/openadsdk/mediation/dq/d/ox;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ox()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

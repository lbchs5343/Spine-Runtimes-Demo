.class Lcom/bytedance/msdk/ox/p/iw$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/p/iw$3;->dq(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/msdk/api/p/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/ox/p/iw$3;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/d/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/iw$3;Lcom/bytedance/sdk/openadsdk/f/d/d/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/iw$3$1;->d:Lcom/bytedance/msdk/ox/p/iw$3;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/p/iw$3$1;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3$1;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ia;->dq()V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/mn;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3$1;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/msdk/ox/p/iw$3$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/bytedance/msdk/ox/p/iw$3$1$1;-><init>(Lcom/bytedance/msdk/ox/p/iw$3$1;Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bytedance/msdk/api/p/mn;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/ia;->dq(Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_0
    return-void
.end method

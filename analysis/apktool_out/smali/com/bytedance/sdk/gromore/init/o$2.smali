.class Lcom/bytedance/sdk/gromore/init/o$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/gromore/init/o;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/ox;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/ox/p/kk;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/ox;

.field final synthetic ox:Lcom/bytedance/sdk/gromore/init/o;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/init/o;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/ox;Lcom/bytedance/msdk/ox/p/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/init/o$2;->ox:Lcom/bytedance/sdk/gromore/init/o;

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/init/o$2;->dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/ox;

    iput-object p3, p0, Lcom/bytedance/sdk/gromore/init/o$2;->d:Lcom/bytedance/msdk/ox/p/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/o$2;->dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/ox;

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/bytedance/msdk/api/dq;->dq:I

    iget-object p1, p1, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/ox;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/o$2;->dq:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/ox;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/gromore/init/o$2;->d:Lcom/bytedance/msdk/ox/p/kk;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/dq;-><init>(Lcom/bytedance/msdk/ox/p/kk;)V

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d/d;)V

    :cond_0
    return-void
.end method

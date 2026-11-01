.class Lcom/bytedance/msdk/core/admanager/ox$3$1$1;
.super Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/ox$3$1;->dq(Lcom/bytedance/msdk/api/p/mn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/admanager/ox$3$1;

.field final synthetic dq:Lcom/bytedance/msdk/api/p/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/ox$3$1;Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bytedance/msdk/api/p/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/ox$3$1$1;->d:Lcom/bytedance/msdk/core/admanager/ox$3$1;

    iput-object p3, p0, Lcom/bytedance/msdk/core/admanager/ox$3$1$1;->dq:Lcom/bytedance/msdk/api/p/mn;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ox$3$1$1;->dq:Lcom/bytedance/msdk/api/p/mn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/mn;->dq()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/ox$3$1$1;->dq:Lcom/bytedance/msdk/api/p/mn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/mn;->d()V

    :cond_0
    return-void
.end method

.method public dq(ILjava/lang/String;Z)V
    .locals 0

    iget-object p3, p0, Lcom/bytedance/msdk/core/admanager/ox$3$1$1;->dq:Lcom/bytedance/msdk/api/p/mn;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p2}, Lcom/bytedance/msdk/api/p/mn;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

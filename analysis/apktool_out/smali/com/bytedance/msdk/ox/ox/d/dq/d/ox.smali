.class public Lcom/bytedance/msdk/ox/ox/d/dq/d/ox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/ox/ox/d/dq/d/ox$dq;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ZLcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/msdk/ox/ox/d/dq/d;)V
    .locals 2

    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ox$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p4, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ox$1;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/ox;Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bytedance/msdk/ox/ox/d/dq/d;Z)V

    invoke-virtual {p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;)V

    :cond_1
    :goto_0
    return-void
.end method

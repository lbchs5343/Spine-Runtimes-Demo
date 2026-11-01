.class public Lcom/bytedance/msdk/ox/ox/d/dq/d/kk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/ox/ox/d/dq/d/kk$dq;
    }
.end annotation


# instance fields
.field private dq:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/kk;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/kk;->dq:Z

    return p0
.end method


# virtual methods
.method public dq(ZLcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/msdk/ox/ox/d/dq/d;)V
    .locals 1

    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/kk;->dq:Z

    new-instance p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/kk$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p4}, Lcom/bytedance/msdk/ox/ox/d/dq/d/kk$1;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/kk;Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bytedance/msdk/ox/ox/d/dq/d;)V

    invoke-virtual {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;)V

    :cond_1
    :goto_0
    return-void
.end method

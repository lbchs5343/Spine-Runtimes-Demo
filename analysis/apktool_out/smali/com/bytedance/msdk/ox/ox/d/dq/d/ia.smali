.class public Lcom/bytedance/msdk/ox/ox/d/dq/d/ia;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia;Ljava/util/List;Lcom/bytedance/msdk/ox/ox/d/dq/d;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia;->dq(Ljava/util/List;Lcom/bytedance/msdk/ox/ox/d/dq/d;Z)V

    return-void
.end method

.method private dq(Ljava/util/List;Lcom/bytedance/msdk/ox/ox/d/dq/d;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/f/d/d/no;",
            ">;",
            "Lcom/bytedance/msdk/ox/ox/d/dq/d;",
            "Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    const-string v0, "PangleNativeAd_nativeSupportRenderControl_adNum:"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v10, p2

    move v7, p3

    invoke-direct/range {v0 .. v10}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia;Lcom/bykv/vk/openvk/api/proto/Bridge;JLjava/util/List;Lcom/bytedance/sdk/openadsdk/f/d/d/no;ZLjava/util/concurrent/atomic/AtomicInteger;ILcom/bytedance/msdk/ox/ox/d/dq/d;)V

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->dq(Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/ox;)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->k()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public dq(ZLcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/msdk/ox/ox/d/dq/d;)V
    .locals 6

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$1;

    const/4 v2, 0x0

    move-object v1, p0

    move v5, p1

    move-object v4, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$1;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia;Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bytedance/msdk/ox/ox/d/dq/d;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Z)V

    invoke-virtual {p2, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V

    :cond_1
    :goto_0
    return-void
.end method

.class public Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;
.super Lcom/bytedance/sdk/component/dq/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/dq/p<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private dq:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/c;",
            ">;"
        }
    .end annotation
.end field

.field private ox:Lcom/bytedance/sdk/openadsdk/core/fw/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/p;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;->dq:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/dq/p;->dq(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static dq(Lcom/bytedance/sdk/component/dq/fw;Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw$1;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    const-string p1, "getNetworkData"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/p$d;)Lcom/bytedance/sdk/component/dq/fw;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/dq/p;->dq(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic dq(Ljava/lang/Object;Lcom/bytedance/sdk/component/dq/iw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)V

    return-void
.end method

.method public dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;->dq:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/c;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/dq/p;->ox()V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;J)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;->ox:Lcom/bytedance/sdk/openadsdk/core/fw/ox;

    if-eqz p1, :cond_1

    const-string v0, "is_first_request"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/playable/p;->dq()Lcom/bytedance/sdk/openadsdk/core/playable/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;->ox:Lcom/bytedance/sdk/openadsdk/core/fw/ox;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/playable/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/fw/ox;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;->ox:Lcom/bytedance/sdk/openadsdk/core/fw/ox;

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/fw/ox;)V

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.class public Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;
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

.field private ox:Lcom/bytedance/sdk/openadsdk/core/fw/iw;

.field private p:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/p;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;->dq:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;->p:J

    return-wide v0
.end method

.method public static dq(Lcom/bytedance/sdk/component/dq/fw;Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$1;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    const-string p1, "requestVideoDelayCallback"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/p$d;)Lcom/bytedance/sdk/component/dq/fw;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;Ljava/lang/Object;)V
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

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)V

    return-void
.end method

.method public dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;->dq:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/c;

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;->ox:Lcom/bytedance/sdk/openadsdk/core/fw/iw;

    const-string v0, "delay"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_1

    return-void

    :cond_1
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;->p:J

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/c;->ox()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/c;->ox()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/kk;->iw()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;->ox:Lcom/bytedance/sdk/openadsdk/core/fw/iw;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/fw/iw;->dq()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/bl;->ox:Lcom/bytedance/sdk/openadsdk/core/fw/iw;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Lcom/bytedance/sdk/openadsdk/core/fw/iw;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/dq/p;->ox()V

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.class public Lcom/bytedance/sdk/openadsdk/kk/dq/iw;
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
.field private dq:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/c;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/p;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kk/dq/iw;->dq:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/dq/fw;Lcom/bytedance/sdk/openadsdk/core/c;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/kk/dq/iw$1;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/kk/dq/iw$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/c;)V

    const-string p1, "openPrivacy"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/p$d;)Lcom/bytedance/sdk/component/dq/fw;

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

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/kk/dq/iw;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)V

    return-void
.end method

.method public dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/kk/dq/iw;->dq:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/c;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/c;->kk()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/dq/iw;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/c;->wn()V

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

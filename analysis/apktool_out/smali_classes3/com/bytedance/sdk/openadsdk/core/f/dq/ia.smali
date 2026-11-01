.class public Lcom/bytedance/sdk/openadsdk/core/f/dq/ia;
.super Lcom/bytedance/sdk/component/dq/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/dq/s<",
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

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/s;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ia;->dq:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/dq/fw;Lcom/bytedance/sdk/openadsdk/core/c;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ia;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/dq/ia;-><init>(Lcom/bytedance/sdk/openadsdk/core/c;)V

    const-string p1, "render_button"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/dq/fw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/s;)Lcom/bytedance/sdk/component/dq/fw;

    return-void
.end method


# virtual methods
.method public bridge synthetic dq(Ljava/lang/Object;Lcom/bytedance/sdk/component/dq/iw;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/dq/ia;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ia;->dq:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ia;->dq:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    :try_start_0
    const-string p2, "is_direct_download"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ia;->dq:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/c;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c;->mp(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ia;->dq:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/c;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/c;->no()Lcom/bytedance/sdk/openadsdk/core/d/s;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/d/s;->d()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/ia;->dq:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/c;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c;->mp(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

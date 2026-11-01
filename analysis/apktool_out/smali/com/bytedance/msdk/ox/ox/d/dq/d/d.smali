.class public abstract Lcom/bytedance/msdk/ox/ox/d/dq/d/d;
.super Lcom/bytedance/msdk/ox/ox/d/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/dq/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    return-void
.end method


# virtual methods
.method public dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/u;
    .locals 2

    invoke-static {p1}, Lcom/bytedance/sdk/gromore/init/DispatchAdSdkInitializerHolder;->getCsjLoader(Landroid/content/Context;)Lcom/bykv/vk/openvk/api/proto/Loader;

    move-result-object p1

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/u;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/u;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const-string v1, "ClassCastException\uff1aload ad fail loader is null"

    invoke-direct {p1, v1}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-object v0

    :cond_1
    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const-string v1, "ClassCastException\uff1aload ad fail loader is not TTAdNativeImpl"

    invoke-direct {p1, v1}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-object v0
.end method

.method public dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/gromore/init/dq;->ox()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "0.0"

    return-object p1
.end method

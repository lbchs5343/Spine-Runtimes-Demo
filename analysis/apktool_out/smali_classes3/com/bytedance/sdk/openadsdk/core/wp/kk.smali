.class public abstract Lcom/bytedance/sdk/openadsdk/core/wp/kk;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract d(Landroid/content/Context;)Lorg/json/JSONObject;
.end method

.method public abstract d()Z
.end method

.method public abstract dq(ILcom/bytedance/sdk/openadsdk/core/wp/ia;)V
.end method

.method public dq(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/wp/kk;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/wp/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ats/AutoService;->dq(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/wp/ox;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/wp/ox;->ox()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/wp/kk;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/wp/kk$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/wp/kk$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/wp/kk;Lorg/json/JSONObject;)V

    const-string v2, "common"

    invoke-interface {v0, v2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/wp/ox;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    :cond_2
    :goto_0
    return-void
.end method

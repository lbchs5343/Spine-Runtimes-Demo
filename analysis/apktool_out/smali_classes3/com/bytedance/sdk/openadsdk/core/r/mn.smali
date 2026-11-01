.class public Lcom/bytedance/sdk/openadsdk/core/r/mn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;
    }
.end annotation


# static fields
.field private static d:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

.field private static dq:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

.field private static ox:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;


# direct methods
.method public static d()Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/r/mn;->d:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;-><init>(Lorg/json/JSONObject;)V

    :cond_0
    return-object v0
.end method

.method public static d(Lcom/bytedance/sdk/component/mn/dq;)V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/r/mn;->dq:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    if-eqz v0, :cond_0

    const-string v1, "cache_strategy_reward"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/r/mn;->d:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    if-eqz v0, :cond_1

    const-string v1, "cache_strategy_full"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/r/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object p0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/r/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->dq()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cache_strategy_splash"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/r/mn;->dq:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;-><init>(Lorg/json/JSONObject;)V

    :cond_0
    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/component/mn/dq;)V
    .locals 3

    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "cache_strategy_reward"

    invoke-interface {p0, v2, v0}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;-><init>(Lorg/json/JSONObject;)V

    sput-object v2, Lcom/bytedance/sdk/openadsdk/core/r/mn;->dq:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "cache_strategy_full"

    invoke-interface {p0, v2, v0}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;-><init>(Lorg/json/JSONObject;)V

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/r/mn;->d:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public static dq(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "app_common_config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "cache_strategy_reward"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;-><init>(Lorg/json/JSONObject;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/r/mn;->dq:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    :cond_0
    const-string v0, "cache_strategy_full"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;-><init>(Lorg/json/JSONObject;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/r/mn;->d:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    :cond_1
    const-string v1, "cache_strategy_splash"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;-><init>(Lorg/json/JSONObject;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/r/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    :cond_2
    return-void
.end method

.method public static ox()Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/r/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    const-string v1, "cache_strategy_splash"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;-><init>(Lorg/json/JSONObject;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/r/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;I)I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;-><init>(Lorg/json/JSONObject;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/r/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/r/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    return-object v0
.end method

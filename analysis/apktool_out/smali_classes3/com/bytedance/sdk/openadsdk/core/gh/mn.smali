.class public Lcom/bytedance/sdk/openadsdk/core/gh/mn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/dq/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "csj_"

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/ia/dq/d;
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "is_new"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "sdk_session_id"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/gh/d;->dq:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d()Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v1

    const-string v2, "new_adlog_monitor"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->ox(B)V

    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->d(B)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->dq(B)V

    return-object v1
.end method

.method public dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->io()Z

    move-result v0

    if-eqz p2, :cond_1

    const-string v1, "success"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public dq()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dq(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->dq(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public synthetic ia()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/gh/mn;->jy()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public ig()Lcom/bytedance/sdk/component/ia/dq/ia;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/gh/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/gh/dq;

    return-object v0
.end method

.method public iw()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jy()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/o/mn;->d()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public kk()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/o/mn;->dq()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public mn()Lcom/bytedance/sdk/component/ia/dq/dq/d;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/gh/ia;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/kk/dq;->ox()Lcom/bytedance/sdk/component/kk/d/ox;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/ia;-><init>(Lcom/bytedance/sdk/component/kk/d/ox;)V

    return-object v0
.end method

.method public mp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public no()Lcom/bytedance/sdk/component/ia/d/ox;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ox()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public p()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/bl/iw;->dq()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->fw()Z

    move-result v0

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->mn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

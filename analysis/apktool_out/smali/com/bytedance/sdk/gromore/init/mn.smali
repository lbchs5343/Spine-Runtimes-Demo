.class public Lcom/bytedance/sdk/gromore/init/mn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Loader;


# instance fields
.field private d:Landroid/content/Context;

.field private dq:Lcom/bykv/vk/openvk/api/proto/Loader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/Loader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/init/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/init/mn;->d:Landroid/content/Context;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/init/mn;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/init/mn;->d:Landroid/content/Context;

    return-object p0
.end method

.method private dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->e()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "name"

    const-string v4, "personal_ads_type"

    if-ge v1, v2, :cond_3

    :try_start_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/d;->d()Lcom/bytedance/msdk/dq/ox/q;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/bytedance/msdk/dq/ox/q;->mn()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "0"

    goto :goto_2

    :cond_4
    const-string v2, "1"

    :goto_2
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/String;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_3
    return-object p1

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method


# virtual methods
.method public load(ILcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    .locals 11

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mp/dq;->ox()Z

    move-result v0

    const-string v1, "TMe"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    if-eqz v0, :cond_1e

    const-string v0, "load csj \u4ee3\u7801\u4f4d\u672a\u5f00\u542f\u805a\u5408\u5f00\u5173"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    invoke-interface {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Loader;->load(ILcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    return-void

    :cond_1
    const-string v0, "CSJM_loadAD Type:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TTMediationSDK"

    invoke-static {v2, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/gromore/dq/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    const-class v3, Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v4, 0x1

    invoke-interface {p2, v4, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bykv/vk/openvk/api/proto/Bridge;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    new-instance v6, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-direct {v6, p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    invoke-direct {v5, v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v6

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->ia()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bytedance/msdk/core/mp/dq;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->dq()I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->dq()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->ox()F

    move-result v8

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->ox()F

    move-result v6

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/bytedance/sdk/gromore/init/mn;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->dq()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6, v8}, Lcom/bytedance/msdk/api/s;->d(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->ox()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    :goto_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->ox()F

    move-result v6

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->p()F

    move-result v6

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->p()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->d()I

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->d()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->p()F

    move-result v8

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->p()F

    move-result v6

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/bytedance/sdk/gromore/init/mn;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->d()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6, v8}, Lcom/bytedance/msdk/api/s;->d(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->p()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    :goto_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->dq()I

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->ox()F

    move-result v6

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/bytedance/sdk/gromore/init/mn;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->ox()F

    move-result v8

    invoke-static {v6, v8}, Lcom/bytedance/msdk/api/s;->dq(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    :cond_7
    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->d()I

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->p()F

    move-result v6

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/bytedance/sdk/gromore/init/mn;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->p()F

    move-result v7

    invoke-static {v6, v7}, Lcom/bytedance/msdk/api/s;->dq(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    :cond_8
    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/mp/dq;->p()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->s()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/bytedance/msdk/ox/mn/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v5

    goto :goto_2

    :cond_9
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v5

    :goto_2
    new-instance v6, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-direct {v6, v5}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    const-string v5, ",ritId:"

    if-eq p1, v4, :cond_1c

    const/4 v4, 0x3

    if-eq p1, v4, :cond_19

    const/4 v4, 0x5

    const-string v7, "context is null"

    const v8, 0x13c6d

    if-eq p1, v4, :cond_14

    const/4 v4, 0x7

    if-eq p1, v4, :cond_12

    const/16 v4, 0x8

    if-eq p1, v4, :cond_d

    const/16 v4, 0x9

    if-eq p1, v4, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CSJM_loadAD load default mCSJLoader = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/init/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    if-eqz v0, :cond_1e

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/gromore/init/mn;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Loader;->load(ILcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v2

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v4}, Lcom/bytedance/msdk/core/mp/dq;->dq(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "load m draw \u5e7f\u544a\u4f4d = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->s()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/sdk/gromore/dq/dq/d/iw;

    invoke-direct {p1, v3}, Lcom/bytedance/sdk/gromore/dq/dq/d/iw;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iget-object p2, p0, Lcom/bytedance/sdk/gromore/init/mn;->d:Landroid/content/Context;

    if-eqz p2, :cond_b

    invoke-static {p2, v6, p1}, Lcom/bytedance/msdk/ox/mn/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;)V

    return-void

    :cond_b
    invoke-virtual {p1, v8, v7}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/d;->dq(ILjava/lang/String;)V

    return-void

    :cond_c
    iget-object v2, p0, Lcom/bytedance/sdk/gromore/init/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    if-eqz v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load csj draw \u4ee3\u7801\u4f4d = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/gromore/init/mn;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Loader;->load(ILcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    return-void

    :cond_d
    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v2

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v4}, Lcom/bytedance/msdk/core/mp/dq;->dq(Ljava/lang/String;I)Z

    move-result v2

    const/16 v7, 0xa

    if-nez v2, :cond_f

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v2

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Lcom/bytedance/msdk/core/mp/dq;->dq(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_3

    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    if-eqz v0, :cond_1e

    const-string v0, "load csj full"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/gromore/init/mn;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Loader;->load(ILcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    return-void

    :cond_f
    :goto_3
    new-instance p1, Lcom/bytedance/sdk/gromore/dq/dq/ox/ia;

    invoke-direct {p1, v3}, Lcom/bytedance/sdk/gromore/dq/dq/ox/ia;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p2

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p3

    const/16 v2, 0x65

    invoke-virtual {p2, p3, v4, v2}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object p2

    if-nez p2, :cond_10

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p2

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v7, v2}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object p2

    :cond_10
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/d;->ce()I

    move-result p2

    if-ne p2, v4, :cond_11

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "load m full \u5e7f\u544a\u4f4d = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->s()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/gromore/init/mn;->d:Landroid/content/Context;

    invoke-static {p2, v6, p1}, Lcom/bytedance/msdk/ox/mn/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;)V

    return-void

    :cond_11
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "load m interstitial full \u5e7f\u544a\u4f4d = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->s()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/gromore/init/mn;->d:Landroid/content/Context;

    invoke-static {p2, v6, p1}, Lcom/bytedance/msdk/ox/mn/d;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/p;)V

    return-void

    :cond_12
    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v2

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v4}, Lcom/bytedance/msdk/core/mp/dq;->dq(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance p1, Lcom/bytedance/sdk/gromore/dq/dq/s/s;

    invoke-direct {p1, v3}, Lcom/bytedance/sdk/gromore/dq/dq/s/s;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "load m reward video \u5e7f\u544a\u4f4d = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->s()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/gromore/init/mn;->d:Landroid/content/Context;

    invoke-static {p2, v6, p1}, Lcom/bytedance/msdk/ox/mn/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;)V

    return-void

    :cond_13
    iget-object v2, p0, Lcom/bytedance/sdk/gromore/init/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    if-eqz v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load csj reward video \u4ee3\u7801\u4f4d = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/gromore/init/mn;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Loader;->load(ILcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    return-void

    :cond_14
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v2

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v9

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Lcom/bytedance/msdk/core/mp/dq;->dq(Ljava/lang/String;I)Z

    move-result v4

    const-string v9, ", isExpress: "

    if-eqz v4, :cond_18

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "load m feed \u5e7f\u544a\u4f4d = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->s()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_16

    new-instance p1, Lcom/bytedance/sdk/gromore/dq/dq/p/jy;

    invoke-direct {p1, v3}, Lcom/bytedance/sdk/gromore/dq/dq/p/jy;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iget-object p2, p0, Lcom/bytedance/sdk/gromore/init/mn;->d:Landroid/content/Context;

    if-eqz p2, :cond_15

    invoke-static {p2, v6, p1}, Lcom/bytedance/msdk/ox/mn/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;)V

    return-void

    :cond_15
    invoke-virtual {p1, v8, v7}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;->dq(ILjava/lang/String;)V

    return-void

    :cond_16
    new-instance p1, Lcom/bytedance/sdk/gromore/dq/dq/p/fw;

    invoke-direct {p1, v3}, Lcom/bytedance/sdk/gromore/dq/dq/p/fw;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iget-object p2, p0, Lcom/bytedance/sdk/gromore/init/mn;->d:Landroid/content/Context;

    if-eqz p2, :cond_17

    invoke-static {p2, v6, p1}, Lcom/bytedance/msdk/ox/mn/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V

    return-void

    :cond_17
    invoke-virtual {p1, v8, v7}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;->dq(ILjava/lang/String;)V

    return-void

    :cond_18
    iget-object v3, p0, Lcom/bytedance/sdk/gromore/init/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    if-eqz v3, :cond_1e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load csj feed \u4ee3\u7801\u4f4d = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/gromore/init/mn;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Loader;->load(ILcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    return-void

    :cond_19
    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v2

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v4}, Lcom/bytedance/msdk/core/mp/dq;->dq(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "load m splash \u5e7f\u544a\u4f4d = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->s()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_1a
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/mn/dq/dq;->mp()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->mn()Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/ox;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->mn()Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/ox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/ox;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->mn()Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/ox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/ox;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->mn()Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/ox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/ox;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "load m splash \u5f00\u5c4f\u515c\u5e95\u4ee3\u7801\u4f4d = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->mn()Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/ox;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/ox;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    new-instance p1, Lcom/bytedance/sdk/gromore/init/mn$1;

    invoke-direct {p1, p0, v3, v6, v0}, Lcom/bytedance/sdk/gromore/init/mn$1;-><init>(Lcom/bytedance/sdk/gromore/init/mn;Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/gromore/dq/dq;)V

    invoke-static {p1}, Lcom/bytedance/msdk/api/p/o;->dq(Lcom/bytedance/msdk/api/p/dq/kk/dq;)V

    return-void

    :cond_1b
    iget-object v2, p0, Lcom/bytedance/sdk/gromore/init/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    if-eqz v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load csj splash \u4ee3\u7801\u4f4d = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/gromore/init/mn;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Loader;->load(ILcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    return-void

    :cond_1c
    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v2

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v4}, Lcom/bytedance/msdk/core/mp/dq;->dq(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1d

    new-instance p1, Lcom/bytedance/sdk/gromore/dq/dq/dq/p;

    invoke-direct {p1, v3}, Lcom/bytedance/sdk/gromore/dq/dq/dq/p;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "load m banner \u5e7f\u544a\u4f4d = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->s()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/gromore/init/mn;->d:Landroid/content/Context;

    invoke-static {p2, v6, p1}, Lcom/bytedance/msdk/ox/mn/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bytedance/sdk/gromore/dq/dq/dq/p;)V

    return-void

    :cond_1d
    iget-object v2, p0, Lcom/bytedance/sdk/gromore/init/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    if-eqz v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load csj banner \u4ee3\u7801\u4f4d = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/gromore/dq/dq;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/init/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/gromore/init/mn;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Loader;->load(ILcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    :cond_1e
    :goto_5
    return-void
.end method

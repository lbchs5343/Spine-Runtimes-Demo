.class public Lcom/bytedance/sdk/openadsdk/core/gh/ig;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Lcom/bytedance/sdk/openadsdk/core/gh/ig;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq:Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq:Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq:Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq:Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    return-object v0
.end method

.method public static dq(Lcom/bykv/vk/openvk/api/proto/Result;Lorg/json/JSONObject;)V
    .locals 11

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/bykv/vk/openvk/api/proto/Result;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    invoke-interface {p0}, Lcom/bykv/vk/openvk/api/proto/Result;->isSuccess()Z

    move-result v5

    invoke-interface {p0}, Lcom/bykv/vk/openvk/api/proto/Result;->code()I

    move-result v0

    invoke-interface {p0}, Lcom/bykv/vk/openvk/api/proto/Result;->message()Ljava/lang/String;

    move-result-object p0

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "success"

    invoke-virtual {v10, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "code"

    invoke-virtual {v10, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "message"

    invoke-virtual {v10, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    const/16 p0, 0xa

    const-class v0, Lorg/json/JSONObject;

    invoke-interface {v1, p0, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 v4, 0x5

    invoke-interface {v1, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v4

    if-eqz p0, :cond_0

    const-string v2, "run_package_start"

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    :cond_0
    const/4 p0, 0x3

    invoke-interface {v1, p0, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 v6, 0x4

    invoke-interface {v1, v6, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, p0

    move-object v9, v0

    move-wide v6, v2

    move-object v3, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    move-wide v6, v2

    move-object v3, v4

    move-object v8, v3

    move-object v9, v8

    :goto_1
    if-eqz p1, :cond_2

    const-string p0, "business_type"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    move-object v4, p0

    goto :goto_3

    :cond_2
    const-string p0, ""

    goto :goto_2

    :goto_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v2

    invoke-virtual/range {v2 .. v10}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/String;Ljava/lang/String;ZJLorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_3
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object p3

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/gh/ig$4;

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;J)V

    const/4 p1, 0x1

    invoke-interface {p3, v4, v7, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public static dq(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox;->dq()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    const-string v1, ""

    const-string v2, "plugin_first_load"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "-"

    invoke-static {v1, v3, p0}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-interface {v0, v2, p0}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private dq(Ljava/lang/String;I)Z
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox;->dq()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;I)I

    move-result v2

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    and-int/2addr v2, v4

    if-eq v2, p2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    add-int/lit8 p2, p2, 0x2

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;I)V

    :cond_2
    return v1
.end method

.method private ox(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public static ox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$28;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$28;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "plugin_load_failed"

    const/4 p1, 0x0

    invoke-interface {v0, v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method private p(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/gh/ig$5;

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;J)V

    const/4 p1, 0x1

    invoke-interface {v0, v4, v7, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "status_code"

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zeus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "plugin_load_failed"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zeus_"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    move-object v2, p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const-string p1, "current_version"

    const-string v1, "6.6.0.7"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "os_api"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v1, "support_abi"

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    if-nez p0, :cond_3

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    :goto_1
    move v4, p1

    goto :goto_2

    :cond_4
    const-string p1, "code"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :goto_2
    const-string p1, "message"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "duration"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object p0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$39;

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$39;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-interface {p0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;)V

    const-string v2, "sdk_permission"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public d(I)V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$17;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$17;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;I)V

    const-string p1, "fetch_adm_status"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$25;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V

    const-string p1, "uttie_close"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;)V
    .locals 1

    const-string v0, "outer_call_send"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ox(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$19;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$19;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Ljava/lang/String;)V

    const-string p1, "error_ad_info"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$38;

    const-string v1, "plugin_report"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$38;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->ox(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$27;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$27;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lorg/json/JSONObject;)V

    const-string p1, "BUNetworkRatingReport"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    return-void
.end method

.method public dq(I)V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$16;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$16;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;I)V

    const-string p1, "has_pre_req"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public dq(IJLjava/lang/Boolean;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$15;

    move-object v2, p0

    move v6, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$15;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;JLjava/lang/Boolean;ILjava/lang/String;)V

    const-string p1, "encrypt_track"

    const/4 p2, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public dq(IJLjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(IJLjava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public dq(ILcom/bytedance/sdk/openadsdk/core/kx;)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/kx;->dq(J)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/kx;->d()J

    move-result-wide v5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object p2

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/gh/ig$14;

    move-object v3, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$14;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lorg/json/JSONObject;JI)V

    const-string p1, "get_bidding_token"

    const/4 v0, 0x1

    invoke-interface {p2, v2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public dq(ILcom/bytedance/sdk/openadsdk/core/r/j;Z)V
    .locals 2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;ILjava/lang/String;Z)V

    if-eqz p3, :cond_1

    const-string p1, "reg_creative"

    goto :goto_0

    :cond_1
    const-string p1, "no_reg_creative"

    :goto_0
    const/4 p2, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public dq(JJI)V
    .locals 10

    sub-long v7, p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, v7, v0

    if-lez v2, :cond_1

    const-wide/32 v0, 0x1c9c380

    cmp-long v2, v7, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v9

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$20;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$20;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;JJIJ)V

    const-string p1, "general_label"

    const/4 p2, 0x1

    invoke-interface {v9, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(JLcom/bytedance/sdk/openadsdk/core/wp/p;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$12;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;JLcom/bytedance/sdk/openadsdk/core/wp/p;)V

    const-string p1, "pitaya_init"

    const/4 p2, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public dq(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$3;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Ljava/lang/String;)V

    const-string p1, "delegate_on_create"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "load_icon_error"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/gh/ig$7;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;)V

    const/4 p1, 0x1

    invoke-interface {v1, v2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$23;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$23;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V

    const-string p1, "uttie_start"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;J)V
    .locals 6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$24;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$24;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;J)V

    const-string p1, "uttie_played"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$26;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$26;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;)V
    .locals 1

    const-string v0, "outer_call"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ox(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public dq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$36;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$36;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "obm_result"

    const/4 p2, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public dq(Ljava/lang/String;III)V
    .locals 7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$1;

    move-object v2, p0

    move-object v6, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;IIILjava/lang/String;)V

    const-string p1, "pv_monitor"

    const/4 p2, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public dq(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;J)V
    .locals 4

    move-object v0, p4

    move-object p4, p6

    move-wide v2, p7

    move p8, p3

    move p3, p5

    move-wide p5, v2

    new-instance p7, Lorg/json/JSONObject;

    invoke-direct {p7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "code"

    invoke-virtual {p7, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {p7, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    invoke-virtual {p7, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p8, "current_version"

    invoke-virtual {p7, p8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "package_name"

    invoke-virtual {p7, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "url"

    invoke-virtual {p7, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "duration"

    invoke-virtual {p7, p1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object p8

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$37;

    move-object p2, p0

    invoke-direct/range {p1 .. p7}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$37;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;ILjava/lang/String;JLorg/json/JSONObject;)V

    const-string p2, "plugin_download"

    const/4 p3, 0x1

    invoke-interface {p8, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$29;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$29;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sdk_retention"

    const/4 p2, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$11;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$11;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "get_bidding_token"

    invoke-interface {v0, v1, p1, v6}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;ZJLorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 11

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$13;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-wide v3, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$13;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;JLjava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string p1, "pitaya_run_task"

    const/4 p2, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$21;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$21;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    const-string p1, "exception"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$10;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lorg/json/JSONObject;)V

    const-string p1, "render_backup"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public dq(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$22;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$22;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Z)V

    const-string p1, "live_init_success"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Z[Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Z[Ljava/lang/String;)V

    const-string p1, "download_permission"

    const/4 p2, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public ia(Lcom/bytedance/sdk/openadsdk/no/dq/dq;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$9;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lcom/bytedance/sdk/openadsdk/no/dq/dq;)V

    const-string p1, "app_env"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public ia(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$35;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$35;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lorg/json/JSONObject;)V

    const-string p1, "landingpage_check_info"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public iw(Lcom/bytedance/sdk/openadsdk/no/dq/dq;)V
    .locals 1

    const-string v0, "show_backup_endcard"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->p(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    return-void
.end method

.method public iw(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$33;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$33;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lorg/json/JSONObject;)V

    const-string p1, "render_timeout_opt"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public mn(Lcom/bytedance/sdk/openadsdk/no/dq/dq;)V
    .locals 1

    const-string v0, "splash_creative_check"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ox(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    return-void
.end method

.method public mn(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$34;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$34;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lorg/json/JSONObject;)V

    const-string p1, "landing_page_preload"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public ox(I)V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$18;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$18;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;I)V

    const-string p1, "get_ad_cache_failed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public ox(Lcom/bytedance/sdk/openadsdk/no/dq/dq;)V
    .locals 1

    const-string v0, "outer_call_no_rsp"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ox(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    return-void
.end method

.method public ox(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$30;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$30;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lorg/json/JSONObject;)V

    const-string p1, "net_qty_compare"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public p(Lcom/bytedance/sdk/openadsdk/no/dq/dq;)V
    .locals 1

    const-string v0, "load_timeout"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ox(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    return-void
.end method

.method public p(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$31;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$31;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lorg/json/JSONObject;)V

    const-string p1, "device_qty_compare"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method public s(Lcom/bytedance/sdk/openadsdk/no/dq/dq;)V
    .locals 1

    const-string v0, "express_ad_render"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->p(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    return-void
.end method

.method public s(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/ig$32;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig$32;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Lorg/json/JSONObject;)V

    const-string p1, "device_bytebench"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

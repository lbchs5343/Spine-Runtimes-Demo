.class public Lcom/bytedance/sdk/openadsdk/s/dq;
.super Ljava/lang/Object;


# direct methods
.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kr()I

    move-result p0

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/s/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "dynamic_join_type"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kr()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/s/dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/s/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->oh()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/r/ji;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->dq()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kr()I

    move-result p0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)[I

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    const/4 v2, 0x0

    aget v3, v1, v2

    aget v1, v1, v0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v4

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    if-lt v3, v1, :cond_1

    if-ge v4, p0, :cond_2

    :cond_1
    if-gt v3, v1, :cond_3

    if-gt v4, p0, :cond_3

    :cond_2
    return v0

    :cond_3
    return v2

    :cond_4
    return v0
.end method

.method public static s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/upie/dq;
    .locals 6

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mn()Lcom/bytedance/sdk/openadsdk/core/r/cd;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/cd;->dq()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/upie/dq$dq;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    array-length v3, v0

    if-lt v3, v2, :cond_2

    const/4 v3, 0x0

    aget v3, v0, v3

    goto :goto_2

    :cond_2
    const/16 v3, 0x500

    :goto_2
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/upie/dq$dq;

    move-result-object v1

    if-eqz v0, :cond_3

    array-length v3, v0

    if-lt v3, v2, :cond_3

    const/4 v2, 0x1

    aget v0, v0, v2

    goto :goto_3

    :cond_3
    const/16 v0, 0x2d0

    :goto_3
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->d(I)Lcom/bytedance/sdk/openadsdk/upie/dq$dq;

    move-result-object v0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/s/dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    move-result-object v1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/s/dq;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/upie/dq$dq;

    move-result-object v2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->s()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/upie/dq$dq;

    move-result-object v1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->dq(J)Lcom/bytedance/sdk/openadsdk/upie/dq$dq;

    :cond_5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/upie/dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/upie/dq;

    move-result-object p0

    return-object p0
.end method

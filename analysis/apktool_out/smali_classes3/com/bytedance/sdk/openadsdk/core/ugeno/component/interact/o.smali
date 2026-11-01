.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/o;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Lcom/bytedance/sdk/component/adexpress/ox;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/r/k;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/k;->dq()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "ugen_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;ZLjava/lang/String;I)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "area_type"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "style_type"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "style_id"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "easy_play_click"

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;ZLjava/lang/String;ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Z",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p4

    if-nez p4, :cond_0

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    const-string v0, "success"

    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "style_type"

    invoke-virtual {p4, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "style_id"

    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "easy_play_show"

    invoke-static {p0, p1, p4}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static dq(IIIIFF)Z
    .locals 0

    add-int/2addr p2, p0

    add-int/2addr p3, p1

    int-to-float p0, p0

    cmpl-float p0, p4, p0

    if-ltz p0, :cond_0

    int-to-float p0, p2

    cmpg-float p0, p4, p0

    if-gtz p0, :cond_0

    int-to-float p0, p1

    cmpl-float p0, p5, p0

    if-ltz p0, :cond_0

    int-to-float p0, p3

    cmpg-float p0, p5, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static dq(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/ox;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v1, v0

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    instance-of p0, p1, Lcom/bytedance/sdk/openadsdk/core/r/k;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/r/k;

    iget v6, p1, Lcom/bytedance/sdk/openadsdk/core/r/k;->dq:F

    iget v7, p1, Lcom/bytedance/sdk/openadsdk/core/r/k;->d:F

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/o;->dq(IIIIFF)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

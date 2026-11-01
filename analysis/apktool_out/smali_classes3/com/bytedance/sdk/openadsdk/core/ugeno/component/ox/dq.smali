.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/component/ox/dq;
.super Lg/app;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/eyh;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dq(JJ)V
    .locals 10

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lg/dlv;->dq(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lg/dlv;->bf:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fzc;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lg/fzc;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "actions"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "progress"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v7, v6

    cmp-long v9, v7, p3

    if-lez v9, :cond_3

    long-to-int v6, p3

    :cond_3
    int-to-long v6, v6

    cmp-long v8, p1, v6

    if-nez v8, :cond_4

    const-string v6, "onShow"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p0}, Lg/dlv;->d(Lg/dlv;)Lg/dlv;

    move-result-object v5

    const-string v6, "nodeId"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_4

    invoke-virtual {v5, v4}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object v4

    invoke-virtual {v4, v2}, Lg/dlv;->d(I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public synthetic ox()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/ox/dq;->uh()Lg/acb;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 0

    invoke-super {p0}, Lg/dlv;->p()V

    return-void
.end method

.method public uh()Lg/acb;
    .locals 2

    new-instance v0, Lg/acb;

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p0, v0, Lg/acb;->a:Lg/eyh;

    return-object v0
.end method

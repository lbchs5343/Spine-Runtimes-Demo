.class public Lcom/bytedance/sdk/openadsdk/core/r/er;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/r/er$dq;,
        Lcom/bytedance/sdk/openadsdk/core/r/er$d;
    }
.end annotation


# instance fields
.field private d:Z

.field private dq:Ljava/lang/String;

.field private ia:I

.field private iw:Ljava/lang/String;

.field private kk:Lcom/bytedance/sdk/openadsdk/core/r/er$d;

.field private mn:Lorg/json/JSONArray;

.field private o:Lcom/bytedance/sdk/openadsdk/core/r/er$dq;

.field private ox:Z

.field private p:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/er;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/er;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/r/er;-><init>()V

    const-string v1, "promotion_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/er;->dq:Ljava/lang/String;

    const-string v1, "is_silent_auth"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/er;->d:Z

    const-string v1, "enable_playable_auth"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/er;->ox:Z

    const-string v1, "aweme_agreements"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/er;->p:Ljava/lang/String;

    const-string v1, "aweme_privacy"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/er;->s:Ljava/lang/String;

    const-string v1, "live_csj_libra_param"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/er;->iw:Ljava/lang/String;

    const-string v1, "tasks"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/er;->mn:Lorg/json/JSONArray;

    const-string v1, "live_playable"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/er;->ia:I

    const-string v1, "product"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/er$dq;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/er$dq;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/er;->o:Lcom/bytedance/sdk/openadsdk/core/r/er$dq;

    const-string v1, "coupon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/er$d;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/er$d;

    move-result-object p0

    iput-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/er;->kk:Lcom/bytedance/sdk/openadsdk/core/r/er$d;

    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public dq()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "promotion_id"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_silent_auth"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->d:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "enable_playable_auth"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->ox:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "aweme_agreements"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "aweme_privacy"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "live_csj_libra_param"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->iw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tasks"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->mn:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "live_playable"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->ia:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->o:Lcom/bytedance/sdk/openadsdk/core/r/er$dq;

    if-eqz v1, :cond_0

    const-string v2, "product"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/er$dq;->s()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->kk:Lcom/bytedance/sdk/openadsdk/core/r/er$d;

    if-eqz v1, :cond_1

    const-string v2, "coupon"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/er$d;->ox()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public ia()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->mn:Lorg/json/JSONArray;

    return-object v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->s:Ljava/lang/String;

    return-object v0
.end method

.method public kk()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->ia:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->ox:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->iw:Ljava/lang/String;

    return-object v0
.end method

.method public no()Lcom/bytedance/sdk/openadsdk/core/r/er$dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->o:Lcom/bytedance/sdk/openadsdk/core/r/er$dq;

    return-object v0
.end method

.method public o()Lcom/bytedance/sdk/openadsdk/core/r/er$d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->kk:Lcom/bytedance/sdk/openadsdk/core/r/er$d;

    return-object v0
.end method

.method public ox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->d:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->ox:Z

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/er;->p:Ljava/lang/String;

    return-object v0
.end method

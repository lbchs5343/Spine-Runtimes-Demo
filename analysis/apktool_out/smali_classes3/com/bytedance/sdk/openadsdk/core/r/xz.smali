.class public Lcom/bytedance/sdk/openadsdk/core/r/xz;
.super Ljava/lang/Object;


# instance fields
.field private d:Z

.field private dq:Z

.field private ox:I

.field private p:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "window_landing"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "can_jump_to_landing"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/xz;->dq:Z

    const-string v0, "can_click_to_landing"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/xz;->d:Z

    const-string v0, "auto_to_landing_type"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/xz;->ox:I

    const-string v0, "auto_to_landing_time"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/xz;->p:I

    return-void
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->le(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/xz;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/xz;->d:Z

    return p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 5

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->le(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/xz;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/r/xz;->dq:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ce()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ce()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dr()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ce()I

    move-result v0

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dr()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gv()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gv()I

    move-result v0

    const/16 v3, 0xf

    if-eq v0, v3, :cond_5

    return v1

    :cond_5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/xz;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public static ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->le(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/xz;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/xz;->ox:I

    return p0
.end method

.method public static p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->le(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/xz;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/xz;->p:I

    return p0
.end method

.method public static s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ae()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "can_jump_to_landing"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/xz;->dq:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "can_click_to_landing"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/xz;->d:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "auto_to_landing_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/xz;->ox:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "auto_to_landing_time"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/xz;->p:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "window_landing"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parse json:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;)V

    return-void
.end method

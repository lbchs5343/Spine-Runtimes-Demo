.class public Lcom/bytedance/sdk/openadsdk/core/r/gh;
.super Ljava/lang/Object;


# instance fields
.field private d:I

.field private dq:Ljava/lang/String;

.field private ia:Ljava/lang/String;

.field private iw:I

.field private kk:Ljava/lang/String;

.field private mn:Z

.field private o:I

.field private ox:I

.field private p:I

.field private s:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->d:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "reward_browse_type"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->d:I

    const/4 v2, 0x3

    if-ltz v1, :cond_1

    if-le v1, v2, :cond_2

    :cond_1
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->d:I

    :cond_2
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->d:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->d:I

    :cond_3
    const-string v1, "direct_landing_page_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, "direct_landing_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->dq:Ljava/lang/String;

    const-string v1, "display_duration"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->ox:I

    const-string v1, "close_time"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->p:I

    const-string v1, "page_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->s:I

    const-string v1, "show_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->iw:I

    const-string v1, "is_landing_with_sound"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->mn:Z

    const-string v0, "reward_browse_banner"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "ugen_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->ia:Ljava/lang/String;

    const-string v1, "ugen_md5"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->kk:Ljava/lang/String;

    :cond_4
    const-string v0, "close_btn_position"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->o:I

    :cond_5
    :goto_0
    return-void
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/gh;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->dq:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private static f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/gh;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->l()Lcom/bytedance/sdk/openadsdk/core/r/gh;

    move-result-object p0

    return-object p0
.end method

.method public static ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/gh;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->d:I

    return p0
.end method

.method public static ig(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/gh;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->ia:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;->ox(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->kk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->ia:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;->dq(Ljava/lang/String;)V

    return-object v0
.end method

.method public static iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/gh;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->dq:Ljava/lang/String;

    return-object p0
.end method

.method public static jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/gh;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->o:I

    return p0
.end method

.method public static kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/gh;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->ox:I

    if-gez p0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method public static mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/gh;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->mn:Z

    return p0
.end method

.method public static mp(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/gh;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->o:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static no(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/gh;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static o(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/gh;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->p:I

    if-gez p0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method public static ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/gh;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->s:I

    if-ne p0, v2, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public static p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/gh;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    iget p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->d:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    iget p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->s:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public static q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/gh;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->o:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/gh;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->iw:I

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "reward_browse_type"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->d:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v1, "direct_landing_url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "display_duration"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->ox:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "close_time"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->p:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "page_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->s:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "show_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->iw:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "close_btn_position"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->o:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "is_landing_with_sound"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->mn:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ugen_url"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->ia:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ugen_md5"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/gh;->kk:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "reward_browse_banner"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "direct_landing_page_info"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

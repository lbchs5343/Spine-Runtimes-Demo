.class public Lcom/bytedance/sdk/openadsdk/core/r/l;
.super Ljava/lang/Object;


# instance fields
.field private bl:Ljava/lang/String;

.field private cd:Z

.field private d:I

.field private dq:Z

.field private e:Z

.field private f:I

.field private fw:I

.field private gh:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private ia:I

.field private ig:I

.field private iw:Ljava/lang/String;

.field private ji:Ljava/lang/String;

.field private jy:I

.field private k:Ljava/lang/String;

.field private kk:I

.field private kx:I

.field private le:I

.field private mn:I

.field private mp:I

.field private n:Z

.field private no:I

.field private o:I

.field private ox:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private wp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->p:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->o:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->no:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->ig:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->mp:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->q:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->jy:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->f:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->fw:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->cd:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->le:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->kx:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v3, "playable"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, ""

    if-eqz v3, :cond_1

    const-string v6, "playable_url"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->s:Ljava/lang/String;

    const-string v6, "playable_download_url"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->iw:Ljava/lang/String;

    const-string v6, "playable_orientation"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->kk:I

    const-string v6, "playable_auto_convert"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->o:I

    const-string v6, "playable_backup_enable"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->no:I

    const-string v6, "playable_webview_timeout"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->ig:I

    const-string v6, "playable_js_timeout"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->mp:I

    const-string v1, "is_play_with_download"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->kx:I

    const-string v1, "allow_open_playable_landing_page"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->e:Z

    const-string v1, "is_play_with_watching"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->h:Z

    const-string v1, "playable_video"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "video_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->ji:Ljava/lang/String;

    const-string v3, "resolution"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->bl:Ljava/lang/String;

    :cond_1
    const-string v1, "playable_common"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v3, "loading_page"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v6, "if_playable_loading_show"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->mn:I

    const-string v6, "remove_loading_page_type"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->ia:I

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/r/l;->d(Lorg/json/JSONObject;)I

    move-result v6

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->le:I

    const-string v6, "playable_loading_img_url"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->k:Ljava/lang/String;

    const-string v6, "playable_loading_icon_url"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->wp:Ljava/lang/String;

    const-string v6, "playable_loading_tips"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->i:Ljava/lang/String;

    :cond_2
    const-string v3, "is_playable_top_priority"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->n:Z

    :cond_3
    const-string v1, "is_playable"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->dq:Z

    const-string v1, "playable_type"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->d:I

    const-string v1, "playable_style"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->ox:Ljava/lang/String;

    const-string v1, "playable_duration_time"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->q:I

    const-string v1, "playable_close_time"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->jy:I

    const-string v1, "playable_endcard_close_time"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->f:I

    const-string v1, "playable_reward_type"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->fw:I

    const-string v1, "playable_convert_type"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->p:I

    const-string v1, "has_pre_playable"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->cd:Z

    const-string v1, "is_pl_pre_5element"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->gh:Z

    const-string v0, "pl_pre_5element_version"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->r:I

    return-void
.end method

.method public static bl(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->n:Z

    return p0
.end method

.method public static cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->jy:I

    if-gez p0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method private d(Lorg/json/JSONObject;)I
    .locals 2

    const-string v0, "playable_loading_style"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->ox:Ljava/lang/String;

    return-object p0
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x427c0000    # 63.0f

    const/high16 v2, 0x42080000    # 34.0f

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/l;->o(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    return v0

    :cond_1
    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result p0

    return p0

    :cond_2
    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ho()I

    move-result p1

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    return v0

    :cond_4
    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result p0

    return p0

    :cond_5
    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;I)I
    .locals 2

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;I)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->kk()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    return p1

    :cond_2
    aget-object v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v0, p0, :cond_3

    return v1

    :catch_0
    :cond_3
    return p1
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->dq:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->s:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static e(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->r:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->op(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static fw(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->q:I

    if-gez p0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method public static gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->f:I

    return p0
.end method

.method public static h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->ji:Ljava/lang/String;

    return-object p0
.end method

.method public static i(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 4

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->p:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ltz v1, :cond_1

    if-le v1, v3, :cond_2

    :cond_1
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->p:I

    :cond_2
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->p:I

    if-eqz p0, :cond_4

    if-ne p0, v3, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v0
.end method

.method public static ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/r/l;->ia:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    if-eq v0, p0, :cond_1

    return p0

    :cond_1
    return v1
.end method

.method public static ig(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->no:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->iw:Ljava/lang/String;

    return-object p0
.end method

.method public static ji(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->bl:Ljava/lang/String;

    return-object p0
.end method

.method public static jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->op(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static k(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->cd:Z

    return p0
.end method

.method public static kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/r/l;->ia:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    return p0

    :cond_1
    return v1
.end method

.method public static kx(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->h:Z

    return p0
.end method

.method public static le(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 4

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->p:I

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    const/4 v3, 0x2

    if-le v1, v3, :cond_2

    :cond_1
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->p:I

    :cond_2
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->p:I

    if-eqz p0, :cond_4

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v0
.end method

.method public static mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/xz;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->mn:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public static mp(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->ig:I

    return p0
.end method

.method private static n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->j()Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    return-object p0
.end method

.method public static no(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->o:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static o(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->kk:I

    return p0
.end method

.method private static op(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->d:I

    return p0
.end method

.method public static ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->s:Ljava/lang/String;

    return-object p0
.end method

.method public static p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->kx:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static q(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->mp:I

    return p0
.end method

.method public static r(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 4

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/l;->fw:I

    if-ltz v2, :cond_3

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->ir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->no(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    if-nez p0, :cond_2

    return v3

    :cond_2
    iget p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/l;->fw:I

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->e:Z

    return p0
.end method

.method public static wp(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->n(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/l;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->gh:Z

    return p0
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "pl_pre_5element_version"

    const-string v1, "is_pl_pre_5element"

    :try_start_0
    const-string v2, "is_playable"

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->dq:Z

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v3, "playable_url"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->s:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "playable_download_url"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->iw:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "playable_orientation"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->kk:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "playable_auto_convert"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->o:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "playable_backup_enable"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->no:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "playable_webview_timeout"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->ig:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "playable_js_timeout"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->mp:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "is_play_with_download"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->kx:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "allow_open_playable_landing_page"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->e:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->gh:Z

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->r:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "is_play_with_watching"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->h:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "video_url"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->ji:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "resolution"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->bl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "playable_video"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "playable"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "if_playable_loading_show"

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->mn:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "remove_loading_page_type"

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->ia:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "playable_loading_style"

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->le:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "playable_loading_img_url"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->k:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "playable_loading_icon_url"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->wp:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "playable_loading_tips"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->i:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "loading_page"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "is_playable_top_priority"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->n:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "playable_common"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    :try_start_3
    const-string v2, "playable_type"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->d:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_4
    const-string v2, "playable_style"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->ox:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    :try_start_5
    const-string v2, "playable_duration_time"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->q:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    :try_start_6
    const-string v2, "playable_close_time"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->jy:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    :try_start_7
    const-string v2, "playable_endcard_close_time"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->f:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7
    :try_start_8
    const-string v2, "playable_reward_type"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->fw:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    :try_start_9
    const-string v2, "playable_convert_type"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->p:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9
    :try_start_a
    const-string v2, "has_pre_playable"

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->cd:Z

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    :try_start_b
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->gh:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    :try_start_c
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/l;->r:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_c

    return-void

    :catch_c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

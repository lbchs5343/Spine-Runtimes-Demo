.class public Lcom/bytedance/sdk/openadsdk/core/r/uh;
.super Ljava/lang/Object;


# static fields
.field private static d:I = 0x5

.field private static dq:J = 0x6978L

.field private static ox:I


# instance fields
.field private bl:I

.field private cd:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/openadsdk/core/r/xi;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private fw:D

.field private gh:D

.field private h:Z

.field private i:I

.field private ia:D

.field private ig:I

.field private iw:Z

.field private ji:Z

.field private jy:I

.field private k:Z

.field private kk:Z

.field private kx:Lcom/bytedance/sdk/openadsdk/core/r/xz;

.field private le:I

.field private mn:Z

.field private mp:I

.field private n:Z

.field private no:Ljava/lang/String;

.field private o:D

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:I

.field private wp:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->le:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->k:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->wp:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->e:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, "reward"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "retain_dialog_config"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->e:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/r/xi;

    invoke-direct {v5, v4}, Lcom/bytedance/sdk/openadsdk/core/r/xi;-><init>(Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/r/xz;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/r/xz;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->kx:Lcom/bytedance/sdk/openadsdk/core/r/xz;

    const-string v2, "endcard_transform_enabled"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ji:Z

    :cond_3
    const-string v1, "reward_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, "reward_amount"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->s:I

    const-string v2, "reward_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->p:Ljava/lang/String;

    const-string v2, "reward_info_show"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->iw:Z

    const-string v2, "reward_back_type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->mp:I

    const-string v2, "reward_backup_timing"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->q:I

    const-string v2, "reward_backup_duration"

    const v3, 0x7fffffff

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->jy:I

    const-string v2, "reward_is_callback"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->bl:I

    const-string v2, "reward_need_click"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->n:Z

    const-string v2, "reward_advanced_config"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, "easy_playable"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "propose_reward"

    const-string v4, "enable"

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->mn:Z

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ia:D

    cmpg-double v2, v7, v5

    if-gez v2, :cond_4

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ia:D

    :cond_4
    const-string v2, "play_complete"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->kk:Z

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->o:D

    cmpg-double v9, v7, v5

    if-gez v9, :cond_5

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->o:D

    :cond_5
    const-string v7, "tip_toast"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->no:Ljava/lang/String;

    const-string v7, "min_duration"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ig:I

    :cond_6
    const-string v2, "playable_interactive"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->f:Z

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->fw:D

    :cond_7
    const-string v2, "click_landing"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->cd:Z

    invoke-virtual {v1, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->gh:D

    const-string v2, "landing_view_time"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->r:I

    :cond_8
    const-string v1, "reward_full_play_time"

    const/16 v2, 0x1e

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->i:I

    const-string v1, "reward_full_time_type"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->le:I

    const-string v1, "interstitial_bg_transparent"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h:Z

    const-string v1, "__is_use_local_time"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->k:Z

    const-string v1, "__is_click_landing_reward"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->wp:Z

    return-void
.end method

.method public static cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->k:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->s:I

    return p0
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;I)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->jy:I

    if-gtz p0, :cond_1

    :goto_0
    return p1

    :cond_1
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static d()J
    .locals 2

    sget v0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->d:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const-wide/16 v0, 0x5

    return-wide v0

    :cond_0
    int-to-long v0, v0

    return-wide v0
.end method

.method public static d(Lcom/bytedance/sdk/component/mn/dq;)V
    .locals 3

    const-string v0, "reward_time_limited"

    const-wide/16 v1, 0x6978

    invoke-interface {p0, v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->dq:J

    const-string v0, "reward_force_close_max_count"

    const/4 v1, 0x5

    invoke-interface {p0, v0, v1}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->d:I

    const-string v0, "reward_local_countdown_close_style"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ox:I

    return-void
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-eqz p0, :cond_0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->wp:Z

    :cond_0
    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;I)F
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ig(Lcom/bytedance/sdk/openadsdk/core/r/j;)D

    move-result-wide p0

    :goto_0
    double-to-float p0, p0

    return p0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)D

    move-result-wide p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)D

    move-result-wide p0

    goto :goto_0

    :cond_3
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static dq()J
    .locals 2

    sget-wide v0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->dq:J

    return-wide v0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static dq(Lcom/bytedance/sdk/component/mn/dq;)V
    .locals 3

    const-string v0, "reward_time_limited"

    sget-wide v1, Lcom/bytedance/sdk/openadsdk/core/r/uh;->dq:J

    invoke-interface {p0, v0, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;J)V

    const-string v0, "reward_force_close_max_count"

    sget v1, Lcom/bytedance/sdk/openadsdk/core/r/uh;->d:I

    invoke-interface {p0, v0, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;I)V

    const-string v0, "reward_local_countdown_close_style"

    sget v1, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ox:I

    invoke-interface {p0, v0, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-eqz p0, :cond_0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->k:Z

    :cond_0
    return-void
.end method

.method public static dq(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "app_common_config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "reward_time_limited"

    const-wide/16 v1, 0x6978

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->dq:J

    const-string v0, "reward_force_close_max_count"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->d:I

    const-string v0, "reward_local_countdown_close_style"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ox:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static e(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->bl:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static f(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->le:I

    return p0
.end method

.method public static fw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->k:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    if-eq v0, v2, :cond_4

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public static gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->wp:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->mp(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    return p0
.end method

.method private static h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->u()Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->q:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)D
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->o:D

    return-wide v0
.end method

.method public static ig(Lcom/bytedance/sdk/openadsdk/core/r/j;)D
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->fw:D

    return-wide v0
.end method

.method public static iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)D
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ia:D

    return-wide v0
.end method

.method public static jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    const/16 v0, 0x1e

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->i:I

    const/16 v1, 0xa

    if-lt p0, v1, :cond_2

    const/16 v1, 0x3c

    if-le p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static k(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->no:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\u522b\u6025\u7740\u8df3\u8fc7\uff0c\u7ee7\u7eed\u89c2\u770b\u5b8c\u6574\u89c6\u9891\uff0c\u53ef\u83b7\u5f97\u66f4\u591a\u989d\u5916\u5956\u52b1\uff5e"

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->no:Ljava/lang/String;

    return-object p0
.end method

.method public static kx(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->n:Z

    return p0
.end method

.method public static le(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/xz;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->kx:Lcom/bytedance/sdk/openadsdk/core/r/xz;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->kk:Z

    return p0
.end method

.method public static mp(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->cd:Z

    return p0
.end method

.method public static no(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->f:Z

    return p0
.end method

.method public static o(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0x7530

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ig:I

    const/16 v0, 0x1e

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v1, 0x3c

    if-le p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static ox()Z
    .locals 2

    sget v0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ox:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->iw:Z

    return p0
.end method

.method public static p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->mp:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static q(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    const/4 v0, 0x5

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->r:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/openadsdk/core/r/xi;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->e:Ljava/util/ArrayList;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->mn:Z

    return p0
.end method

.method public static wp(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/uh;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ji:Z

    return p0
.end method


# virtual methods
.method public d(Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "propose_reward"

    const-string v1, "enable"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->e:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/r/xi;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->dq()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    const-string v4, "retain_dialog_config"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->kx:Lcom/bytedance/sdk/openadsdk/core/r/xz;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/r/xz;->dq(Lorg/json/JSONObject;)V

    :cond_1
    const-string v3, "endcard_transform_enabled"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ji:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "reward"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "reward_name"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->p:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "reward_amount"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->s:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "reward_info_show"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->iw:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "reward_back_type"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->mp:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "reward_backup_timing"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->q:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "reward_backup_duration"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->jy:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "reward_is_callback"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->bl:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "reward_need_click"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->n:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->mn:Z

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ia:D

    invoke-virtual {v4, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "easy_playable"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->kk:Z

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->o:D

    invoke-virtual {v4, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "tip_toast"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->no:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "min_duration"

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ig:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "play_complete"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->f:Z

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->fw:D

    invoke-virtual {v4, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "playable_interactive"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->cd:Z

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->gh:D

    invoke-virtual {v4, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "landing_view_time"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->r:I

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "click_landing"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "reward_advanced_config"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "reward_data"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_2
    const-string v0, "reward_full_play_time"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->i:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "reward_full_time_type"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->le:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "interstitial_bg_transparent"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->h:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "__is_use_local_time"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->k:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "__is_click_landing_reward"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/uh;->wp:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

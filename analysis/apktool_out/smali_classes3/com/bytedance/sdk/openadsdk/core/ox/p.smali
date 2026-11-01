.class public Lcom/bytedance/sdk/openadsdk/core/ox/p;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Lcom/bytedance/sdk/openadsdk/core/ox/p;


# instance fields
.field private volatile bl:Ljava/lang/String;

.field private volatile by:I

.field private volatile c:Ljava/lang/String;

.field private volatile cd:Ljava/lang/String;

.field private volatile ce:Ljava/lang/String;

.field public dq:Ljava/lang/String;

.field private volatile e:I

.field private volatile er:I

.field private volatile f:I

.field private volatile fw:I

.field private volatile gh:Ljava/lang/String;

.field private volatile gx:I

.field private volatile h:Ljava/lang/String;

.field private volatile i:Ljava/lang/String;

.field private volatile ia:Ljava/lang/String;

.field private volatile ig:I

.field private volatile ir:Ljava/lang/String;

.field private volatile iw:F

.field private volatile j:I

.field private volatile ji:Ljava/lang/String;

.field private volatile jy:Ljava/lang/String;

.field private volatile k:Ljava/lang/String;

.field private volatile kk:I

.field private volatile kx:Ljava/lang/String;

.field private volatile l:I

.field private volatile le:Ljava/lang/String;

.field private volatile mn:Ljava/lang/String;

.field private volatile mp:I

.field private volatile n:Ljava/lang/String;

.field private volatile nh:I

.field private volatile no:Ljava/lang/String;

.field private volatile o:Ljava/lang/String;

.field private volatile ob:Ljava/lang/String;

.field private volatile op:Ljava/lang/String;

.field private volatile ox:Landroid/content/SharedPreferences;

.field private volatile p:I

.field private volatile q:Ljava/lang/String;

.field private volatile r:Ljava/lang/String;

.field private volatile s:J

.field private volatile t:I

.field private volatile u:Lorg/json/JSONArray;

.field private volatile uh:I

.field private volatile vf:Ljava/lang/String;

.field private volatile wn:Ljava/lang/String;

.field private volatile wp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->s:J

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->iw:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->kk:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ig:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->mp:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->f:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->fw:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->e:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->er:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->j:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->nh:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->l:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->t:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->gx:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->by:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->uh:I

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sp_exec_getad_config"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d:Lcom/bytedance/sdk/openadsdk/core/ox/p;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/ox/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d:Lcom/bytedance/sdk/openadsdk/core/ox/p;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ox/p;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d:Lcom/bytedance/sdk/openadsdk/core/ox/p;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d:Lcom/bytedance/sdk/openadsdk/core/ox/p;

    return-object v0
.end method

.method private ob()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn;->dq()Lcom/bytedance/sdk/openadsdk/core/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/mn;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->r:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "plugin_version"

    const/16 v2, 0x19cf

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "log_version"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "logsdk_version"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private vf()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public bl(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->vf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->vf:Ljava/lang/String;

    const-string v0, "net_qty"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bl()Z
    .locals 2

    const-string v0, "is_spl_cache_remove_change"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "drop_cache_black_conf"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public cd()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ji:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev17"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ji:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ji:Ljava/lang/String;

    return-object v0
.end method

.method public cd(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->kx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->kx:Ljava/lang/String;

    const-string v0, "dev07"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ce()I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->uh:I

    if-gtz v0, :cond_0

    const-string v0, "splash_render_timeout_backup"

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->uh:I

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->uh:I

    return v0
.end method

.method public d(Ljava/lang/String;F)F
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_exec_getad_config"

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->vf()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return p2
.end method

.method public d(Ljava/lang/String;I)I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_exec_getad_config"

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->vf()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return p2
.end method

.method public d()J
    .locals 5

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->s:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "duration"

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->s:J

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->s:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;J)J
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_exec_getad_config"

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->vf()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p1

    :catchall_0
    return-wide p2
.end method

.method public d(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->kk:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->kk:I

    const-string v0, "live_ad_clk_cnt"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ia:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ia:Ljava/lang/String;

    const-string v0, "ab_test_param"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_exec_getad_config"

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->vf()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ig:I

    const-string p1, "is_paid"

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ig:I

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public d(Ljava/lang/String;Z)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_exec_getad_config"

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->vf()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return p2
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "code_group_rit_"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq(F)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->iw:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->iw:F

    const-string p1, "max"

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->iw:F

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;F)V

    return-void
.end method

.method public dq(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p:I

    const-string v0, "max"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public dq(J)V
    .locals 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->s:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->s:J

    const-string v0, "duration"

    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;J)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->mn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->mn:Ljava/lang/String;

    const-string v0, "ab_test_version"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/String;F)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_exec_getad_config"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->vf()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dq(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_exec_getad_config"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->vf()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dq(Ljava/lang/String;J)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_exec_getad_config"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->vf()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dq(Ljava/lang/String;Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_exec_getad_config"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->vf()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dq(Lorg/json/JSONArray;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->u:Lorg/json/JSONArray;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->u:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return-void

    :cond_2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->u:Lorg/json/JSONArray;

    const-string v0, "dev12"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "splash_policy"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->j:I

    if-ne v0, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->j:I

    invoke-virtual {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public dq(Z)Z
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ig:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const-string v0, "is_paid"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ig:I

    :cond_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ig:I

    if-ne p1, v2, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ce:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev15"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ce:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ce:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->c:Ljava/lang/String;

    const-string v0, "dev13"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public er()I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "splash_policy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->j:I

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->j:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->kx:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev07"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->kx:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->kx:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->nh:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->nh:I

    const-string v0, "dev_level"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->k:Ljava/lang/String;

    const-string v0, "dev04"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fw()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev08"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->h:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->h:Ljava/lang/String;

    return-object v0
.end method

.method public fw(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->wp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->wp:Ljava/lang/String;

    const-string v0, "dev05"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public gh()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->bl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev18"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->bl:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->bl:Ljava/lang/String;

    return-object v0
.end method

.method public gh(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->h:Ljava/lang/String;

    const-string v0, "dev08"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h()I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->er:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "cypher_version"

    const v1, 0x9c41

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->er:I

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->er:I

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->wn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->wn:Ljava/lang/String;

    const-string v0, "dev16"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->op:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev10"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->op:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->op:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->bl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->bl:Ljava/lang/String;

    const-string v0, "dev18"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ia()I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->kk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "live_ad_clk_cnt"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->kk:I

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->kk:I

    return v0
.end method

.method public ia(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->jy:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "keywords"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->jy:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->jy:Ljava/lang/String;

    return-object p1
.end method

.method public ia(I)V
    .locals 1

    const-string v0, "sp_device_app_direction"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public ig()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->le:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev02"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->le:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->le:Ljava/lang/String;

    return-object v0
.end method

.method public ig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->gh:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "extra_internal_data"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->gh:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->gh:Ljava/lang/String;

    return-object p1
.end method

.method public ig(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->gx:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->gx:I

    const-string v0, "spl_thread_conf"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public ir()I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->by:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "spl_comm_conf"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->by:I

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->by:I

    return v0
.end method

.method public iw()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ia:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ab_test_param"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ia:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ia:Ljava/lang/String;

    return-object v0
.end method

.method public iw(I)Ljava/lang/String;
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->r:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :try_start_0
    const-string p1, "logsdk_version"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "plugin_version"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "log_version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->r:Ljava/lang/String;

    const/16 v0, 0x19cf

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->r:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ob()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ob()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->r:Ljava/lang/String;

    return-object p1
.end method

.method public iw(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->q:Ljava/lang/String;

    const-string v0, "dev03"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ob:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "spl_strategy"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ob:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ob:Ljava/lang/String;

    return-object v0
.end method

.method public ji()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->wn:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev16"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->wn:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->wn:Ljava/lang/String;

    return-object v0
.end method

.method public ji(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq:Ljava/lang/String;

    const-string v0, "drop_cache_black_conf"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public jy(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->uh:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->uh:I

    const-string v0, "splash_render_timeout_backup"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public jy(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->le:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->le:Ljava/lang/String;

    const-string v0, "dev02"

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public jy()Z
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->e:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "dl_storage_internal"

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->e:I

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->e:I

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public k()Lorg/json/JSONArray;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->u:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    const-string v0, "dev12"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->u:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->u:Lorg/json/JSONArray;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->op:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->op:Ljava/lang/String;

    const-string v0, "dev10"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public kk()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "app_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->o:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->o:Ljava/lang/String;

    return-object v0
.end method

.method public kk(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->er:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->er:I

    const-string v0, "cypher_version"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public kk(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->cd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->cd:Ljava/lang/String;

    const-string v0, "extra_data"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public kx()I
    .locals 2

    const-string v0, "sp_device_app_direction"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public kx(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ce:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ce:Ljava/lang/String;

    const-string v0, "dev15"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public le()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ir:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev11"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ir:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ir:Ljava/lang/String;

    return-object v0
.end method

.method public le(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->n:Ljava/lang/String;

    const-string v0, "dev09"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public mn()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ia:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->mn:Ljava/lang/String;

    const-string v1, "ab_test_version"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ab_test_param"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public mn(I)V
    .locals 1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->e:I

    const-string v0, "dl_storage_internal"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public mn(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->jy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->jy:Ljava/lang/String;

    const-string v0, "keywords"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public mp()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev04"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->k:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->k:Ljava/lang/String;

    return-object v0
.end method

.method public mp(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->by:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->by:I

    const-string v0, "spl_comm_conf"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public mp(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->i:Ljava/lang/String;

    const-string v0, "dev01"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public n()I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "spl_cache_conf"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->l:I

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->l:I

    return v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ob:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ob:Ljava/lang/String;

    const-string p1, "spl_strategy"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ob:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public nh()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->vf()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public no()I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "age_group"

    const/high16 v1, -0x80000000

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->f:I

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->f:I

    return v0
.end method

.method public no(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->l:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->l:I

    const-string v0, "spl_cache_conf"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public no(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->gh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->gh:Ljava/lang/String;

    const-string v0, "extra_internal_data"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->no:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "app_name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->no:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->no:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->cd:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "extra_data"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->cd:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->cd:Ljava/lang/String;

    return-object p1
.end method

.method public o(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public op()I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->gx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "spl_thread_conf"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->gx:I

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->gx:I

    return v0
.end method

.method public ox()I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "max"

    const/16 v1, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p:I

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p:I

    return v0
.end method

.method public ox(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "time"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long p1, v4, p2

    if-gtz p1, :cond_2

    const-string p1, "value"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    return-object v1
.end method

.method public ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_exec_getad_config"

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->vf()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    return-object p2
.end method

.method public ox(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->f:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->f:I

    const-string v0, "age_group"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->o:Ljava/lang/String;

    const-string v0, "app_id"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ox(Z)V
    .locals 1

    const-string v0, "is_spl_cache_remove_change"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;Z)V

    return-void
.end method

.method public p()F
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->iw:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const-string v0, "max"

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->iw:F

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->iw:F

    return v0
.end method

.method public p(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "p_version"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v2, 0x19cf

    if-ge v2, p1, :cond_2

    return-object v1

    :cond_2
    const-string p1, "time"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long p1, v4, p2

    if-gtz p1, :cond_3

    const-string p1, "value"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_3
    return-object v1
.end method

.method public p(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->fw:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->fw:I

    const-string v0, "sdk_theme_status"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->no:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->no:Ljava/lang/String;

    const-string v0, "app_name"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "p_version"

    const/16 v1, 0x19cf

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public p(Z)Z
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->mp:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const-string v0, "is_use_mediation"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->mp:I

    :cond_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->mp:I

    if-ne p1, v2, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public q()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->wp:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev05"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->wp:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->wp:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev01"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->i:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->i:Ljava/lang/String;

    return-object p1
.end method

.method public q(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->t:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->t:I

    const-string v0, "spl_cache_expired"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev09"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->n:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->n:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ji:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ji:Ljava/lang/String;

    const-string v0, "dev17"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s(I)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->fw:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "sdk_theme_status"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->fw:I

    :cond_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->fw:I

    return p1
.end method

.method public s()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->mn:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ab_test_version"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->mn:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->mn:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev03"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->q:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->q:Ljava/lang/String;

    return-object p1
.end method

.method public s(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->mp:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->mp:I

    const-string v0, "is_use_mediation"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public u()J
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "spl_cache_expired"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->t:I

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->t:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public wn()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->vf:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "net_qty"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->vf:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->vf:Ljava/lang/String;

    return-object v0
.end method

.method public wp()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev13"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method public wp(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ir:Ljava/lang/String;

    const-string v0, "dev11"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

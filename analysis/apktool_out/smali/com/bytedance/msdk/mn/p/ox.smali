.class public Lcom/bytedance/msdk/mn/p/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/mn/d;


# static fields
.field private static volatile dq:Lcom/bytedance/msdk/mn/p/ox;


# instance fields
.field private d:Lcom/bytedance/msdk/ia/bl;

.field private ia:I

.field private iw:I

.field private kk:I

.field private mn:I

.field private ox:I

.field private p:J

.field private s:I


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/msdk/mn/p/ox;->ox:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/bytedance/msdk/mn/p/ox;->p:J

    iput v0, p0, Lcom/bytedance/msdk/mn/p/ox;->s:I

    iput v0, p0, Lcom/bytedance/msdk/mn/p/ox;->iw:I

    iput v0, p0, Lcom/bytedance/msdk/mn/p/ox;->mn:I

    iput v0, p0, Lcom/bytedance/msdk/mn/p/ox;->ia:I

    iput v0, p0, Lcom/bytedance/msdk/mn/p/ox;->kk:I

    invoke-static {}, Lcom/bytedance/msdk/mn/s;->d()Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/mn/p/ox;->d:Lcom/bytedance/msdk/ia/bl;

    return-void
.end method

.method private declared-synchronized d()Lorg/json/JSONObject;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/ox;->d:Lcom/bytedance/msdk/ia/bl;

    const-string v1, "app_common_config"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v2

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public static dq()Lcom/bytedance/msdk/mn/p/ox;
    .locals 2

    sget-object v0, Lcom/bytedance/msdk/mn/p/ox;->dq:Lcom/bytedance/msdk/mn/p/ox;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/msdk/mn/p/ox;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/msdk/mn/p/ox;->dq:Lcom/bytedance/msdk/mn/p/ox;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/msdk/mn/p/ox;

    invoke-direct {v1}, Lcom/bytedance/msdk/mn/p/ox;-><init>()V

    sput-object v1, Lcom/bytedance/msdk/mn/p/ox;->dq:Lcom/bytedance/msdk/mn/p/ox;

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
    sget-object v0, Lcom/bytedance/msdk/mn/p/ox;->dq:Lcom/bytedance/msdk/mn/p/ox;

    return-object v0
.end method

.method private declared-synchronized dq(Lorg/json/JSONObject;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "event_batch_size"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/msdk/mn/p/ox;->ox:I

    if-lez v0, :cond_0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_1

    :cond_0
    iput v1, p0, Lcom/bytedance/msdk/mn/p/ox;->ox:I

    :cond_1
    const-string v0, "event_routine_interval"

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/msdk/mn/p/ox;->p:J

    const-wide/16 v5, 0x2710

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    const-wide/32 v5, 0x493e0

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    :cond_2
    iput-wide v1, p0, Lcom/bytedance/msdk/mn/p/ox;->p:J

    :cond_3
    const-string v0, "dynamic_adapter_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/msdk/mn/p/ox;->s:I

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_4

    iput v1, p0, Lcom/bytedance/msdk/mn/p/ox;->s:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_4
    :goto_0
    const-string v0, "rv_start_time"

    const/16 v3, 0x1388

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/msdk/mn/p/ox;->mn:I

    const-string v0, "wf_dynamic_adapter_type"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/msdk/mn/p/ox;->iw:I

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_5

    iput v1, p0, Lcom/bytedance/msdk/mn/p/ox;->iw:I

    :cond_5
    const-string v0, "pre_fetch_count"

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/core/s/d/p;->dq(I)V

    const-string v0, "adapter_plugin_loader_gdt"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/msdk/mn/p/ox;->ia:I

    const-string v0, "can_log"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/msdk/mn/p/ox;->kk:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized d(Lorg/json/JSONObject;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/mn/p/ox;->dq(Lorg/json/JSONObject;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/ox;->d:Lcom/bytedance/msdk/ia/bl;

    const-string v1, "app_common_config"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public ia()I
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/mn/p/ox;->mn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/ox;->d:Lcom/bytedance/msdk/ia/bl;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/mn/p/ox;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/mn/p/ox;->dq(Lorg/json/JSONObject;)V

    iget v0, p0, Lcom/bytedance/msdk/mn/p/ox;->mn:I

    return v0

    :cond_0
    const/16 v0, 0x1388

    :cond_1
    return v0
.end method

.method public iw()I
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/mn/p/ox;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/ox;->d:Lcom/bytedance/msdk/ia/bl;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/mn/p/ox;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/mn/p/ox;->dq(Lorg/json/JSONObject;)V

    iget v0, p0, Lcom/bytedance/msdk/mn/p/ox;->s:I

    return v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public declared-synchronized kk()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/bytedance/msdk/mn/p/ox;->ia:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/ox;->d:Lcom/bytedance/msdk/ia/bl;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/msdk/mn/p/ox;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/mn/p/ox;->dq(Lorg/json/JSONObject;)V

    iget v0, p0, Lcom/bytedance/msdk/mn/p/ox;->ia:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    return v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v2

    :cond_2
    monitor-exit p0

    if-ne v0, v3, :cond_3

    return v3

    :cond_3
    return v2

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public mn()I
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/mn/p/ox;->iw:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/ox;->d:Lcom/bytedance/msdk/ia/bl;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/mn/p/ox;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/mn/p/ox;->dq(Lorg/json/JSONObject;)V

    iget v0, p0, Lcom/bytedance/msdk/mn/p/ox;->iw:I

    return v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public no()Z
    .locals 4

    iget v0, p0, Lcom/bytedance/msdk/mn/p/ox;->kk:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/ox;->d:Lcom/bytedance/msdk/ia/bl;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/mn/p/ox;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/mn/p/ox;->dq(Lorg/json/JSONObject;)V

    iget v0, p0, Lcom/bytedance/msdk/mn/p/ox;->kk:I

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    if-ne v0, v3, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/mn/p/ox;->ia:I

    return v0
.end method

.method public declared-synchronized p()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/bytedance/msdk/mn/p/ox;->ox:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/ox;->d:Lcom/bytedance/msdk/ia/bl;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/mn/p/ox;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/mn/p/ox;->dq(Lorg/json/JSONObject;)V

    iget v0, p0, Lcom/bytedance/msdk/mn/p/ox;->ox:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/16 v0, 0x64

    return v0

    :cond_1
    monitor-exit p0

    return v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized s()J
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/msdk/mn/p/ox;->p:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/ox;->d:Lcom/bytedance/msdk/ia/bl;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/mn/p/ox;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/mn/p/ox;->dq(Lorg/json/JSONObject;)V

    iget-wide v0, p0, Lcom/bytedance/msdk/mn/p/ox;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const-wide/32 v0, 0x1d4c0

    return-wide v0

    :cond_1
    monitor-exit p0

    return-wide v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

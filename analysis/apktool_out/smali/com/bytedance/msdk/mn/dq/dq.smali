.class public Lcom/bytedance/msdk/mn/dq/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/mn/d/d;
.implements Lcom/bytedance/msdk/mn/dq/d;


# static fields
.field private static volatile dq:Lcom/bytedance/msdk/mn/dq/dq;


# instance fields
.field private d:Lcom/bytedance/msdk/mn/dq/d;

.field private ox:Lcom/bytedance/msdk/mn/d/d;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/msdk/mn/d/dq;

    invoke-direct {v0}, Lcom/bytedance/msdk/mn/d/dq;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->ox:Lcom/bytedance/msdk/mn/d/d;

    return-void
.end method

.method public static jy()Lcom/bytedance/msdk/mn/dq/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/msdk/mn/dq/dq;->dq:Lcom/bytedance/msdk/mn/dq/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/msdk/mn/dq/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/msdk/mn/dq/dq;->dq:Lcom/bytedance/msdk/mn/dq/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/msdk/mn/dq/dq;

    invoke-direct {v1}, Lcom/bytedance/msdk/mn/dq/dq;-><init>()V

    sput-object v1, Lcom/bytedance/msdk/mn/dq/dq;->dq:Lcom/bytedance/msdk/mn/dq/dq;

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
    sget-object v0, Lcom/bytedance/msdk/mn/dq/dq;->dq:Lcom/bytedance/msdk/mn/dq/dq;

    return-object v0
.end method


# virtual methods
.method public cd()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->ox:Lcom/bytedance/msdk/mn/d/d;

    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d/d;->cd()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/dq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/msdk/mn/dq;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->i()Z

    move-result v0

    const-string v1, "init_splash_fill_duration"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    sget-object v2, Lcom/bytedance/msdk/s/dq;->ox:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/mn/dq/dq;->ox(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->r()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->le()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->r()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public d(Lorg/json/JSONArray;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/mn/dq/dq$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/mn/dq/dq$2;-><init>(Lcom/bytedance/msdk/mn/dq/dq;Lorg/json/JSONArray;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/mn/d;->d(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/mn/dq/dq;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/dq;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/dq;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/msdk/mn/ox;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    return-object p1
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/bytedance/msdk/mn/dq;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/dq;

    move-result-object p1

    return-object p1
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/mn/dq;->dq()V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/mn/p;->dq(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized dq(Ljava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/d;->ox(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/core/d;->ox(Z)V

    invoke-static {}, Lcom/bytedance/msdk/mn/p/d;->jy()Lcom/bytedance/msdk/mn/p/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->ig()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/msdk/mn/dq/d;->dq(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dq(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->i()Z

    move-result v0

    const-string v1, "init_splash_request_duration"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->gh()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->le()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->gh()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public dq(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/mn/ox;->dq(Lorg/json/JSONArray;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/mn/dq/dq;->d(Lorg/json/JSONArray;)V

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/mn/dq;->dq(Lorg/json/JSONObject;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/mn/dq/dq;->ox(Lorg/json/JSONObject;)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->ox:Lcom/bytedance/msdk/mn/d/d;

    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d/d;->f()V

    return-void
.end method

.method public fw()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->ox:Lcom/bytedance/msdk/mn/d/d;

    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d/d;->fw()V

    return-void
.end method

.method public gh()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->ox:Lcom/bytedance/msdk/mn/d/d;

    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d/d;->gh()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->ox:Lcom/bytedance/msdk/mn/d/d;

    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d/d;->i()Z

    move-result v0

    return v0
.end method

.method public ia()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-nez v0, :cond_0

    const/16 v0, 0x1388

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d;->ia()I

    move-result v0

    return v0
.end method

.method public ig()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/mn/ox;->ig()V

    :cond_0
    return-void
.end method

.method public iw()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d;->iw()I

    move-result v0

    return v0
.end method

.method public k()Lcom/bytedance/msdk/mn/dq/d;
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/mn/p/d;->jy()Lcom/bytedance/msdk/mn/p/d;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->ig()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/d;->mp()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/msdk/mn/dq/d;->dq(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public kk()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d;->kk()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public le()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->ox:Lcom/bytedance/msdk/mn/d/d;

    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d/d;->le()Z

    move-result v0

    return v0
.end method

.method public mn()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d;->mn()I

    move-result v0

    return v0
.end method

.method public mp()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/msdk/mn/ox;->mp()Z

    move-result v0

    return v0
.end method

.method public no()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d;->no()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d;->o()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public ox(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->ox:Lcom/bytedance/msdk/mn/d/d;

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/mn/d/d;->ox(Ljava/lang/String;)V

    return-void
.end method

.method public ox(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->i()Z

    move-result v0

    const-string v1, "call_init_method_duration"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->cd()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    sget-object v2, Lcom/bytedance/msdk/s/dq;->ox:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/mn/dq/dq;->ox(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->cd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->le()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->cd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public ox(Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/mn/dq/dq$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/mn/dq/dq$1;-><init>(Lcom/bytedance/msdk/mn/dq/dq;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/msdk/mn/dq;->ox()Z

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-nez v0, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d;->p()I

    move-result v0

    return v0
.end method

.method public q()Lcom/bytedance/msdk/ia/bl;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/mn/p;->q()Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/mn/s;->mn()Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    return-object v0
.end method

.method public r()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->ox:Lcom/bytedance/msdk/mn/d/d;

    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d/d;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public s()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/mn/dq/dq;->d:Lcom/bytedance/msdk/mn/dq/d;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x1d4c0

    return-wide v0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d;->s()J

    move-result-wide v0

    return-wide v0
.end method

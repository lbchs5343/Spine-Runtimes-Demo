.class public Lcom/bytedance/msdk/mn/p/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/mn/d;
.implements Lcom/bytedance/msdk/mn/dq;
.implements Lcom/bytedance/msdk/mn/dq/d;
.implements Lcom/bytedance/msdk/mn/ox;


# static fields
.field private static volatile dq:Lcom/bytedance/msdk/mn/p/d;


# instance fields
.field private d:Lcom/bytedance/msdk/mn/d;

.field private ox:Lcom/bytedance/msdk/mn/dq;

.field private p:Lcom/bytedance/msdk/mn/ox;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jy()Lcom/bytedance/msdk/mn/p/d;
    .locals 2

    sget-object v0, Lcom/bytedance/msdk/mn/p/d;->dq:Lcom/bytedance/msdk/mn/p/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/msdk/mn/p/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/msdk/mn/p/d;->dq:Lcom/bytedance/msdk/mn/p/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/msdk/mn/p/d;

    invoke-direct {v1}, Lcom/bytedance/msdk/mn/p/d;-><init>()V

    sput-object v1, Lcom/bytedance/msdk/mn/p/d;->dq:Lcom/bytedance/msdk/mn/p/d;

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
    sget-object v0, Lcom/bytedance/msdk/mn/p/d;->dq:Lcom/bytedance/msdk/mn/p/d;

    return-object v0
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->ox:Lcom/bytedance/msdk/mn/dq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/msdk/mn/dq;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->d:Lcom/bytedance/msdk/mn/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/mn/d;->d(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->p:Lcom/bytedance/msdk/mn/ox;

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

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->ox:Lcom/bytedance/msdk/mn/dq;

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

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->ox:Lcom/bytedance/msdk/mn/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/mn/dq;->dq()V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;Z)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/mn/p/d;->d:Lcom/bytedance/msdk/mn/d;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/mn/p/ox;->dq()Lcom/bytedance/msdk/mn/p/ox;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/mn/p/d;->d:Lcom/bytedance/msdk/mn/d;

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/mn/p/d;->ox:Lcom/bytedance/msdk/mn/dq;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/mn/p/dq;->p()Lcom/bytedance/msdk/mn/p/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/mn/p/d;->ox:Lcom/bytedance/msdk/mn/dq;

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/mn/p/d;->p:Lcom/bytedance/msdk/mn/ox;

    if-nez p1, :cond_2

    invoke-static {}, Lcom/bytedance/msdk/mn/p/p;->dq()Lcom/bytedance/msdk/mn/p/p;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/mn/p/d;->p:Lcom/bytedance/msdk/mn/ox;

    :cond_2
    return-void
.end method

.method public dq(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->p:Lcom/bytedance/msdk/mn/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/mn/ox;->dq(Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->ox:Lcom/bytedance/msdk/mn/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/mn/dq;->dq(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public ia()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->d:Lcom/bytedance/msdk/mn/d;

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

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->p:Lcom/bytedance/msdk/mn/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/mn/ox;->ig()V

    :cond_0
    return-void
.end method

.method public iw()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->d:Lcom/bytedance/msdk/mn/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d;->iw()I

    move-result v0

    return v0
.end method

.method public kk()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->d:Lcom/bytedance/msdk/mn/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d;->kk()Z

    move-result v0

    return v0
.end method

.method public mn()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->d:Lcom/bytedance/msdk/mn/d;

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

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->p:Lcom/bytedance/msdk/mn/ox;

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

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->d:Lcom/bytedance/msdk/mn/d;

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

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->d:Lcom/bytedance/msdk/mn/d;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d;->o()I

    move-result v0

    return v0
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->ox:Lcom/bytedance/msdk/mn/dq;

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

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->d:Lcom/bytedance/msdk/mn/d;

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

    invoke-static {}, Lcom/bytedance/msdk/mn/s;->ia()Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    return-object v0
.end method

.method public s()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/mn/p/d;->d:Lcom/bytedance/msdk/mn/d;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x1d4c0

    return-wide v0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/msdk/mn/d;->s()J

    move-result-wide v0

    return-wide v0
.end method

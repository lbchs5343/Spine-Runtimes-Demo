.class public abstract Lcom/bytedance/msdk/ox/ox/d/dq/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/dq/d;
.implements Lcom/bytedance/msdk/ox/dq/dq;


# instance fields
.field private d:Z

.field protected dq:Lcom/bytedance/msdk/ox/dq/d;

.field private ox:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/dq/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d;->d:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d;->ox:Z

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq:Lcom/bytedance/msdk/ox/dq/d;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/d/dq/d;Landroid/content/Context;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->ox(Landroid/content/Context;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;)V

    return-void
.end method

.method private dq(Lcom/bytedance/msdk/ox/s/d/d;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->ig()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/bytedance/msdk/core/ox/ox;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ox(Landroid/content/Context;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/ox/s/d/d;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d;->d:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d;->ox:Z

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->d(Landroid/content/Context;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;)V

    invoke-direct {p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/ox/s/d/d;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->d(Landroid/content/Context;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;)V

    invoke-direct {p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/ox/s/d/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Lcom/bytedance/msdk/api/dq;

    invoke-static {p1}, Lcom/bytedance/msdk/core/f/d;->dq(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public abstract d(Landroid/content/Context;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/ox/s/d/d;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d;->d:Z

    return v0
.end method

.method public final dq(Landroid/content/Context;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/ox/s/d/d;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "mintegral"

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "baidu"

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "admob"

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Lcom/bytedance/msdk/ox/ox/d/dq/d$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/msdk/ox/ox/d/dq/d$1;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d;Landroid/content/Context;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->ox(Landroid/content/Context;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d;->ox:Z

    iget-boolean v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d;->d:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d;->d:Z

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq:Lcom/bytedance/msdk/ox/dq/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/ox/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/d/s;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Ljava/util/List;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/d/s;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq:Lcom/bytedance/msdk/ox/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/ox/dq/d;->dq(Lcom/bytedance/msdk/d/s;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d;->d:Z

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq:Lcom/bytedance/msdk/ox/dq/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/ox/dq/d;->dq(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Lcom/bytedance/msdk/api/dq;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d;->ox:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq:Lcom/bytedance/msdk/ox/dq/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/ox/dq/d;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d;->ox:Z

    return v0
.end method

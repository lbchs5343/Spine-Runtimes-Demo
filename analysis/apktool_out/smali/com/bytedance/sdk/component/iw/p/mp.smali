.class public Lcom/bytedance/sdk/component/iw/p/mp;
.super Lcom/bytedance/sdk/component/iw/p/dq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/component/iw/p/dq;"
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/component/iw/iw;

.field private dq:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private ox:Z

.field private p:[B


# direct methods
.method public constructor <init>(Ljava/lang/Object;[BLcom/bytedance/sdk/component/iw/iw;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[B",
            "Lcom/bytedance/sdk/component/iw/iw;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/iw/p/dq;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/p/mp;->dq:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bytedance/sdk/component/iw/p/mp;->d:Lcom/bytedance/sdk/component/iw/iw;

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/iw/p/mp;->ox:Z

    iput-object p2, p0, Lcom/bytedance/sdk/component/iw/p/mp;->p:[B

    return-void
.end method

.method private d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/p/mp;->d:Lcom/bytedance/sdk/component/iw/iw;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/iw;->s()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private d(Lcom/bytedance/sdk/component/iw/ox/ox;)V
    .locals 5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->no()Lcom/bytedance/sdk/component/iw/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->mp()I

    move-result v1

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/component/iw/p/mp;->dq:Ljava/lang/Object;

    const/4 v3, 0x3

    const/16 v4, 0x7d0

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/p/mp;->p:[B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->r()Lcom/bytedance/sdk/component/iw/ox/iw;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->i()Lcom/bytedance/sdk/component/iw/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/iw/ox/iw;->d(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/gh;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->iw()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/iw/dq;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/bytedance/sdk/component/iw/p/mp;->p:[B

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/p/mp;->p:[B

    if-eqz v1, :cond_1

    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/p/mp;->dq:Ljava/lang/Object;

    goto :goto_0

    :goto_1
    instance-of v1, v2, [B

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "final data is not raw"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4, v3, v1}, Lcom/bytedance/sdk/component/iw/f;->dq(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    instance-of v1, v2, [B

    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->r()Lcom/bytedance/sdk/component/iw/ox/iw;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/iw/ox/iw;->dq(Lcom/bytedance/sdk/component/iw/ox/ox;)Lcom/bytedance/sdk/component/iw/ox/d/dq;

    move-result-object v1

    check-cast v2, [B

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/iw/ox/d/dq;->dq([B)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    const-string v1, "decode failed"

    invoke-interface {v0, v4, v1, p1}, Lcom/bytedance/sdk/component/iw/f;->dq(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    :goto_2
    new-instance v1, Lcom/bytedance/sdk/component/iw/ox/p;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/iw/ox/p;-><init>()V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/iw/p/mp;->d()Ljava/util/Map;

    move-result-object v3

    iget-boolean v4, p0, Lcom/bytedance/sdk/component/iw/p/mp;->ox:Z

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/bytedance/sdk/component/iw/ox/p;->dq(Lcom/bytedance/sdk/component/iw/ox/ox;Ljava/lang/Object;Ljava/util/Map;Z)Lcom/bytedance/sdk/component/iw/ox/p;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/iw/f;->dq(Lcom/bytedance/sdk/component/iw/no;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public dq()Ljava/lang/String;
    .locals 1

    const-string v0, "success"

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/ox/ox;)V
    .locals 4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->wp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->r()Lcom/bytedance/sdk/component/iw/ox/iw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/iw/ox/iw;->mn()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/iw/p/mp;->d(Lcom/bytedance/sdk/component/iw/ox/ox;)V

    return-void

    :cond_0
    monitor-enter v2

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/iw/ox/ox;

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/component/iw/p/mp;->d(Lcom/bytedance/sdk/component/iw/ox/ox;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

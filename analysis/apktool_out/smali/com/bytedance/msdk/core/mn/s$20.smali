.class Lcom/bytedance/msdk/core/mn/s$20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/mn/s;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/mn/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/mn/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/s$20;->dq:Lcom/bytedance/msdk/core/mn/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$20;->dq:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v1, Lcom/bytedance/msdk/core/mn/ox;->o:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$20;->dq:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v1, Lcom/bytedance/msdk/core/mn/ox;->r:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$20;->dq:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v1, Lcom/bytedance/msdk/core/mn/ox;->cd:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$20;->dq:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v1, Lcom/bytedance/msdk/core/mn/ox;->gh:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$20;->dq:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v1, Lcom/bytedance/msdk/core/mn/s;->yy:Lcom/bytedance/msdk/d/s;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->p()V

    :cond_4
    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$20;->dq:Lcom/bytedance/msdk/core/mn/s;

    invoke-static {v1}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/core/mn/s;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$20;->dq:Lcom/bytedance/msdk/core/mn/s;

    invoke-static {v1}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/core/mn/s;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v2, v0}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq$dq;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$20;->dq:Lcom/bytedance/msdk/core/mn/s;

    invoke-static {v1}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/core/mn/s;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_7
    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$20;->dq:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v1, Lcom/bytedance/msdk/core/mn/ox;->le:Lcom/bytedance/msdk/core/mn/ia;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/mn/ia;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {}, Lcom/bytedance/msdk/dq/s/ox;->d()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$20;->dq:Lcom/bytedance/msdk/core/mn/s;

    iput-object v0, v1, Lcom/bytedance/msdk/core/mn/s;->t:Lcom/bytedance/msdk/dq/d/iw;

    iput-object v0, v1, Lcom/bytedance/msdk/core/mn/s;->gx:Lcom/bytedance/msdk/dq/d/iw;

    iput-object v0, v1, Lcom/bytedance/msdk/core/mn/s;->ob:Lcom/bytedance/msdk/core/f/ox;

    iput-object v0, v1, Lcom/bytedance/msdk/core/mn/ox;->ia:Ljava/util/Map;

    iput-object v0, v1, Lcom/bytedance/msdk/core/mn/s;->ha:Lcom/bytedance/msdk/api/p/no;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bytedance/msdk/core/mn/s;->xz:Z

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$20;->dq:Lcom/bytedance/msdk/core/mn/s;

    iget-boolean v1, v1, Lcom/bytedance/msdk/core/mn/s;->by:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$20;->dq:Lcom/bytedance/msdk/core/mn/s;

    new-instance v2, Lcom/bytedance/msdk/api/d/dq;

    const v3, 0xa054

    invoke-static {v3}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/msdk/core/mn/s;->d(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V

    :cond_9
    return-void
.end method

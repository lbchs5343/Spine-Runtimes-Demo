.class Lcom/bytedance/msdk/core/f/d$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private final d:Lcom/bytedance/msdk/api/p/s;

.field final synthetic dq:Lcom/bytedance/msdk/core/f/d;

.field private ox:I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/f/d;Lcom/bytedance/msdk/api/p/s;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/f/d$d;->dq:Lcom/bytedance/msdk/core/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/msdk/core/f/d$d;->d:Lcom/bytedance/msdk/api/p/s;

    iput p3, p0, Lcom/bytedance/msdk/core/f/d$d;->ox:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/d$d;->dq:Lcom/bytedance/msdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/ia/e;->dq(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/d$d;->dq:Lcom/bytedance/msdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/msdk/core/f/d;->d(Lcom/bytedance/msdk/core/f/d;)Lcom/bytedance/msdk/core/f/dq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/core/f/dq;->dq(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/f/d$d;->dq:Lcom/bytedance/msdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/msdk/core/f/d;->ox(Lcom/bytedance/msdk/core/f/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->ji()Z

    move-result v0

    invoke-static {}, Lcom/bytedance/msdk/core/f/d;->p()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/d;->dq(Z)Z

    invoke-static {v0}, Lcom/bytedance/msdk/s/iw;->dq(Z)V

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/ia/p/dq;->dq()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/d$d;->dq:Lcom/bytedance/msdk/core/f/d;

    iget-object v2, p0, Lcom/bytedance/msdk/core/f/d$d;->d:Lcom/bytedance/msdk/api/p/s;

    iget v3, p0, Lcom/bytedance/msdk/core/f/d$d;->ox:I

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/d;ZLcom/bytedance/msdk/api/p/s;I)V

    :catchall_0
    :cond_2
    return-void
.end method

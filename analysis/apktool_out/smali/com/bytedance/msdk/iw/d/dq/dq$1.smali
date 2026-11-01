.class Lcom/bytedance/msdk/iw/d/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/iw/d/dq/dq;->dq(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/iw/d/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/iw/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/iw/d/dq/dq$1;->dq:Lcom/bytedance/msdk/iw/d/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/dq/dq$1;->dq:Lcom/bytedance/msdk/iw/d/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq/dq;->dq(Lcom/bytedance/msdk/iw/d/dq/dq;)V

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/dq/dq$1;->dq:Lcom/bytedance/msdk/iw/d/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq/dq;->d(Lcom/bytedance/msdk/iw/d/dq/dq;)V

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/dq/dq$1;->dq:Lcom/bytedance/msdk/iw/d/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq/dq;->ox(Lcom/bytedance/msdk/iw/d/dq/dq;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/dq/dq$1;->dq:Lcom/bytedance/msdk/iw/d/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq/dq;->p(Lcom/bytedance/msdk/iw/d/dq/dq;)V

    return-void
.end method

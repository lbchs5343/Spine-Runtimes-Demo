.class Lcom/bytedance/msdk/iw/d/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/iw/d/dq;->dq(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/iw/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/iw/d/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/iw/d/dq$2;->dq:Lcom/bytedance/msdk/iw/d/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/dq$2;->dq:Lcom/bytedance/msdk/iw/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/d/dq;->kk()V

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/dq$2;->dq:Lcom/bytedance/msdk/iw/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/d/dq;->iw()V

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/dq$2;->dq:Lcom/bytedance/msdk/iw/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/d/dq;->mn()V

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/dq$2;->dq:Lcom/bytedance/msdk/iw/d/dq;

    iget-object v0, v0, Lcom/bytedance/msdk/iw/d/dq;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/dq$2;->dq:Lcom/bytedance/msdk/iw/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/d/dq;->jy()V

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/dq$2;->dq:Lcom/bytedance/msdk/iw/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/d/dq;->f()V

    return-void
.end method

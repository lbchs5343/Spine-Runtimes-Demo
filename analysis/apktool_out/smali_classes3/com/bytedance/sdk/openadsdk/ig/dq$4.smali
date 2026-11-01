.class Lcom/bytedance/sdk/openadsdk/ig/dq$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ig/dq;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/ig/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/ig/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/ig/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/ig/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/ig/dq;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/ig/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ig/dq;->p()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/ig/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/ig/dq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

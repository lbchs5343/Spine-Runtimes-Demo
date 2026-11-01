.class Lcom/bytedance/sdk/component/adexpress/dq/d/s$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dq/d/s;->ia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/adexpress/dq/d/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dq/d/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s$1;->dq:Lcom/bytedance/sdk/component/adexpress/dq/d/s;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/d/ia;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s$1;->dq:Lcom/bytedance/sdk/component/adexpress/dq/d/s;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->dq(Lcom/bytedance/sdk/component/adexpress/dq/d/s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s$1;->dq:Lcom/bytedance/sdk/component/adexpress/dq/d/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->ox()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dq/d/s$1;->dq:Lcom/bytedance/sdk/component/adexpress/dq/d/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dq/d/s;->iw()V

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->ox()Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->ox()Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/fw;->dq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->ox()Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dq/d/s$1$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/adexpress/dq/d/s$1$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dq/d/s$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

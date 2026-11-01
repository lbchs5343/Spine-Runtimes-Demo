.class Lcom/bytedance/msdk/core/mn/s$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/mn/s;->f()V
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

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/s$9;->dq:Lcom/bytedance/msdk/core/mn/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$9;->dq:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$9;->dq:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->iw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$9;->dq:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->iw:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$9;->dq:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$9;->dq:Lcom/bytedance/msdk/core/mn/s;

    iget-object v0, v0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/s$9;->dq:Lcom/bytedance/msdk/core/mn/s;

    iget-object v1, v1, Lcom/bytedance/msdk/core/mn/ox;->kk:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "m-sdk----\u8bbe\u7f6e cacheTimeout \u5df2\u5230\u65f6\u95f4\u3010"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/s$9;->dq:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/mn/ox;->gh()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/s$9;->dq:Lcom/bytedance/msdk/core/mn/s;

    iget-object v3, v3, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/msdk/core/f/ox;->dq(ILjava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u3011\uff0c\u7ed9\u5916\u90e8invokeAdVideoCache ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$9;->dq:Lcom/bytedance/msdk/core/mn/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/ox;->i_()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/s$9;->dq:Lcom/bytedance/msdk/core/mn/s;

    invoke-static {v0}, Lcom/bytedance/msdk/core/mn/s;->ox(Lcom/bytedance/msdk/core/mn/s;)V

    new-instance v0, Lcom/bytedance/msdk/core/mn/s$9$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/mn/s$9$1;-><init>(Lcom/bytedance/msdk/core/mn/s$9;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method

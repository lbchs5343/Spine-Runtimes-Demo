.class Lcom/bytedance/msdk/ox/p/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/p/o;->ox(Lcom/bytedance/msdk/d/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/ox/p/o;

.field final synthetic dq:Lcom/bytedance/msdk/d/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/o;Lcom/bytedance/msdk/d/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/o$1;->d:Lcom/bytedance/msdk/ox/p/o;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/p/o$1;->dq:Lcom/bytedance/msdk/d/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/o$1;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/o$1;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->fx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/o$1;->d:Lcom/bytedance/msdk/ox/p/o;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/d;->p:Lcom/bytedance/msdk/d/s;

    instance-of v0, v0, Lcom/bytedance/msdk/api/p/dq/d/ox;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/o$1;->d:Lcom/bytedance/msdk/ox/p/o;

    iget-object v1, v1, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/o$1;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/s;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5728show\u65f6\u89e6\u53d1\u4e86\u9884\u52a0\u8f7d\u3010"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/o$1;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u3011, loadSort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/o$1;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->ae()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showSort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/o$1;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/o$1;->d:Lcom/bytedance/msdk/ox/p/o;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/msdk/ox/p/o;->fw:Z

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/o$1;->d:Lcom/bytedance/msdk/ox/p/o;

    iget-object v1, v1, Lcom/bytedance/msdk/ox/p/d;->ia:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/o$1;->d:Lcom/bytedance/msdk/ox/p/o;

    iget-object v3, v2, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v2, v2, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->s()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/bytedance/msdk/core/s/d/p;->d(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

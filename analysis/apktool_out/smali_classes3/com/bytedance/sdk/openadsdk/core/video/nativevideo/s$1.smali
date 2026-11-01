.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->n:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->kx:Landroid/content/Context;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->e:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/core/o/s;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->n:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ir:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->n:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->u:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->n:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;)Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->n:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;)Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->n:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->s(Z)V

    :cond_4
    return-void
.end method

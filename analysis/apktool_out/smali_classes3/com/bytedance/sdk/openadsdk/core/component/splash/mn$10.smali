.class Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Z

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;ZJLcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$10;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$10;->dq:Z

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$10;->d:J

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$10;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$10;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$10;->dq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$10;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ia(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/r/jw;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$10;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->f(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/r/jw;

    move-result-object v0

    :goto_0
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$10;->d:J

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->p(Lcom/bytedance/sdk/openadsdk/core/r/jw;J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$10;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$10;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$10;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wp(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$10;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$10;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->e(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;)V

    :cond_1
    return-void
.end method

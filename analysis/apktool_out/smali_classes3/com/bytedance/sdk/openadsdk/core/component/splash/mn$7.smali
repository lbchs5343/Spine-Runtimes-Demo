.class Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Z

.field final synthetic iw:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;

.field final synthetic mn:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;ZJLcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;->mn:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;->dq:Z

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;->d:J

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;->iw:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;->dq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;->mn:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ia(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/r/jw;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;->mn:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->f(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/r/jw;

    move-result-object v0

    :goto_0
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;->d:J

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->p(Lcom/bytedance/sdk/openadsdk/core/r/jw;J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;->mn:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;->iw:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->iw()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;Z)V

    return-void
.end method

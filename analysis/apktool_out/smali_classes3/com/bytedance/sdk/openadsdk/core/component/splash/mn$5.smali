.class Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;

.field final synthetic dq:J

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;JLcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$5;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$5;->dq:J

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$5;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$5;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ia(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/r/jw;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$5;->dq:J

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->p(Lcom/bytedance/sdk/openadsdk/core/r/jw;J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$5;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$5;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->o(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$5;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->no(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$5;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$5;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->o(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->iw()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;Z)V

    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/core/p/d/d$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p/d/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/p/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/d/d;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/d$1;->ox:Lcom/bytedance/sdk/openadsdk/core/p/d/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/d$1;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/d$1;->ox:Lcom/bytedance/sdk/openadsdk/core/p/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/p/d/d;)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/d$1;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    return-void
.end method

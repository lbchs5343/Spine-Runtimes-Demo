.class Lcom/bytedance/sdk/openadsdk/core/p/p/p$3;
.super Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p/p/p;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/p/p/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/p/p;Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$3;->ox:Lcom/bytedance/sdk/openadsdk/core/p/p/p;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$3;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$3;->d:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;)V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$3;->ox:Lcom/bytedance/sdk/openadsdk/core/p/p/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$3;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$3;->d:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    invoke-static {v0, v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/p;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/p;->dq(Z)V

    return-void
.end method

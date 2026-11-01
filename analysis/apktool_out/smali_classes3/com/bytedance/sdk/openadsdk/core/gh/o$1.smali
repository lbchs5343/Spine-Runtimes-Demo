.class Lcom/bytedance/sdk/openadsdk/core/gh/o$1;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/gh/o;->dq(Lcom/bytedance/sdk/component/ia/dq/dq/ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/gh/o;

.field final synthetic dq:Lcom/bytedance/sdk/component/ia/dq/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/gh/o;Lcom/bytedance/sdk/component/ia/dq/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/o$1;->d:Lcom/bytedance/sdk/openadsdk/core/gh/o;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/gh/o$1;->dq:Lcom/bytedance/sdk/component/ia/dq/dq/ox;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/o$1;->dq:Lcom/bytedance/sdk/component/ia/dq/dq/ox;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/gh/p;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/p;-><init>(Lcom/bytedance/sdk/component/kk/d/p;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/gh/s;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/s;-><init>(Lcom/bytedance/sdk/component/kk/d;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/gh/o$1;->dq:Lcom/bytedance/sdk/component/ia/dq/dq/ox;

    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/component/ia/dq/dq/ox;->dq(Lcom/bytedance/sdk/component/ia/dq/dq/p;Lcom/bytedance/sdk/component/ia/dq/dq/s;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/o$1;->dq:Lcom/bytedance/sdk/component/ia/dq/dq/ox;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/gh/p;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/p;-><init>(Lcom/bytedance/sdk/component/kk/d/p;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/o$1;->dq:Lcom/bytedance/sdk/component/ia/dq/dq/ox;

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/ia/dq/dq/ox;->dq(Lcom/bytedance/sdk/component/ia/dq/dq/p;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method

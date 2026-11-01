.class Lcom/bytedance/sdk/openadsdk/core/p/d/p$2;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p/d/p;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/p/d/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/d/p;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$2;->ox:Lcom/bytedance/sdk/openadsdk/core/p/d/p;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$2;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$2;->ox:Lcom/bytedance/sdk/openadsdk/core/p/d/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/p/d/p;)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq(I)Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/mn$dq;->kk()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$2;->ox:Lcom/bytedance/sdk/openadsdk/core/p/d/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/p/d/p;)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p/d/p$2;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :cond_1
    return-void
.end method

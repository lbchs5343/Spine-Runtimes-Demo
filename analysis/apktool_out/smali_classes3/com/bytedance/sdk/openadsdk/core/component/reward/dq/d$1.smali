.class Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;->dq(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d$1;->dq:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;->dq()Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d$1;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->f()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->h()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v7, v5, v3

    if-gez v7, :cond_2

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(Ljava/lang/String;)V

    :cond_2
    if-nez v2, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    :cond_3
    :goto_1
    return-void
.end method

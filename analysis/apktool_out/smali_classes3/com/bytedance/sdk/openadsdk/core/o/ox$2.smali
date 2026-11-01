.class Lcom/bytedance/sdk/openadsdk/core/o/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ir/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Landroid/content/Intent;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Intent;

.field final synthetic dq:J

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/o/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox;JLandroid/content/Intent;Lcom/bytedance/sdk/openadsdk/core/ir/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$2;->p:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$2;->dq:J

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$2;->d:Landroid/content/Intent;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$2;->ox:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$2;->dq:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$2;->p:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$2;->d:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox;Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$2;->ox:Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/dq;->ox()V

    :cond_1
    return-void
.end method

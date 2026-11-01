.class Lcom/bytedance/sdk/openadsdk/core/ir/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ir/d;->dq(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/ir/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ir/d;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$2;->ox:Lcom/bytedance/sdk/openadsdk/core/ir/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$2;->dq:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$2;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$2;->ox:Lcom/bytedance/sdk/openadsdk/core/ir/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/d;->p(Lcom/bytedance/sdk/openadsdk/core/ir/d;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$2;->dq:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$2;->ox:Lcom/bytedance/sdk/openadsdk/core/ir/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/d;->p(Lcom/bytedance/sdk/openadsdk/core/ir/d;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$2;->dq:Ljava/lang/String;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$2;->d:J

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$2;->ox:Lcom/bytedance/sdk/openadsdk/core/ir/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/d;->s(Lcom/bytedance/sdk/openadsdk/core/ir/d;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$2;->ox:Lcom/bytedance/sdk/openadsdk/core/ir/d;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/d$2;->d:J

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ir/d;J)V

    return-void
.end method

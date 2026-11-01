.class Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic p:J

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;->s:Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;->p:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;->dq(ILjava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->d(Ljava/lang/Runnable;)V

    return-void
.end method

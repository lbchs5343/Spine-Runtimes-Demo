.class Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/d;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/dq;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;->s:Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;->d:Landroid/content/Context;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-wide v5, v0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;->p:J

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/d;

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;Lcom/bytedance/sdk/openadsdk/core/r/dq;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;JLcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method

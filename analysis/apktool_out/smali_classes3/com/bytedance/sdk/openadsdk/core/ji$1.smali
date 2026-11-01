.class Lcom/bytedance/sdk/openadsdk/core/ji$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/nh;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic ox:I

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/dq/dq;

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/ji;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ji;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$1;->s:Lcom/bytedance/sdk/openadsdk/core/ji;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ji$1;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ji$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/ji$1;->ox:I

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/ji$1;->p:Lcom/bytedance/sdk/openadsdk/core/dq/dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ji$1;->s:Lcom/bytedance/sdk/openadsdk/core/ji;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$1;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/ji$1;->ox:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ji$1;->p:Lcom/bytedance/sdk/openadsdk/core/dq/dq;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ji;->p(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V

    return-void
.end method

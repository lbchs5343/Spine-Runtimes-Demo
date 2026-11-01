.class Lcom/bytedance/sdk/openadsdk/core/p/p/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p/p/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/p/p/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/nh;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic ox:I

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/p/p/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/p/p;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/p/p/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$1;->s:Lcom/bytedance/sdk/openadsdk/core/p/p/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$1;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$1;->ox:I

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$1;->p:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$1;->s:Lcom/bytedance/sdk/openadsdk/core/p/p/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$1;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$1;->ox:I

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/p/p/iw;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$1;->p:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    invoke-direct {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/p/p/iw;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/p/s;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/p/p/s;)V

    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/core/ji$22;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ji;->s(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/nh;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic ox:I

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/h$d;

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/ji;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ji;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$22;->s:Lcom/bytedance/sdk/openadsdk/core/ji;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ji$22;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ji$22;->d:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/ji$22;->ox:I

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/ji$22;->p:Lcom/bytedance/sdk/openadsdk/core/h$d;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ji$22;->s:Lcom/bytedance/sdk/openadsdk/core/ji;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$22;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$22;->d:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/ji$22;->ox:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ji$22;->p:Lcom/bytedance/sdk/openadsdk/core/h$d;

    const-string v5, "/api/ad/union/server_bidding/pre_fetch/"

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;Ljava/lang/String;I)V

    return-void
.end method

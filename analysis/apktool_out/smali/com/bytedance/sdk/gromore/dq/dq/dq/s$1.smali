.class Lcom/bytedance/sdk/gromore/dq/dq/dq/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/gromore/dq/dq/dq/s;->dq(Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/gromore/dq/dq/dq/s;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/dq/dq/dq/s;Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/s$1;->d:Lcom/bytedance/sdk/gromore/dq/dq/dq/s;

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/s$1;->dq:Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/s$1;->dq:Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/dq;->d()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/s$1;->dq:Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/dq;->dq()V

    :cond_0
    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/s$1;->dq:Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/dq;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

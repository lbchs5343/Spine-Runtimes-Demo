.class Lcom/bytedance/sdk/gromore/dq/dq/dq/ox$1;
.super Lcom/bytedance/msdk/api/p/dq/dq/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox$1;->d:Lcom/bytedance/sdk/gromore/dq/dq/dq/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/d;

    invoke-direct {p0}, Lcom/bytedance/msdk/api/p/dq/dq/p;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/msdk/api/p/dq/dq/ox;)Landroid/view/View;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/d;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;-><init>(Lcom/bytedance/msdk/api/p/dq/dq/ox;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/d/dq;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

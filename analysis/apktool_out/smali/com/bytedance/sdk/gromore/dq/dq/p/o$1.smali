.class Lcom/bytedance/sdk/gromore/dq/dq/p/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/gromore/dq/dq/p/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/gromore/dq/dq/p/o;->setShakeViewListener(Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/iw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/gromore/dq/dq/p/o;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/dq/dq/p/o;Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/o$1;->d:Lcom/bytedance/sdk/gromore/dq/dq/p/o;

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/o$1;->dq:Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/o$1;->dq:Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/iw;->dq()V

    :cond_0
    return-void
.end method

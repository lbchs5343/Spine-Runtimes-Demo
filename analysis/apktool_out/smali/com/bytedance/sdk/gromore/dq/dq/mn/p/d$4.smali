.class Lcom/bytedance/sdk/gromore/dq/dq/mn/p/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/mn/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/gromore/dq/dq/mn/p/d;->kx()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/d$4;->dq:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/d$4;->dq:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/d;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/d;->iw(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/d;)Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/d$4;->dq:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/d;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/d;->iw(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/d;)Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;->dq(I)V

    :cond_0
    return-void
.end method

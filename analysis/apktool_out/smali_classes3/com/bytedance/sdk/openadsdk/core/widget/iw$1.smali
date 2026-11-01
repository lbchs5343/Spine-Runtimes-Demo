.class Lcom/bytedance/sdk/openadsdk/core/widget/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/iw;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/widget/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/widget/iw;->iw:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/iw;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/widget/iw;->s:Lcom/bytedance/sdk/openadsdk/core/widget/iw$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/iw$dq;->dq(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/core/widget/ox$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/ox;->ox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/widget/ox;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/ox;)Lcom/bytedance/sdk/openadsdk/core/widget/ox$dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/ox;)Lcom/bytedance/sdk/openadsdk/core/widget/ox$dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/ox$dq;->d(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/core/widget/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/p;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/widget/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/p$2;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/widget/p;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/p$2;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/p;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/p;)Lcom/bytedance/sdk/openadsdk/core/widget/p$dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/p$2;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/p;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/p;)Lcom/bytedance/sdk/openadsdk/core/widget/p$dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/p$2;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/p;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/p$dq;->ox(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

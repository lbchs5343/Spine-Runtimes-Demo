.class Lcom/bytedance/sdk/openadsdk/core/EmptyView$d$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;->dq(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;

.field final synthetic dq:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d$4;->d:Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d$4;->dq:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d$4;->d:Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;->dq(Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;)Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d$4;->dq:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;->dq(Landroid/view/View;)V

    return-void
.end method

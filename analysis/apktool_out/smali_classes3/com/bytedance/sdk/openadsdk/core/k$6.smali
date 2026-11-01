.class Lcom/bytedance/sdk/openadsdk/core/k$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/i$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/k;->iw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:F

.field final synthetic dq:F

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/k;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/k;FF)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$6;->ox:Lcom/bytedance/sdk/openadsdk/core/k;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/k$6;->dq:F

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/k$6;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$6;->ox:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->cd(Lcom/bytedance/sdk/openadsdk/core/k;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$6;->ox:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->gh(Lcom/bytedance/sdk/openadsdk/core/k;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/er;->dq(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$6;->ox:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->r(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$6;->dq:F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/k$6;->d:F

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/k$6;->ox:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/k;->i(Lcom/bytedance/sdk/openadsdk/core/k;)J

    move-result-wide v2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq(Ljava/lang/ref/WeakReference;FFJ)V

    return-void
.end method

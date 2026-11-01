.class Lcom/bytedance/sdk/openadsdk/core/widget/fw$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/fw;->d()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/widget/fw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/fw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/fw;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/fw;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/fw;)Lcom/bytedance/sdk/openadsdk/core/widget/fw$dq;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/fw;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/fw;)Lcom/bytedance/sdk/openadsdk/core/widget/fw$dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/fw;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->d(Lcom/bytedance/sdk/openadsdk/core/widget/fw;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/fw$dq;->dq(Ljava/lang/String;)V

    return-void
.end method

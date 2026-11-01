.class Lcom/bytedance/sdk/openadsdk/core/widget/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/s;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/widget/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/s;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/s;)Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/s;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/s;)Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/s;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;->s(Landroid/app/Dialog;)V

    return-void
.end method

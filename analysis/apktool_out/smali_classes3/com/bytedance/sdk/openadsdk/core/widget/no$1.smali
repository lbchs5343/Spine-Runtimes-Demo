.class Lcom/bytedance/sdk/openadsdk/core/widget/no$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/no;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/widget/no;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/no;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/no$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/no;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/no$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/no;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/no$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/no;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/no;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/no;)Lcom/bytedance/sdk/openadsdk/core/widget/no$dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/no$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/no;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/no;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/no;)Lcom/bytedance/sdk/openadsdk/core/widget/no$dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/no$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/no;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/no$dq;->dq(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

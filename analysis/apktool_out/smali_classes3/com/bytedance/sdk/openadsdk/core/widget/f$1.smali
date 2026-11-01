.class Lcom/bytedance/sdk/openadsdk/core/widget/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/f;->dq(Landroid/content/Context;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/widget/f;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/f;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/f;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/f;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/f;->d(Lcom/bytedance/sdk/openadsdk/core/widget/f;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$1;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/f;->d(Lcom/bytedance/sdk/openadsdk/core/widget/f;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/dq;

    move-result-object p1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/f$dq;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/f$dq;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/f$dq;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

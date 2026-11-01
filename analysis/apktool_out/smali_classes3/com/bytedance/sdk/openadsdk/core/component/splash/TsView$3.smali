.class Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView$3;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/j;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView$3;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView$3;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

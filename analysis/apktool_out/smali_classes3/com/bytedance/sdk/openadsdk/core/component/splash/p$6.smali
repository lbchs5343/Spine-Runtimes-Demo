.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->dq(Lcom/bytedance/sdk/openadsdk/core/le/dq/d;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$6;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$6;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$6;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->d:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->s(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$6;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->s(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

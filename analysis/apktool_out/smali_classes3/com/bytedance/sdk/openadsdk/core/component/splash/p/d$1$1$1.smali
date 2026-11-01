.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1$1;->dq(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->ia:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/k;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1$1;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->ia:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dq(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ox;)V

    :cond_0
    return-void
.end method

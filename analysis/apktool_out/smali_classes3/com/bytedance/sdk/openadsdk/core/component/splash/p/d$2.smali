.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/d/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/view/ViewGroup;I)Z
    .locals 2

    :try_start_0
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SplashExpressBackupView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SplashExpressBackupView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->kx:Lcom/bytedance/sdk/openadsdk/core/le/dq/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p2, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SplashExpressBackupView;->dq(Lcom/bytedance/sdk/openadsdk/core/le/dq/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SplashExpressBackupView;->getVideoController()Lcom/bykv/vk/openvk/component/video/api/p/ox;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SplashExpressBackupView;->getVideoController()Lcom/bykv/vk/openvk/component/video/api/p/ox;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bl:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/SplashExpressBackupView;->setVideoAdListener(Lcom/bykv/vk/openvk/component/video/api/p/ox$ox;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->mp()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->dq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

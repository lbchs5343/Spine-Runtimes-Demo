.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/d/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/j;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$2;->d:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/view/ViewGroup;I)Z
    .locals 2

    :try_start_0
    move-object p2, p1

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->gh()V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$2;->d:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    invoke-virtual {p2, v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$2;->d:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->iw(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->setDislikeInner(Lcom/bytedance/sdk/openadsdk/f/d/d/ia;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$2;->d:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->mn(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->setDislikeOuter(Landroid/app/Dialog;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$2;->d:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ez()Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$2;->d:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->mn:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.class Lcom/bytedance/sdk/openadsdk/core/component/splash/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/s;->dq(Lcom/bytedance/sdk/openadsdk/core/le/dq/d;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/s;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/s;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;->d()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/s$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/s;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v0, "splash_ad"

    const-string v1, "close_splash_icon"

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

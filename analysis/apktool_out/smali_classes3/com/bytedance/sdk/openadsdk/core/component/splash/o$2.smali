.class Lcom/bytedance/sdk/openadsdk/core/component/splash/o$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/splash/dq;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;->d()V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)V

    return-void
.end method

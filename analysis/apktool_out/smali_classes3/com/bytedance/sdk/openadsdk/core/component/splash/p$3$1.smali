.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3;->dq(Lcom/bytedance/sdk/component/iw/no;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3;

.field final synthetic dq:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3$1;->dq:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3$1;->dq:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/p;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p$3$1;->dq:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

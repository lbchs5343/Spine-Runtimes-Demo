.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$12$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$12;->dq(Lcom/bytedance/sdk/component/iw/no;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$12;

.field final synthetic dq:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$12;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$12$1;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$12;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$12$1;->dq:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$12$1;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$12;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$12;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->mn(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$12$1;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$12;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$12;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->mn(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$12$1;->dq:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

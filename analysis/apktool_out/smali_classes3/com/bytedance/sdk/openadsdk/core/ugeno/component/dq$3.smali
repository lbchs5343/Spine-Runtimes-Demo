.class Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;->dq(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;

.field final synthetic dq:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq$3;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq$3;->dq:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq$3;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq$3;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;->p(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lg/cdf;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq$3;->dq:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lg/cdf;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

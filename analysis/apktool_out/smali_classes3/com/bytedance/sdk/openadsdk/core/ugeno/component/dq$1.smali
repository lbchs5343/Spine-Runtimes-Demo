.class Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;->dq:Ljava/lang/String;

    const-string v1, "local://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "id"

    invoke-static {v2, v0, v3}, Lg/acw;->as(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/dq;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

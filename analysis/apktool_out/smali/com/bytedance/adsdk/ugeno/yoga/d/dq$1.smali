.class Lcom/bytedance/adsdk/ugeno/yoga/d/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lg/ebz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->wp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/adsdk/ugeno/yoga/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$1;->dq:Lcom/bytedance/adsdk/ugeno/yoga/d/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$1;->dq:Lcom/bytedance/adsdk/ugeno/yoga/d/dq;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->dq(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$1;->dq:Lcom/bytedance/adsdk/ugeno/yoga/d/dq;

    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->d(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Lg/dxo;->c(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$1$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$1$1;-><init>(Lcom/bytedance/adsdk/ugeno/yoga/d/dq$1;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lg/dxo;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

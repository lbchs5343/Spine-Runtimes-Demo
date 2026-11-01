.class Lcom/bytedance/sdk/component/ig/dq/dq$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ig/dq/dq;->le()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/ig/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ig/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq$5;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$5;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->mn(Lcom/bytedance/sdk/component/ig/dq/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$5;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->mn(Lcom/bytedance/sdk/component/ig/dq/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$5;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ig/dq/dq;->dq(Lcom/bytedance/sdk/component/ig/dq/dq;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$5;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ig/dq/dq;->dq(Lcom/bytedance/sdk/component/ig/dq/dq;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    invoke-static {}, Lcom/bytedance/sdk/component/o/d/dq;->dq()Lcom/bytedance/sdk/component/o/d/dq;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/dq/dq$5;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/component/ig/dq/dq;->mn(Lcom/bytedance/sdk/component/ig/dq/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/o/d/dq;->dq(Lcom/bytedance/sdk/component/utils/e;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$5;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ig/dq/dq;->dq(Lcom/bytedance/sdk/component/ig/dq/dq;Lcom/bytedance/sdk/component/utils/e;)Lcom/bytedance/sdk/component/utils/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

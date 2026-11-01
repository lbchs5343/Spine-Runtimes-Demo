.class Lcom/bytedance/sdk/component/ig/d/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ig/d/d;->dq(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/ig/d/d;

.field final synthetic dq:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ig/d/d;Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/d/d$2;->d:Lcom/bytedance/sdk/component/ig/d/d;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ig/d/d$2;->dq:Landroid/view/SurfaceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d$2;->d:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/d/d;->ox(Lcom/bytedance/sdk/component/ig/d/d;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/d/d$2;->d:Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/d/d;->ox(Lcom/bytedance/sdk/component/ig/d/d;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    const/16 v1, 0x6e

    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/d/d$2;->dq:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

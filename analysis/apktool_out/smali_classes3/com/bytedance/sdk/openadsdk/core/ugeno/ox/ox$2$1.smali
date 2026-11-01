.class Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->dq(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->fw:Lcom/bytedance/sdk/component/utils/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/utils/i;->dq()Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->fw:Lcom/bytedance/sdk/component/utils/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/utils/i;->d()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->dq:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p1, v0

    return-void
.end method

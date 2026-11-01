.class Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/i$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox(Lg/fzc;Lg/dvh;Lg/eho;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lg/dvh;

.field final synthetic dq:[F

.field final synthetic iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

.field final synthetic ox:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic p:Lg/fzc;

.field final synthetic s:Lg/eho;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;[FLg/dvh;Ljava/util/concurrent/atomic/AtomicBoolean;Lg/fzc;Lg/eho;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->dq:[F

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->d:Lg/dvh;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->p:Lg/fzc;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->s:Lg/eho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(I)V
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->fw:Lcom/bytedance/sdk/component/utils/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/utils/i;->d()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->dq:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p1, v1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->d:Lg/dvh;

    check-cast p1, Lg/dlv;

    invoke-virtual {p1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->p:Lg/fzc;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->d:Lg/dvh;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox$2;->s:Lg/eho;

    invoke-static {p1, v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;Lg/fzc;Lg/dvh;Lg/eho;I)V

    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->d(Landroid/view/ViewGroup;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/view/View;

.field final synthetic dq:Landroid/view/ViewGroup;

.field final synthetic ox:Z

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw$2;->dq:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw$2;->d:Landroid/view/View;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw$2;->ox:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw$2;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw$2;->dq:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw$2;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView;

    move-result-object v3

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/iw$2;->ox:Z

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;ZZ)V

    return-void
.end method

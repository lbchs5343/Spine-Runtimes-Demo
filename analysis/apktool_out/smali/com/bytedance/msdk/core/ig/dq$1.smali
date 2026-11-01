.class Lcom/bytedance/msdk/core/ig/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/dq/d/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/ig/dq;->ha()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/ig/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/ig/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/ig/dq$1;->dq:Lcom/bytedance/msdk/core/ig/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C_()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/ig/dq$1;->dq:Lcom/bytedance/msdk/core/ig/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/ig/dq;->dq(Lcom/bytedance/msdk/core/ig/dq;)Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/ig/dq$1;->dq:Lcom/bytedance/msdk/core/ig/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/ig/dq;->dq(Lcom/bytedance/msdk/core/ig/dq;)Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    move-result-object v0

    const-string v1, "banner ad closed"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;->dq(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public a_(Lcom/bytedance/msdk/api/dq;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ig/dq$1;->dq:Lcom/bytedance/msdk/core/ig/dq;

    invoke-static {v0, p1}, Lcom/bytedance/msdk/core/ig/dq;->d(Lcom/bytedance/msdk/core/ig/dq;Landroid/view/View;)V

    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/ig/dq$1;->dq:Lcom/bytedance/msdk/core/ig/dq;

    invoke-static {v0, p1}, Lcom/bytedance/msdk/core/ig/dq;->dq(Lcom/bytedance/msdk/core/ig/dq;Landroid/view/View;)V

    return-void
.end method

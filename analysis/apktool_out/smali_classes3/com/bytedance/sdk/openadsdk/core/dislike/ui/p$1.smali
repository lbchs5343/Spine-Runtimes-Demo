.class Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/f/d/d/iw;

.field final synthetic dq:I

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;ILcom/bytedance/sdk/openadsdk/f/d/d/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$1;->ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$1;->dq:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$1;->d:Lcom/bytedance/sdk/openadsdk/f/d/d/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$1;->ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$1;->ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$dq;

    move-result-object p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$1;->dq:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$1;->d:Lcom/bytedance/sdk/openadsdk/f/d/d/iw;

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$dq;->dq(ILcom/bytedance/sdk/openadsdk/f/d/d/iw;)V

    :cond_0
    return-void
.end method

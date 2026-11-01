.class Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;)Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;)Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->d(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;)Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;->dq()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;

    invoke-interface {p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;->dq(ILcom/bytedance/sdk/openadsdk/f/d/d/iw;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;Z)Z

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

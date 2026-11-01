.class Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;)Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;)Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;->dq()V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dismiss()V

    return-void
.end method

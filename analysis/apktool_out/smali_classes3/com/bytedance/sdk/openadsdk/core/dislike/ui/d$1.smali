.class Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;->dq(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;->d(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;)Lcom/bytedance/sdk/openadsdk/core/dislike/d/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;->d(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;)Lcom/bytedance/sdk/openadsdk/core/dislike/d/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/d/dq;->dq(Ljava/lang/String;Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/ox;

    const-string v1, "0:00"

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/ox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;->ox(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;)Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;Lcom/bytedance/sdk/openadsdk/f/d/d/iw;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;->p(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;)Lcom/bytedance/sdk/openadsdk/core/dislike/d/d;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/d/d;->dq(ILcom/bytedance/sdk/openadsdk/f/d/d/iw;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

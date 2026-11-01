.class Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$3;
.super Lcom/bytedance/sdk/openadsdk/core/widget/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/ig/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/ox;-><init>(Lcom/bytedance/sdk/openadsdk/core/c;Lcom/bytedance/sdk/openadsdk/core/ig/p;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/ox;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;I)I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->s(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->s(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$dq;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->iw(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$dq;->d(I)V

    :cond_0
    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/core/i/ox$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/i/ox;->d(Landroid/app/Dialog;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:[I

.field final synthetic dq:Landroid/app/Dialog;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/i/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/i/ox;Landroid/app/Dialog;[I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$4;->ox:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$4;->dq:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$4;->d:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$4;->ox:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->mn(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$4;->ox:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->mn(Lcom/bytedance/sdk/openadsdk/core/i/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ez()Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$4;->dq:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/ox$4;->d:[I

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;Landroid/app/Dialog;[I)V

    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

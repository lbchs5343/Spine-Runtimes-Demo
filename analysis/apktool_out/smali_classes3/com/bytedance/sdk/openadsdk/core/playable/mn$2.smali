.class Lcom/bytedance/sdk/openadsdk/core/playable/mn$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/playable/mn;->dq(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/playable/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/playable/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/mn;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d(Lcom/bytedance/sdk/openadsdk/core/playable/mn;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/mn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->dq()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/mn;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ox(Lcom/bytedance/sdk/openadsdk/core/playable/mn;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->d()V

    :cond_0
    return-void
.end method

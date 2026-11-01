.class Lcom/bytedance/sdk/openadsdk/core/d/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/p;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/d/p;

.field final synthetic dq:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/p;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/p$1;->dq:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p$1;->dq:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/p$1;->dq:Landroid/view/View;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/p;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    :cond_0
    return-void
.end method

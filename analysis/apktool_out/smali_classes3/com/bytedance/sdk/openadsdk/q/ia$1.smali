.class Lcom/bytedance/sdk/openadsdk/q/ia$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/q/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/q/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/q/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/q/ia$1;->dq:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/q/ia$1;->dq:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(Lcom/bytedance/sdk/openadsdk/q/ia;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/q/ia$1;->dq:Lcom/bytedance/sdk/openadsdk/q/ia;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(Lcom/bytedance/sdk/openadsdk/q/ia;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "PlayablePlugin"

    const-string v2, "onSizeChanged error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/q/mn;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

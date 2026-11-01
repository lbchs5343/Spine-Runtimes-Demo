.class Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$2;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$2;->dq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$2;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$2;->dq:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$2;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->d(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$2;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->d(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

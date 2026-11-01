.class Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$2;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$2;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$2;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$2;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->s(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u5373\u5c06\u8df3\u8f6c\u5fae\u4fe1..."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$2;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$2;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toast error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;)V

    return-void
.end method

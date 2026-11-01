.class final Lcom/bytedance/sdk/component/utils/k$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/utils/k;->d(Landroid/content/Context;Landroid/content/Intent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic dq:Z

.field final synthetic ox:Z

.field final synthetic p:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Context;ZLandroid/content/Intent;)V
    .locals 0

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/utils/k$1;->dq:Z

    iput-object p3, p0, Lcom/bytedance/sdk/component/utils/k$1;->d:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/utils/k$1;->ox:Z

    iput-object p5, p0, Lcom/bytedance/sdk/component/utils/k$1;->p:Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/utils/k$1;->dq:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/k$1;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/k;->dq(Landroid/content/Context;)I

    move-result v0

    :goto_0
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/k;->dq(I)I

    invoke-static {}, Lcom/bytedance/sdk/component/utils/k;->dq()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/utils/k$1;->ox:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/k$1;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/component/utils/k$1;->p:Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/sdk/component/utils/k;->d()I

    move-result v2

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/utils/k$1;->dq:Z

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/utils/k;->dq(Landroid/content/Context;Landroid/content/Intent;IZ)V

    :cond_1
    return-void
.end method

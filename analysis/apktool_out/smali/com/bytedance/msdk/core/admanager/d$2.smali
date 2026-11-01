.class Lcom/bytedance/msdk/core/admanager/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/d;->dq(Landroid/os/Handler;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/os/Handler;

.field final synthetic dq:Landroid/app/Activity;

.field final synthetic ox:Lcom/bytedance/msdk/core/admanager/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/d;Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/d$2;->ox:Lcom/bytedance/msdk/core/admanager/d;

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/d$2;->dq:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bytedance/msdk/core/admanager/d$2;->d:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/d$2;->ox:Lcom/bytedance/msdk/core/admanager/d;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/d$2;->dq:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/admanager/d;->dq(Lcom/bytedance/msdk/core/admanager/d;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/d$2;->ox:Lcom/bytedance/msdk/core/admanager/d;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/d;->s(Lcom/bytedance/msdk/core/admanager/d;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "2\u79d2\u540e\u64ad\u653e\u4e0b\u4e00\u4e2a\u5e7f\u544a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/d$2;->d:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/msdk/core/admanager/d$dq;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/bytedance/msdk/core/admanager/d$dq;-><init>(Landroid/widget/Toast;ILandroid/os/Handler;Lcom/bytedance/msdk/core/admanager/d$1;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

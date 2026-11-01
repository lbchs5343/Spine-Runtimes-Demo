.class Lcom/bytedance/msdk/ox/p/p$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/p/p;->ia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/d/s;

.field final synthetic dq:Landroid/app/Activity;

.field final synthetic ox:Landroid/app/Activity;

.field final synthetic p:Lcom/bytedance/msdk/ox/p/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/p;Landroid/app/Activity;Lcom/bytedance/msdk/d/s;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/p$3;->p:Lcom/bytedance/msdk/ox/p/p;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/p/p$3;->dq:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bytedance/msdk/ox/p/p$3;->d:Lcom/bytedance/msdk/d/s;

    iput-object p4, p0, Lcom/bytedance/msdk/ox/p/p$3;->ox:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/p$3;->p:Lcom/bytedance/msdk/ox/p/p;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/p$3;->dq:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ox/p/p;->dq(Lcom/bytedance/msdk/ox/p/p;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/p$3;->p:Lcom/bytedance/msdk/ox/p/p;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/p;->s(Lcom/bytedance/msdk/ox/p/p;)V

    return-void

    :cond_0
    const-string v0, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad \u5f00\u59cb\uff0c\u5148showingActivity finish"

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/p$3;->p:Lcom/bytedance/msdk/ox/p/p;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/bytedance/msdk/ox/p/p;->jy:Z

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/p$3;->dq:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/p$3;->d:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->p()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/p$3;->p:Lcom/bytedance/msdk/ox/p/p;

    new-instance v2, Ljava/lang/ref/SoftReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ox/p/p;->dq(Lcom/bytedance/msdk/ox/p/p;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    const-string v0, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\u5f00\u59cb showingActivity finish end"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/p$3;->p:Lcom/bytedance/msdk/ox/p/p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ox/p/p;->dq(Lcom/bytedance/msdk/ox/p/p;Z)Z

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/p$3;->p:Lcom/bytedance/msdk/ox/p/p;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/p$3;->ox:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/p;->ox(Lcom/bytedance/msdk/ox/p/p;)Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/ox/p/p$3;->p:Lcom/bytedance/msdk/ox/p/p;

    invoke-static {v3}, Lcom/bytedance/msdk/ox/p/p;->p(Lcom/bytedance/msdk/ox/p/p;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/msdk/ox/p/p;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    return-void
.end method

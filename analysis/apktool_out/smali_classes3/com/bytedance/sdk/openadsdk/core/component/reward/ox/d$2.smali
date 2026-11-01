.class Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/s$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

.field final synthetic dq:Ljava/util/concurrent/CountDownLatch;

.field final synthetic ox:Landroid/view/ViewGroup;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/sdk/openadsdk/core/widget/mn;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;->dq:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;->d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;->ox:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;-><init>(ZILjava/lang/String;)V

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mp:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;->dq:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;->d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;->ox:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/mn;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->kk:Lcom/bytedance/sdk/openadsdk/core/r/xi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->p()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;->d:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;-><init>(ZILjava/lang/String;Landroid/app/Dialog;)V

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mp:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$2;->dq:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

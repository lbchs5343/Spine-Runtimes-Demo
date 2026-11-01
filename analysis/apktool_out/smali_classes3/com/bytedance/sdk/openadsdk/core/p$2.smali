.class Lcom/bytedance/sdk/openadsdk/core/p$2;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p;->dq(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->ox:Lcom/bytedance/sdk/openadsdk/core/p;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->d:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->ox:Lcom/bytedance/sdk/openadsdk/core/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Lcom/bytedance/sdk/openadsdk/core/p;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->ox:Lcom/bytedance/sdk/openadsdk/core/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Lcom/bytedance/sdk/openadsdk/core/p;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn;->dq()Lcom/bytedance/sdk/openadsdk/core/mn;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/o;->ox()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/no;->kk()Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)Lcom/bytedance/sdk/openadsdk/dq/dq/dq;

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/kk;->dq()Lcom/bytedance/sdk/component/panglearmor/kk;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jy/d;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jy/d;->dq(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Init sync exception: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;)V

    return-void
.end method

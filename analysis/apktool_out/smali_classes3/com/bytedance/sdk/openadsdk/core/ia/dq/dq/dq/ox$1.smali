.class Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->dq(Ljava/util/Map;Landroid/content/Intent;Z)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/Map;

.field final synthetic dq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic ox:Z

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Map;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->d:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->ox:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->d(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lp_openurl"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->d(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lp_deeplink_success_realtime"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->d(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deeplink_success_realtime"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->d(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;I)V

    return-void
.end method

.method public dq(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->d:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->ox:Z

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;Ljava/util/Map;Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;I)V

    return-void
.end method

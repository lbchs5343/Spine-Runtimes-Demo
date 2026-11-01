.class final Lcom/bytedance/sdk/component/panglearmor/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/panglearmor/iw;->d()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/panglearmor/ia;

.field final synthetic dq:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/bytedance/sdk/component/panglearmor/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/panglearmor/iw$1;->dq:Landroid/os/Handler;

    iput-object p2, p0, Lcom/bytedance/sdk/component/panglearmor/iw$1;->d:Lcom/bytedance/sdk/component/panglearmor/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/iw;->o()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/iw;->no()Lcom/bytedance/sdk/component/panglearmor/mn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/panglearmor/mn;->dq()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    invoke-static {v2}, Lcom/bytedance/sdk/component/panglearmor/d;->dq(Landroid/app/Application;)Lcom/bytedance/sdk/component/panglearmor/d;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/panglearmor/iw;->dq(Lcom/bytedance/sdk/component/panglearmor/d;)Lcom/bytedance/sdk/component/panglearmor/d;

    iget-object v2, p0, Lcom/bytedance/sdk/component/panglearmor/iw$1;->dq:Landroid/os/Handler;

    invoke-static {v2}, Lcom/bytedance/sdk/component/panglearmor/iw;->dq(Landroid/os/Handler;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/iw;->no()Lcom/bytedance/sdk/component/panglearmor/mn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/panglearmor/mn;->dq()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/panglearmor/s;->dq(Landroid/content/Context;)V

    sget-wide v2, Lcom/bytedance/sdk/component/panglearmor/SoftDecTool;->acs:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/SoftDecTool;->ua()V

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/iw;->no()Lcom/bytedance/sdk/component/panglearmor/mn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/panglearmor/mn;->dq()Landroid/content/Context;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const/16 v2, 0x3e9

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/panglearmor/iw;->dq(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/component/panglearmor/iw;->dq(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v2}, Lcom/bytedance/sdk/component/panglearmor/iw;->dq(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/panglearmor/iw;->dq(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/bytedance/sdk/component/panglearmor/iw$1;->d:Lcom/bytedance/sdk/component/panglearmor/ia;

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/iw;->ig()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/dq/dq;->dq()Lcom/bytedance/sdk/component/panglearmor/dq/dq;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/iw;->no()Lcom/bytedance/sdk/component/panglearmor/mn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/panglearmor/mn;->dq()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/iw;->no()Lcom/bytedance/sdk/component/panglearmor/mn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/panglearmor/mn;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/panglearmor/dq/dq;->dq(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/component/panglearmor/iw$1;->d:Lcom/bytedance/sdk/component/panglearmor/ia;

    const-string v3, "detailed_app_info"

    invoke-interface {v2, v3, v1}, Lcom/bytedance/sdk/component/panglearmor/ia;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/iw;->ig()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_4
    return-void
.end method

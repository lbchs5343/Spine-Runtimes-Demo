.class Lcom/bytedance/sdk/openadsdk/core/bl/s$dq;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/bl/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/bl/s;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bl/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/s$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/bl/s;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bl/s;Lcom/bytedance/sdk/openadsdk/core/bl/s$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/bl/s$dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/bl/s;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SdkSettingsHelper"

    const-string v0, "onReceive: "

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "b_msg_id"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "b_msg_time"

    const-wide/16 v0, -0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/bl/s;->mn()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/s$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/bl/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/s;->dq(Lcom/bytedance/sdk/openadsdk/core/bl/s;)Lcom/bytedance/sdk/openadsdk/core/bl/p;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/s$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/bl/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/s;->dq(Lcom/bytedance/sdk/openadsdk/core/bl/s;)Lcom/bytedance/sdk/openadsdk/core/bl/p;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/p;->dq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

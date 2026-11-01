.class Lcom/bytedance/msdk/core/f/d$ox;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ox"
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/f/d;


# direct methods
.method private constructor <init>(Lcom/bytedance/msdk/core/f/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/f/d$ox;->dq:Lcom/bytedance/msdk/core/f/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/msdk/core/f/d;Lcom/bytedance/msdk/core/f/d$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/f/d$ox;-><init>(Lcom/bytedance/msdk/core/f/d;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/no;->le()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "--==-- settings receiver"

    const-string v0, "SdkSettingsHelper"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "b_msg_id"

    const/4 v1, -0x1

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    :try_start_0
    const-string p1, "b_msg_process_name"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/msdk/core/f/d$ox;->dq:Lcom/bytedance/msdk/core/f/d;

    invoke-static {p2}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/d;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/msdk/ia/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "--==-- settings receiver, same process, return"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/bytedance/msdk/core/f/d$ox;->dq:Lcom/bytedance/msdk/core/f/d;

    invoke-static {p1}, Lcom/bytedance/msdk/core/f/d;->d(Lcom/bytedance/msdk/core/f/d;)Lcom/bytedance/msdk/core/f/dq;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "--==-- settings receiver loadData"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/f/d$ox;->dq:Lcom/bytedance/msdk/core/f/d;

    invoke-static {p1}, Lcom/bytedance/msdk/core/f/d;->d(Lcom/bytedance/msdk/core/f/d;)Lcom/bytedance/msdk/core/f/dq;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/bytedance/msdk/core/f/dq;->dq(Z)V

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/mn/dq/dq;->ig()V

    const-string p1, "--==-- settings receiver loadData end"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

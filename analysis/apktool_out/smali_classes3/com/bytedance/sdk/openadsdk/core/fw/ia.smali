.class public Lcom/bytedance/sdk/openadsdk/core/fw/ia;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/fw/ia$dq;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/fw/mn;

.field private dq:I

.field private iw:Z

.field private mn:I

.field private ox:Lcom/bytedance/sdk/openadsdk/core/fw/ia$dq;

.field private final p:Landroid/content/Context;

.field private final s:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->dq:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->iw:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->mn:I

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->p:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->s:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public d()I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->s:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return v0
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->mn:I

    return v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->mn:I

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/fw/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->d:Lcom/bytedance/sdk/openadsdk/core/fw/mn;

    return-void
.end method

.method public ox()Lcom/bytedance/sdk/openadsdk/core/fw/mn;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->d:Lcom/bytedance/sdk/openadsdk/core/fw/mn;

    return-object v0
.end method

.method public registerReceiver()V
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->iw:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/fw/ia$dq;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/fw/ia$dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/fw/ia;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->ox:Lcom/bytedance/sdk/openadsdk/core/fw/ia$dq;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->ox:Lcom/bytedance/sdk/openadsdk/core/fw/ia$dq;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->iw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->iw:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->ox:Lcom/bytedance/sdk/openadsdk/core/fw/ia$dq;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->d:Lcom/bytedance/sdk/openadsdk/core/fw/mn;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/fw/ia;->iw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

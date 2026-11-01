.class Lcom/bytedance/sdk/openadsdk/core/ir/o$d;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ir/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_4

    const-string p1, "present"

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v2, 0x2

    if-eqz p1, :cond_3

    const-string v3, "status"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    sput v3, Lcom/bytedance/sdk/openadsdk/core/ir/o$dq;->dq:I

    goto :goto_0

    :cond_1
    if-ne v3, v2, :cond_2

    const/4 v1, 0x1

    sput v1, Lcom/bytedance/sdk/openadsdk/core/ir/o$dq;->dq:I

    goto :goto_0

    :cond_2
    sput v1, Lcom/bytedance/sdk/openadsdk/core/ir/o$dq;->dq:I

    goto :goto_0

    :cond_3
    sput v2, Lcom/bytedance/sdk/openadsdk/core/ir/o$dq;->dq:I

    :goto_0
    const-string v1, "level"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "scale"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    sput v1, Lcom/bytedance/sdk/openadsdk/core/ir/o$dq;->d:F

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/no;->le()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dq/d/d;->dq(Z)V

    :cond_4
    const-string p1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->dq()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/ir/o$d$1;

    const-string v0, "tt_vol"

    invoke-direct {p2, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/o$d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ir/o$d;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void
.end method

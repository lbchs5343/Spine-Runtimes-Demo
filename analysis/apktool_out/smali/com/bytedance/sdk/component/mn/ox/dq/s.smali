.class public Lcom/bytedance/sdk/component/mn/ox/dq/s;
.super Ljava/lang/Object;


# static fields
.field public static d:Ljava/lang/String; = null

.field public static dq:Ljava/lang/String; = "com.bytedance.openadsdk"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/bytedance/sdk/component/mn/ox/dq/s;->dq:Ljava/lang/String;

    const-string v2, ".TTMultiProvider"

    invoke-static {v0, v1, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/mn/ox/dq/s;->d:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/component/mn/ox/dq/s;->dq()V

    return-void
.end method

.method public static dq()V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/component/mn/ox/dq/d;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/mn/ox;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/mn/ox/dq/s;->dq:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/bytedance/sdk/component/mn/ox/dq/s;->dq:Ljava/lang/String;

    const-string v2, ".TTMultiProvider"

    invoke-static {v0, v1, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/mn/ox/dq/s;->d:Ljava/lang/String;

    :cond_1
    return-void
.end method

.class public Lcom/bytedance/sdk/component/ia/d/dq/dq/p;
.super Ljava/lang/Object;


# static fields
.field private static d:Ljava/lang/String; = null

.field private static dq:Ljava/lang/String; = "com.bytedance.openadsdk"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/p;->dq:Ljava/lang/String;

    const-string v2, ".TTMultiProvider"

    invoke-static {v0, v1, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ia/d/dq/dq/p;->d:Ljava/lang/String;

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/ia/dq/s;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/p;->dq:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "content://"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/sdk/component/ia/d/dq/dq/p;->dq:Ljava/lang/String;

    const-string v1, ".TTMultiProvider"

    invoke-static {p0, v0, v1}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/p;->d:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/p;->d:Ljava/lang/String;

    return-object p0
.end method

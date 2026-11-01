.class public Lcom/bytedance/sdk/openadsdk/core/ox/s;
.super Ljava/lang/Object;


# direct methods
.method public static d()V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->dq()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ox/s$2;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ox/s$2;-><init>()V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/iw;->dq()V

    return-void
.end method

.method public static dq()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static dq(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "/pangle_p/com.byted.pangle"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/ox/s$1;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/s$1;-><init>()V

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p0, p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static ox()I
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/op;->dq:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic p()V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/s;->unregisterReceiver()V

    return-void
.end method

.method private static unregisterReceiver()V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/o;->s()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/o;->ig()V

    return-void
.end method

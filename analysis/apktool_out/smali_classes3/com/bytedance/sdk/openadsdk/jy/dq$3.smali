.class final Lcom/bytedance/sdk/openadsdk/jy/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/jy/dq;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/s;->dq()Z

    move-result v0

    const-string v1, "apm"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/String;III)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->q()Z

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/jy/dq;->dq()Z

    move-result v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/jy/dq$3$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/jy/dq$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/jy/dq$3;)V

    invoke-static {}, Lg/gs;->af()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lg/dyn;

    const/16 v3, 0xd

    invoke-direct {v2, v3, v0}, Lg/dyn;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v0

    const/16 v2, 0x20

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/String;III)V

    return-void
.end method

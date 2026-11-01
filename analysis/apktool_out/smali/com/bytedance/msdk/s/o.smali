.class public Lcom/bytedance/msdk/s/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/dq/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ox(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/msdk/ia/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "mediation_log"

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/msdk/ia/dq;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/ia/dq/d;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/bytedance/msdk/s/o;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public dq()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dq(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/bytedance/msdk/ia/e;->dq(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public ia()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/dq/s/iw;->iw()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public ig()Lcom/bytedance/sdk/component/ia/dq/ia;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public iw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public kk()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/dq/s/iw;->iw()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public mn()Lcom/bytedance/sdk/component/ia/dq/dq/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public mp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public no()Lcom/bytedance/sdk/component/ia/d/ox;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public ox()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    const-string v0, "gromore-no-webview"

    return-object v0
.end method

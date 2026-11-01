.class public Lcom/bytedance/sdk/component/ia/d/ox/ox;
.super Ljava/lang/Object;


# direct methods
.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/s;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/bytedance/sdk/component/ia/dq/p;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/s;->s()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v1, p0, p1, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/s;->s()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/s;->s()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v1, p0, p1, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/s;->s()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "log"

    :try_start_0
    invoke-static {p2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x64

    if-nez v1, :cond_0

    if-ne p3, v2, :cond_3

    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    const/4 p0, 0x6

    if-eq p3, p0, :cond_4

    if-eq p3, v2, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static dq(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/s;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-interface {p0}, Lcom/bytedance/sdk/component/ia/dq/p;->dq()Z

    move-result p0

    return p0
.end method

.method private static ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/s;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/dq;->mn(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/s;

    move-result-object p0

    return-object p0
.end method

.method public static ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/s;->s()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v1, p0, p1, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static ox(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/s;->s()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static p(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/s;->s()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {v1, p0, p1, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.class Lcom/bytedance/sdk/component/dq/kk;
.super Ljava/lang/Object;


# static fields
.field private static dq:Z


# direct methods
.method public static d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/bytedance/sdk/component/dq/kk;->dq:Z

    if-eqz v0, :cond_0

    const-string v0, "JsBridge2"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Stacktrace: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static dq(Ljava/lang/RuntimeException;)V
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/component/dq/kk;->dq:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw p0
.end method

.method public static dq(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    sget-boolean p0, Lcom/bytedance/sdk/component/dq/kk;->dq:Z

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static dq(Z)V
    .locals 0

    sput-boolean p0, Lcom/bytedance/sdk/component/dq/kk;->dq:Z

    return-void
.end method

.class public Lcom/bytedance/sdk/component/kk/p/s;
.super Ljava/lang/Object;


# static fields
.field private static d:I = 0x4

.field private static dq:Z


# direct methods
.method public static dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/component/kk/p/s;->dq:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget p1, Lcom/bytedance/sdk/component/kk/p/s;->d:I

    const/4 v0, 0x4

    if-gt p1, v0, :cond_2

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public static dq()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/component/kk/p/s;->dq:Z

    return v0
.end method

.class public Lcom/bytedance/msdk/ia/kx;
.super Ljava/lang/Object;


# direct methods
.method private static dq(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/bytedance/msdk/ia/kx;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

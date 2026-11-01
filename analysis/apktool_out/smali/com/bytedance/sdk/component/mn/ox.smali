.class public Lcom/bytedance/sdk/component/mn/ox;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Landroid/content/Context;


# direct methods
.method public static dq(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/mn/ox;->dq:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/component/mn/ox;->dq:Landroid/content/Context;

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/mn/ox;->dq:Landroid/content/Context;

    return-object v0
.end method

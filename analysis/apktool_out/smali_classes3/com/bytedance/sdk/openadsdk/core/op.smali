.class public final Lcom/bytedance/sdk/openadsdk/core/op;
.super Ljava/lang/Object;


# static fields
.field public static d:I = 0x19cf

.field public static dq:Z = false

.field public static ia:Ljava/lang/String; = "6.6.0.0"

.field public static iw:Ljava/lang/String; = "main"

.field public static mn:Z = false

.field public static ox:Ljava/lang/String; = "6.6.0.7"

.field public static p:I = 0x3e7

.field public static s:Z = true


# direct methods
.method public static d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static dq(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public static dq()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static iw()Z
    .locals 2

    const-string v0, "internal"

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/op;->iw:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ox()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/iw;->dq()Z

    move-result v0

    return v0
.end method

.method public static p()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/ig/d/d;->r()Z

    move-result v0

    return v0
.end method

.method public static s()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/op;->iw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->dq()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_plugin"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/op;->mn:Z

    if-eqz v1, :cond_1

    const-string v1, "_open"

    goto :goto_1

    :cond_1
    const-string v1, "_close"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

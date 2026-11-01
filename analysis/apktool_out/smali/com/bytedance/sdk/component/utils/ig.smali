.class public Lcom/bytedance/sdk/component/utils/ig;
.super Ljava/lang/Object;


# static fields
.field private static d:I = 0x4

.field private static dq:Z = false

.field private static ox:Lcom/bytedance/sdk/component/dq; = null

.field private static p:Ljava/lang/String; = ""


# direct methods
.method public static d()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/component/utils/ig;->dq:Z

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(I)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/component/utils/ig;->dq:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Logger"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/utils/ig;->ox:Lcom/bytedance/sdk/component/dq;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/component/utils/ig;->dq:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget p1, Lcom/bytedance/sdk/component/utils/ig;->d:I

    const/4 v0, 0x5

    if-gt p1, v0, :cond_3

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/utils/ig;->ox:Lcom/bytedance/sdk/component/dq;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/bytedance/sdk/component/dq;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/component/utils/ig;->dq:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    sget v0, Lcom/bytedance/sdk/component/utils/ig;->d:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_3

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/component/utils/ig;->ox:Lcom/bytedance/sdk/component/dq;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ig;->dq([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/component/utils/ig;->dq:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget v0, Lcom/bytedance/sdk/component/utils/ig;->d:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_3

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ig;->dq([Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method private static varargs dq([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, " null "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method public static dq(I)V
    .locals 0

    sput p0, Lcom/bytedance/sdk/component/utils/ig;->d:I

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/dq;)V
    .locals 0

    sput-object p0, Lcom/bytedance/sdk/component/utils/ig;->ox:Lcom/bytedance/sdk/component/dq;

    return-void
.end method

.method public static dq(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/component/utils/ig;->dq:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Logger"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/utils/ig;->ox:Lcom/bytedance/sdk/component/dq;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/component/utils/ig;->dq:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget p1, Lcom/bytedance/sdk/component/utils/ig;->d:I

    const/4 v0, 0x4

    if-gt p1, v0, :cond_3

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/utils/ig;->ox:Lcom/bytedance/sdk/component/dq;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/bytedance/sdk/component/dq;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/component/utils/ig;->dq:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    sget p1, Lcom/bytedance/sdk/component/utils/ig;->d:I

    const/4 p2, 0x5

    if-gt p1, p2, :cond_3

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method public static varargs dq(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/component/utils/ig;->ox:Lcom/bytedance/sdk/component/dq;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ig;->dq([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/component/utils/ig;->dq:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget v0, Lcom/bytedance/sdk/component/utils/ig;->d:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_3

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ig;->dq([Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method public static dq()Z
    .locals 2

    sget v0, Lcom/bytedance/sdk/component/utils/ig;->d:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ox(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/bytedance/sdk/component/utils/ig;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/bytedance/sdk/component/utils/ig;->p:Ljava/lang/String;

    const-string v2, "]-["

    const-string v3, "]"

    invoke-static {v0, v1, v2, p0, v3}, Lg/awf;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ig;->dq([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/utils/ig;->ox:Lcom/bytedance/sdk/component/dq;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    if-nez p0, :cond_2

    const-string p0, "Logger"

    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static varargs ox(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/component/utils/ig;->ox:Lcom/bytedance/sdk/component/dq;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ig;->dq([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/component/utils/ig;->dq:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget v0, Lcom/bytedance/sdk/component/utils/ig;->d:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_3

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ig;->dq([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public static ox()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/component/utils/ig;->dq:Z

    return v0
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/utils/ig;->ox:Lcom/bytedance/sdk/component/dq;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/component/utils/ig;->dq:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget v0, Lcom/bytedance/sdk/component/utils/ig;->d:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_3

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

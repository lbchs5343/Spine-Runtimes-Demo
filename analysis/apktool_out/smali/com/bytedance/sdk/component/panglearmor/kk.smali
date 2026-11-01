.class public Lcom/bytedance/sdk/component/panglearmor/kk;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Z

.field private static volatile dq:Lcom/bytedance/sdk/component/panglearmor/kk;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/component/panglearmor/kk;->d:Z

    return v0
.end method

.method public static dq()Lcom/bytedance/sdk/component/panglearmor/kk;
    .locals 6

    sget-object v0, Lcom/bytedance/sdk/component/panglearmor/kk;->dq:Lcom/bytedance/sdk/component/panglearmor/kk;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/panglearmor/kk;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/panglearmor/kk;->dq:Lcom/bytedance/sdk/component/panglearmor/kk;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "panglearmor"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/bytedance/sdk/component/panglearmor/kk;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v3, 0x0

    :try_start_2
    sput-boolean v3, Lcom/bytedance/sdk/component/panglearmor/kk;->d:Z

    :goto_0
    new-instance v3, Lcom/bytedance/sdk/component/panglearmor/kk;

    invoke-direct {v3}, Lcom/bytedance/sdk/component/panglearmor/kk;-><init>()V

    sput-object v3, Lcom/bytedance/sdk/component/panglearmor/kk;->dq:Lcom/bytedance/sdk/component/panglearmor/kk;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/iw;->mn()Lcom/bytedance/sdk/component/panglearmor/ia;

    move-result-object v5

    if-eqz v5, :cond_0

    sub-long/2addr v3, v1

    sget-boolean v1, Lcom/bytedance/sdk/component/panglearmor/kk;->d:Z

    invoke-interface {v5, v3, v4, v1}, Lcom/bytedance/sdk/component/panglearmor/ia;->dq(JZ)V

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_1
    :goto_3
    sget-object v0, Lcom/bytedance/sdk/component/panglearmor/kk;->dq:Lcom/bytedance/sdk/component/panglearmor/kk;

    return-object v0
.end method


# virtual methods
.method public d([B)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/bytedance/sdk/component/panglearmor/kk;->d:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x3f3

    :try_start_0
    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/panglearmor/SoftDecTool;->bc(I[B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/bytedance/sdk/component/panglearmor/kk;->d:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/panglearmor/kk;->d([B)[B

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public dq([B)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/bytedance/sdk/component/panglearmor/kk;->d:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x3f2

    :try_start_0
    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/panglearmor/SoftDecTool;->bc(I[B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

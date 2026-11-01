.class public Lcom/bytedance/sdk/component/panglearmor/d/dq;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Lcom/bytedance/sdk/component/panglearmor/d/dq;


# instance fields
.field private volatile d:I

.field private ox:Landroid/net/ConnectivityManager;

.field private volatile p:I

.field private s:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->ox:Landroid/net/ConnectivityManager;

    const/4 v1, -0x1

    iput v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->p:I

    iput-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->s:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/iw;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->ox:Landroid/net/ConnectivityManager;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->s:Landroid/telephony/TelephonyManager;

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/d/s;->dq()Lcom/bytedance/sdk/component/panglearmor/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/panglearmor/d/s;->ox()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/panglearmor/d/dq;->dq(I)V

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/component/panglearmor/d/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->dq:Lcom/bytedance/sdk/component/panglearmor/d/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/panglearmor/d/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/panglearmor/d/dq;->dq:Lcom/bytedance/sdk/component/panglearmor/d/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/panglearmor/d/dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/panglearmor/d/dq;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/panglearmor/d/dq;->dq:Lcom/bytedance/sdk/component/panglearmor/d/dq;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->dq:Lcom/bytedance/sdk/component/panglearmor/d/dq;

    return-object v0
.end method

.method private static dq(Landroid/net/ConnectivityManager;)Z
    .locals 3

    :try_start_0
    const-class v0, Landroid/net/ConnectivityManager;

    const-string v1, "getMobileDataEnabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private iw()I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->ox:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->ox:Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lg/fdj;->g(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->ox:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    iget-object v3, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->ox:Landroid/net/ConnectivityManager;

    invoke-static {v3}, Lcom/bytedance/sdk/component/panglearmor/d/dq;->dq(Landroid/net/ConnectivityManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_7

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->ox:Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lcom/bytedance/sdk/component/panglearmor/d/dq;->dq(Landroid/net/ConnectivityManager;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    :goto_1
    const/4 v0, 0x3

    return v0

    :cond_5
    :goto_2
    return v4

    :cond_6
    if-nez v1, :cond_7

    :goto_3
    const/4 v0, 0x2

    :catch_0
    :cond_7
    :goto_4
    return v0
.end method


# virtual methods
.method public d()[I
    .locals 15

    iget v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->d:I

    new-array v0, v0, [I

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/d/d;->dq()Lcom/bytedance/sdk/component/panglearmor/d/d;

    move-result-object v1

    const-string v2, "sp_net"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/panglearmor/d/d;->dq(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "t"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v10, 0x3c

    div-long/2addr v6, v10

    div-long/2addr v6, v10

    long-to-int v2, v6

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    invoke-virtual {v6, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v7, "val"

    const/4 v14, 0x0

    invoke-virtual {v6, v7, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    div-long/2addr v12, v8

    div-long/2addr v12, v10

    div-long/2addr v12, v10

    long-to-int v7, v12

    sub-int v7, v2, v7

    if-ltz v7, :cond_0

    iget v12, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->d:I

    if-ge v7, v12, :cond_0

    aput v6, v0, v7

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public dq(I)V
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->d:I

    return-void

    :cond_0
    const/16 v0, 0xa8

    if-le p1, v0, :cond_1

    iput v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->d:I

    return-void

    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->d:I

    return-void
.end method

.method public ox()[I
    .locals 12

    iget v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->d:I

    new-array v0, v0, [I

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/d/d;->dq()Lcom/bytedance/sdk/component/panglearmor/d/d;

    move-result-object v1

    const-string v2, "sp_screen"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/panglearmor/d/d;->dq(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v6, 0x3c

    div-long/2addr v2, v6

    div-long/2addr v2, v6

    long-to-int v3, v2

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v8, "t"

    const-wide/16 v9, 0x0

    invoke-virtual {v2, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v10, "val"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    div-long/2addr v8, v4

    div-long/2addr v8, v6

    div-long/2addr v8, v6

    long-to-int v9, v8

    sub-int v8, v3, v9

    if-ltz v8, :cond_0

    iget v9, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->d:I

    if-ge v8, v9, :cond_0

    aput v2, v0, v8

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public p()I
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/panglearmor/d/dq;->iw()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->p:I

    iget v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->p:I

    return v0
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/d/dq;->s:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.class public Lcom/bykv/vk/component/ttvideo/mediakit/net/DNSServerIP;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "DNSServerIP"

.field private static final UPDATE_PEROID:I = 0x493e0

.field private static volatile mServerIP:Ljava/lang/String;

.field private static volatile mServerIPTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/DNSServerIP;->mServerIP:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(J)J
    .locals 0

    sput-wide p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/DNSServerIP;->mServerIPTime:J

    return-wide p0
.end method

.method public static getDNSServerIP()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bykv/vk/component/ttvideo/mediakit/net/DNSServerIP;->updateDNSServerIP()V

    sget-object v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/DNSServerIP;->mServerIP:Ljava/lang/String;

    return-object v0
.end method

.method public static updateDNSServerIP()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/bykv/vk/component/ttvideo/mediakit/net/DNSServerIP;->mServerIPTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/DNSServerIP$1;

    invoke-direct {v0}, Lcom/bykv/vk/component/ttvideo/mediakit/net/DNSServerIP$1;-><init>()V

    invoke-static {v0}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.class Lcom/bykv/vk/component/ttvideo/net/AVResolver$ParserHost;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/component/ttvideo/net/AVResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParserHost"
.end annotation


# instance fields
.field mHostName:Ljava/lang/String;

.field mResolver:Lcom/bykv/vk/component/ttvideo/net/AVResolver;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/component/ttvideo/net/AVResolver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/net/AVResolver$ParserHost;->mResolver:Lcom/bykv/vk/component/ttvideo/net/AVResolver;

    iput-object p2, p0, Lcom/bykv/vk/component/ttvideo/net/AVResolver$ParserHost;->mHostName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/net/AVResolver$ParserHost;->mHostName:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/net/AVResolver$ParserHost;->mResolver:Lcom/bykv/vk/component/ttvideo/net/AVResolver;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bykv/vk/component/ttvideo/net/AVResolver;->access$002(Lcom/bykv/vk/component/ttvideo/net/AVResolver;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/net/AVResolver$ParserHost;->mResolver:Lcom/bykv/vk/component/ttvideo/net/AVResolver;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bykv/vk/component/ttvideo/net/AVResolver;->access$102(Lcom/bykv/vk/component/ttvideo/net/AVResolver;Z)Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/net/AVResolver$ParserHost;->mResolver:Lcom/bykv/vk/component/ttvideo/net/AVResolver;

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bykv/vk/component/ttvideo/net/AVResolver;->access$202(Lcom/bykv/vk/component/ttvideo/net/AVResolver;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/net/AVResolver$ParserHost;->mResolver:Lcom/bykv/vk/component/ttvideo/net/AVResolver;

    invoke-static {v1}, Lcom/bykv/vk/component/ttvideo/net/AVResolver;->access$200(Lcom/bykv/vk/component/ttvideo/net/AVResolver;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v1, Lcom/bykv/vk/component/ttvideo/net/AVResolver$HostInfo;

    invoke-direct {v1}, Lcom/bykv/vk/component/ttvideo/net/AVResolver$HostInfo;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bykv/vk/component/ttvideo/net/AVResolver$HostInfo;->time:J

    iput-object v0, v1, Lcom/bykv/vk/component/ttvideo/net/AVResolver$HostInfo;->ip:Ljava/lang/String;

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/net/AVResolver$ParserHost;->mHostName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/net/AVResolver;->putHostInfo(Ljava/lang/String;Lcom/bykv/vk/component/ttvideo/net/AVResolver$HostInfo;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bykv/vk/component/ttvideo/net/AVResolver$HostInfo;->time:J

    :cond_1
    :goto_2
    return-void
.end method

.class Lcom/bykv/vk/component/ttvideo/network/DnsHelper$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/component/ttvideo/network/DnsHelper;->updateDNSServerIP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bykv/vk/component/ttvideo/network/DnsHelper;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/component/ttvideo/network/DnsHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/network/DnsHelper$3;->this$0:Lcom/bykv/vk/component/ttvideo/network/DnsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    const-string v0, "whoami.akamai.net"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/network/DnsHelper$3;->this$0:Lcom/bykv/vk/component/ttvideo/network/DnsHelper;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bykv/vk/component/ttvideo/network/DnsHelper;->mServerIP:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/network/DnsHelper;->access$302(J)J

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/network/DnsHelper$3;->this$0:Lcom/bykv/vk/component/ttvideo/network/DnsHelper;

    iget-object v0, v0, Lcom/bykv/vk/component/ttvideo/network/DnsHelper;->mServerIP:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

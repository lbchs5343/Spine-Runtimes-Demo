.class Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser$1;->this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v5, "----receive msg what:%d info:%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v2, :cond_5

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    const/4 v5, 0x4

    if-eq v3, v5, :cond_3

    const/4 v5, 0x6

    if-eq v3, v5, :cond_2

    const/4 v5, 0x7

    if-eq v3, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser$1;->this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;

    invoke-static {v5, v3, v0}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;->access$400(Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;ILcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSInfo;)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser$1;->this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;

    invoke-static {v5, v3, v0}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;->access$300(Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;ILcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSInfo;)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser$1;->this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;

    invoke-static {v5, v3, v0}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;->access$200(Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;ILcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSInfo;)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser$1;->this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;

    invoke-static {v5, v3, v0}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;->access$100(Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;ILcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSInfo;)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser$1;->this$0:Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;

    invoke-static {v5, v3, v0}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;->access$000(Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSParser;ILcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSInfo;)V

    :goto_1
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object v0, v2, v1

    const-string p1, "****end proc msg what:%d info:%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

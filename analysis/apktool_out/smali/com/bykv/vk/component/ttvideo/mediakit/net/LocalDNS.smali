.class public Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;
.super Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS$MyRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalDNS"

.field private static final TIME_OUT:I = 0x2710


# instance fields
.field private mAddress:[Ljava/net/InetAddress;

.field private mFuture:Ljava/util/concurrent/Future;

.field private mRet:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;->mRet:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;)[Ljava/net/InetAddress;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;->mAddress:[Ljava/net/InetAddress;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;->mAddress:[Ljava/net/InetAddress;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;->mRet:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;->mRet:Z

    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->mCancelled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->mCancelled:Z

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;->mFuture:Ljava/util/concurrent/Future;

    :cond_1
    :goto_0
    return-void
.end method

.method public close()V
    .locals 2

    invoke-super {p0}, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->close()V

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;->mFuture:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;->mRet:Z

    return v0
.end method

.method public start()V
    .locals 10

    :try_start_0
    new-instance v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS$1;

    invoke-direct {v0, p0}, Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS$1;-><init>(Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;)V

    invoke-static {v0}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;->mFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "****end call local dns, exception:%s host:%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v3, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSInfo;

    iget-object v5, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    const-wide/16 v7, 0x0

    iget-object v9, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->mId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->notifyError(Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLDNSInfo;)V

    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/BaseDNS;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS$MyRunnable;

    invoke-direct {v1, p0}, Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS$MyRunnable;-><init>(Lcom/bykv/vk/component/ttvideo/mediakit/net/LocalDNS;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

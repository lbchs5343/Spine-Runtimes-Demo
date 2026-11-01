.class public final Lg/fmf;
.super Ljava/lang/Object;

# interfaces
.implements Lg/gao;


# virtual methods
.method public final dq(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    sget-object v0, Lg/ebx;->c:Lg/cqw;

    instance-of v0, p1, Ljava/net/SocketException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/nio/channels/ClosedChannelException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/ProtocolException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/UnknownServiceException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Unable to parse composition:"

    invoke-static {v0, p1}, Lg/hbp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "Unable to load composition."

    invoke-static {v0, p1}, Lg/hbp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

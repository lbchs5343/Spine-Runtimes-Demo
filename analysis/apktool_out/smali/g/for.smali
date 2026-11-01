.class public final Lg/for;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

.field public final d:[Landroid/system/StructPollfd;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;JLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lg/for;->c:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    new-instance v0, Landroid/system/StructPollfd;

    invoke-direct {v0}, Landroid/system/StructPollfd;-><init>()V

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, v0, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    sget p1, Landroid/system/OsConstants;->POLLIN:I

    sget v1, Landroid/system/OsConstants;->POLLHUP:I

    or-int/2addr p1, v1

    sget v1, Landroid/system/OsConstants;->POLLERR:I

    or-int/2addr p1, v1

    int-to-short p1, p1

    iput-short p1, v0, Landroid/system/StructPollfd;->events:S

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/system/StructPollfd;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iput-object p1, p0, Lg/for;->d:[Landroid/system/StructPollfd;

    iput-wide p2, p0, Lg/for;->a:J

    iput-object p4, p0, Lg/for;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lg/for;->c:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    return-void
.end method

.method public final e()V
    .locals 8

    iget-object v0, p0, Lg/for;->d:[Landroid/system/StructPollfd;

    :cond_0
    :goto_0
    iget-object v1, p0, Lg/for;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const-string v3, "Layout read cancelled"

    if-nez v2, :cond_5

    iget-wide v4, p0, Lg/for;->a:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_4

    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v0, v2}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-short v1, v1, Landroid/system/StructPollfd;->revents:S

    sget v2, Landroid/system/OsConstants;->POLLNVAL:I

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Layout pipe is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EINTR:I

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Cannot read layout pipe"

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Layout read timed out"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final read()I
    .locals 1

    invoke-virtual {p0}, Lg/for;->e()V

    iget-object v0, p0, Lg/for;->c:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 1

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lg/for;->e()V

    iget-object v0, p0, Lg/for;->c:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.class public final Lg/gra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fum;


# instance fields
.field public a:Ljava/lang/Object;

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lg/gra;->c:J

    iput-wide v0, p0, Lg/gra;->d:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lg/gra;->d:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/gra;->a:Ljava/lang/Object;

    iput-wide p1, p0, Lg/gra;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gra;->a:Ljava/lang/Object;

    iput-wide p2, p0, Lg/gra;->c:J

    iput-wide p4, p0, Lg/gra;->d:J

    return-void
.end method


# virtual methods
.method public b([Ljava/security/MessageDigest;JI)V
    .locals 8

    iget-wide v0, p0, Lg/gra;->c:J

    add-long v4, v0, p2

    int-to-long v6, p4

    iget-object p2, p0, Lg/gra;->a:Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, Ljava/nio/channels/FileChannel;

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    array-length v0, p1

    if-ge p4, v0, :cond_0

    aget-object v0, p1, p4

    invoke-virtual {p2, p3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lg/gra;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    if-nez v2, :cond_0

    iput-object p1, p0, Lg/gra;->a:Ljava/lang/Object;

    :cond_0
    iget-wide v2, p0, Lg/gra;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzqw;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget v3, Lcom/google/android/gms/internal/ads/zzqw;->a:I

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    const-wide/16 v2, 0xc8

    add-long/2addr v2, v0

    iput-wide v2, p0, Lg/gra;->c:J

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_1
    iget-wide v2, p0, Lg/gra;->c:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    cmp-long v6, v0, v2

    if-ltz v6, :cond_4

    iget-object v0, p0, Lg/gra;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    if-eq v0, p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    iget-object p1, p0, Lg/gra;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/gra;->a:Ljava/lang/Object;

    iput-wide v4, p0, Lg/gra;->c:J

    iput-wide v4, p0, Lg/gra;->d:J

    throw p1

    :cond_4
    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    iput-wide v0, p0, Lg/gra;->d:J

    return-void
.end method

.method public f()Z
    .locals 7

    iget-object v0, p0, Lg/gra;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->v:Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lg/gra;->d:J

    iget-wide v5, p0, Lg/gra;->c:J

    add-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iput-wide v1, p0, Lg/gra;->d:J

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zza()J
    .locals 2

    iget-wide v0, p0, Lg/gra;->d:J

    return-wide v0
.end method

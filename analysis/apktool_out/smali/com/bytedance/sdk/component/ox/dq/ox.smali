.class public final Lcom/bytedance/sdk/component/ox/dq/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/dq/p;
.implements Lcom/bytedance/sdk/component/ox/dq/s;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# static fields
.field private static final ox:[B


# instance fields
.field d:J

.field dq:Lcom/bytedance/sdk/component/ox/dq/jy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bytedance/sdk/component/ox/dq/ox;->ox:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V
    .locals 7

    if-eqz p1, :cond_7

    if-eq p1, p0, :cond_6

    iget-wide v0, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/i;->dq(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_5

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    if-eqz v0, :cond_5

    iget v1, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p2, v1

    if-gez v3, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->s:Z

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    iget-boolean v4, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->p:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    iget v4, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    :goto_2
    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2000

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/ox/dq/jy;->dq(Lcom/bytedance/sdk/component/ox/dq/jy;I)V

    iget-wide v0, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    return-void

    :cond_2
    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/dq/jy;->dq(I)Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    :cond_3
    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget v1, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/jy;->d()Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v3

    iput-object v3, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    if-nez v3, :cond_4

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    iput-object v0, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    iput-object v0, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    goto :goto_3

    :cond_4
    iget-object v3, v3, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/ox/dq/jy;->dq(Lcom/bytedance/sdk/component/ox/dq/jy;)Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/jy;->ox()V

    :goto_3
    iget-wide v3, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    iget-wide v3, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    sub-long/2addr p2, v1

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final cd()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->ia(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/ox;->gh()Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public final d(J)B
    .locals 6

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/i;->dq(JJJ)V

    iget-wide p1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    sub-long v0, p1, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    :goto_0
    iget p2, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v0, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr p2, v0

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-gez p2, :cond_0

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    long-to-int p2, v2

    add-int/2addr v0, p2

    aget-byte p1, p1, v0

    return p1

    :cond_0
    sub-long/2addr v2, v4

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    goto :goto_0

    :cond_1
    sub-long p1, v2, p1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    :cond_2
    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget v1, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr v1, v2

    int-to-long v3, v1

    add-long/2addr p1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-ltz v1, :cond_2

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    long-to-int p2, p1

    add-int/2addr v2, p2

    aget-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    return-wide v0
.end method

.method public d(I)Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->s(I)Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v0

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    iget v2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    return-object p0
.end method

.method public d([B)Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d([BII)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d([BII)Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 7

    if-eqz p1, :cond_1

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/component/ox/dq/i;->dq(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->s(I)Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v0

    sub-int v1, p3, p2

    iget v2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    iget v3, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    iget v2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    add-long/2addr p1, v5

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic d(Lcom/bytedance/sdk/component/ox/dq/iw;)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(Lcom/bytedance/sdk/component/ox/dq/iw;)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    return-object p1
.end method

.method public dq([BII)I
    .locals 7

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/component/ox/dq/i;->dq(JJJ)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v1, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    iget v2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    add-int/2addr p1, p3

    iput p1, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    iget-wide v1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    iget p2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    if-ne p1, p2, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/jy;->d()Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/f;->dq(Lcom/bytedance/sdk/component/ox/dq/jy;)V

    :cond_1
    return p3
.end method

.method public dq(B)J
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(BJJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public dq(BJJ)J
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-ltz v7, :cond_9

    cmp-long v7, v3, v1

    if-ltz v7, :cond_9

    iget-wide v7, v0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    cmp-long v9, v3, v7

    if-lez v9, :cond_0

    move-wide v3, v7

    :cond_0
    const-wide/16 v9, -0x1

    cmp-long v11, v1, v3

    if-nez v11, :cond_1

    return-wide v9

    :cond_1
    iget-object v11, v0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    if-nez v11, :cond_2

    return-wide v9

    :cond_2
    sub-long v12, v7, v1

    cmp-long v14, v12, v1

    if-gez v14, :cond_3

    :goto_0
    cmp-long v5, v7, v1

    if-lez v5, :cond_5

    iget-object v11, v11, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget v5, v11, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v6, v11, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v7, v5

    goto :goto_0

    :cond_3
    :goto_1
    iget v7, v11, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v8, v11, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v5

    cmp-long v12, v7, v1

    if-gez v12, :cond_4

    iget-object v11, v11, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    move-wide v5, v7

    goto :goto_1

    :cond_4
    move-wide v7, v5

    :cond_5
    :goto_2
    cmp-long v5, v7, v3

    if-gez v5, :cond_8

    iget-object v5, v11, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    iget v6, v11, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    int-to-long v12, v6

    iget v6, v11, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    int-to-long v14, v6

    add-long/2addr v14, v3

    sub-long/2addr v14, v7

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v6, v12

    iget v12, v11, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    int-to-long v12, v12

    add-long/2addr v12, v1

    sub-long/2addr v12, v7

    long-to-int v1, v12

    :goto_3
    if-ge v1, v6, :cond_7

    aget-byte v2, v5, v1

    move/from16 v12, p1

    if-ne v2, v12, :cond_6

    iget v2, v11, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v7

    return-wide v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move/from16 v12, p1

    iget v1, v11, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v2, v11, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v7, v1

    iget-object v11, v11, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    move-wide v1, v7

    goto :goto_2

    :cond_8
    return-wide v9

    :cond_9
    new-instance v5, Ljava/lang/IllegalArgumentException;

    iget-wide v6, v0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-string v8, "size="

    const-string v9, " fromIndex="

    invoke-static {v6, v7, v8, v9}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " toIndex="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/dq/gh;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lcom/bytedance/sdk/component/ox/dq/gh;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J
    .locals 5

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    move-wide p2, v2

    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/ox;->a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V

    return-wide p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount < 0: "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(I)Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    return-object p0

    :cond_0
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_1

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    return-object p0

    :cond_1
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_3

    const v1, 0xd800

    if-lt p1, v1, :cond_2

    const v1, 0xdfff

    if-gt p1, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    return-object p0

    :cond_2
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    return-object p0

    :cond_3
    const v1, 0x10ffff

    if-gt p1, v1, :cond_4

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    shr-int/lit8 v1, p1, 0xc

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected code point: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lg/awf;->d(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/dq/iw;)Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final dq(Lcom/bytedance/sdk/component/ox/dq/ox;JJ)Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 8

    if-eqz p1, :cond_4

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/i;->dq(JJJ)V

    const-wide/16 p2, 0x0

    cmp-long p4, v4, p2

    if-nez p4, :cond_0

    goto :goto_3

    :cond_0
    iget-wide p4, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    add-long/2addr p4, v4

    iput-wide p4, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    iget-object p4, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    :goto_0
    iget p5, p4, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v0, p4, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int v1, p5, v0

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    sub-int/2addr p5, v0

    int-to-long v0, p5

    sub-long/2addr v2, v0

    iget-object p4, p4, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    goto :goto_0

    :cond_1
    move-object v0, p4

    move-wide p4, v4

    :goto_1
    cmp-long v1, p4, p2

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/jy;->dq()Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v1

    iget v4, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    int-to-long v4, v4

    add-long/2addr v4, v2

    long-to-int v2, v4

    iput v2, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget-object v2, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    if-nez v2, :cond_2

    iput-object v1, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    iput-object v1, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    iput-object v1, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    goto :goto_2

    :cond_2
    iget-object v2, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/ox/dq/jy;->dq(Lcom/bytedance/sdk/component/ox/dq/jy;)Lcom/bytedance/sdk/component/ox/dq/jy;

    :goto_2
    iget v2, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v1, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr v2, v1

    int-to-long v1, v2

    sub-long/2addr p4, v1

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    move-wide v2, p2

    goto :goto_1

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(Ljava/lang/String;II)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    return-object p1
.end method

.method public dq(Ljava/lang/String;II)Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 7

    if-eqz p1, :cond_c

    if-ltz p2, :cond_b

    if-lt p3, p2, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_9

    :goto_0
    if-ge p2, p3, :cond_8

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/ox/dq/ox;->s(I)Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v2

    iget-object v3, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    iget v4, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    aput-byte v0, v3, p2

    :goto_1
    move p2, v6

    if-ge p2, v5, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v1, :cond_0

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    aput-byte v0, v3, p2

    goto :goto_1

    :cond_0
    add-int/2addr v4, p2

    iget v0, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    sub-int/2addr v4, v0

    add-int/2addr v0, v4

    iput v0, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    goto :goto_0

    :cond_1
    const/16 v2, 0x800

    if-ge v0, v2, :cond_2

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_7

    const v2, 0xdfff

    if-le v0, v2, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    const v6, 0xdbff

    if-gt v0, v6, :cond_6

    const v6, 0xdc00

    if-lt v5, v6, :cond_6

    if-le v5, v2, :cond_5

    goto :goto_4

    :cond_5
    const v2, -0xd801

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0xa

    const v2, -0xdc01

    and-int/2addr v2, v5

    or-int/2addr v0, v2

    const/high16 v2, 0x10000

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_0

    :cond_6
    :goto_4
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    move p2, v4

    goto/16 :goto_0

    :cond_7
    :goto_5
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    goto :goto_2

    :cond_8
    return-object p0

    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "endIndex > string.length: "

    const-string v1, " > "

    invoke-static {p3, v0, v1}, Lg/tn;->z(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "endIndex < beginIndex: "

    const-string v1, " < "

    invoke-static {p3, p2, v0, v1}, Lg/tn;->t(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "beginIndex < 0: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 1

    if-eqz p1, :cond_5

    if-ltz p2, :cond_4

    if-lt p3, p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_2

    if-eqz p4, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/ox/dq/i;->dq:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(Ljava/lang/String;II)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/ox;->d([BII)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p4, "endIndex > string.length: "

    const-string v0, " > "

    invoke-static {p3, p4, v0}, Lg/tn;->z(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p4, "endIndex < beginIndex: "

    const-string v0, " < "

    invoke-static {p3, p2, p4, v0}, Lg/tn;->t(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p3, "beginIndex < 0: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/ox/dq/r;->ox:Lcom/bytedance/sdk/component/ox/dq/r;

    return-object v0
.end method

.method public dq(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/i;->dq(JJJ)V

    if-eqz p3, :cond_4

    const-wide/32 p1, 0x7fffffff

    cmp-long v0, v4, p1

    if-gtz v0, :cond_3

    const-wide/16 p1, 0x0

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget p2, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    int-to-long v0, p2

    add-long/2addr v0, v4

    iget v2, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    int-to-long v2, v2

    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/bytedance/sdk/component/ox/dq/ox;->mn(J)[B

    move-result-object p2

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    long-to-int v2, v4

    invoke-direct {v0, v1, p2, v2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p2, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    int-to-long p2, p2

    add-long/2addr p2, v4

    long-to-int p3, p2

    iput p3, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    iget-wide v1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    iget p2, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    if-ne p3, p2, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/dq/jy;->d()Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/dq/f;->dq(Lcom/bytedance/sdk/component/ox/dq/jy;)V

    :cond_2
    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "byteCount > Integer.MAX_VALUE: "

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public dq(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public dq([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public dq(JLcom/bytedance/sdk/component/ox/dq/iw;)Z
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ox/dq/iw;->mn()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(JLcom/bytedance/sdk/component/ox/dq/iw;II)Z

    move-result p1

    return p1
.end method

.method public dq(JLcom/bytedance/sdk/component/ox/dq/iw;II)Z
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-ltz v3, :cond_3

    if-ltz p4, :cond_3

    if-ltz p5, :cond_3

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    sub-long/2addr v0, p1

    int-to-long v3, p5

    cmp-long v5, v0, v3

    if-ltz v5, :cond_3

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ox/dq/iw;->mn()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_2

    int-to-long v3, v0

    add-long/2addr v3, p1

    invoke-virtual {p0, v3, v4}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(J)B

    move-result v1

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, Lcom/bytedance/sdk/component/ox/dq/iw;->dq(I)B

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bytedance/sdk/component/ox/dq/ox;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/bytedance/sdk/component/ox/dq/ox;

    iget-wide v3, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    iget-wide v5, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget v3, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    iget v4, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    :goto_0
    iget-wide v7, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_8

    iget v7, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    sub-int/2addr v7, v3

    iget v8, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x0

    :goto_1
    int-to-long v10, v9

    cmp-long v12, v10, v7

    if-gez v12, :cond_5

    iget-object v10, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v10, v3

    iget-object v10, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v10, v4

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    move v3, v11

    move v4, v12

    goto :goto_1

    :cond_5
    iget v9, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    if-ne v3, v9, :cond_6

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget v3, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    :cond_6
    iget v9, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    if-ne v4, v9, :cond_7

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget v4, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    :cond_7
    add-long/2addr v5, v7

    goto :goto_0

    :cond_8
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->s(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public fw()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->mn(J)[B

    move-result-object v0

    return-object v0
.end method

.method public gh()Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 6

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;-><init>()V

    iget-wide v1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/dq/jy;->dq()Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    iput-object v1, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    iput-object v1, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    :goto_0
    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    if-eq v1, v2, :cond_1

    iget-object v2, v0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget-object v2, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/dq/jy;->dq()Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/ox/dq/jy;->dq(Lcom/bytedance/sdk/component/ox/dq/jy;)Lcom/bytedance/sdk/component/ox/dq/jy;

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    iput-wide v1, v0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget v2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    iget v3, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    if-ne v0, v2, :cond_1

    return v1
.end method

.method public synthetic i()Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/ox;->p()Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object v0

    return-object v0
.end method

.method public ia()B
    .locals 9

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget v3, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    iget v4, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget-object v5, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v5, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    if-ne v6, v4, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/dq/jy;->d()Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    invoke-static {v2}, Lcom/bytedance/sdk/component/ox/dq/f;->dq(Lcom/bytedance/sdk/component/ox/dq/jy;)V

    return v3

    :cond_0
    iput v6, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    return v3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic ia(I)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->ox(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    return-object p1
.end method

.method public ia(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v1, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v0, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iget-wide v2, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    sub-long/2addr p1, v4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget v2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    iget v1, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/jy;->d()Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/f;->dq(Lcom/bytedance/sdk/component/ox/dq/jy;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public ig()I
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/ox;->o()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/i;->dq(I)I

    move-result v0

    return v0
.end method

.method public synthetic ig(J)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/ox/dq/ox;->kk(J)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    return-object p1
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final iw(I)Lcom/bytedance/sdk/component/ox/dq/iw;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/bytedance/sdk/component/ox/dq/iw;->d:Lcom/bytedance/sdk/component/ox/dq/iw;

    return-object p1

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/fw;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/ox/dq/fw;-><init>(Lcom/bytedance/sdk/component/ox/dq/ox;I)V

    return-object v0
.end method

.method public iw()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/ox$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ox/dq/ox$1;-><init>(Lcom/bytedance/sdk/component/ox/dq/ox;)V

    return-object v0
.end method

.method public iw(J)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    cmp-long v4, p1, v0

    if-lez v4, :cond_0

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(J)B

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->p(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->ia(J)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/ox/dq/ox;->p(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v3}, Lcom/bytedance/sdk/component/ox/dq/ox;->ia(J)V

    return-object p1
.end method

.method public jy()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    sget-object v2, Lcom/bytedance/sdk/component/ox/dq/i;->dq:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public kk(J)Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v3, 0x1

    if-gez v2, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "-9223372036854775808"

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-wide/32 v4, 0x5f5e100

    const-wide/16 v6, 0xa

    cmp-long v8, p1, v4

    if-gez v8, :cond_a

    const-wide/16 v4, 0x2710

    cmp-long v8, p1, v4

    if-gez v8, :cond_6

    const-wide/16 v4, 0x64

    cmp-long v8, p1, v4

    if-gez v8, :cond_4

    cmp-long v4, p1, v6

    if-gez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x2

    goto/16 :goto_1

    :cond_4
    const-wide/16 v3, 0x3e8

    cmp-long v5, p1, v3

    if-gez v5, :cond_5

    const/4 v3, 0x3

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x4

    goto/16 :goto_1

    :cond_6
    const-wide/32 v3, 0xf4240

    cmp-long v5, p1, v3

    if-gez v5, :cond_8

    const-wide/32 v3, 0x186a0

    cmp-long v5, p1, v3

    if-gez v5, :cond_7

    const/4 v3, 0x5

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x6

    goto/16 :goto_1

    :cond_8
    const-wide/32 v3, 0x989680

    cmp-long v5, p1, v3

    if-gez v5, :cond_9

    const/4 v3, 0x7

    goto/16 :goto_1

    :cond_9
    const/16 v3, 0x8

    goto/16 :goto_1

    :cond_a
    const-wide v3, 0xe8d4a51000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_e

    const-wide v3, 0x2540be400L

    cmp-long v5, p1, v3

    if-gez v5, :cond_c

    const-wide/32 v3, 0x3b9aca00

    cmp-long v5, p1, v3

    if-gez v5, :cond_b

    const/16 v3, 0x9

    goto :goto_1

    :cond_b
    const/16 v3, 0xa

    goto :goto_1

    :cond_c
    const-wide v3, 0x174876e800L

    cmp-long v5, p1, v3

    if-gez v5, :cond_d

    const/16 v3, 0xb

    goto :goto_1

    :cond_d
    const/16 v3, 0xc

    goto :goto_1

    :cond_e
    const-wide v3, 0x38d7ea4c68000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_11

    const-wide v3, 0x9184e72a000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_f

    const/16 v3, 0xd

    goto :goto_1

    :cond_f
    const-wide v3, 0x5af3107a4000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_10

    const/16 v3, 0xe

    goto :goto_1

    :cond_10
    const/16 v3, 0xf

    goto :goto_1

    :cond_11
    const-wide v3, 0x16345785d8a0000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_13

    const-wide v3, 0x2386f26fc10000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_12

    const/16 v3, 0x10

    goto :goto_1

    :cond_12
    const/16 v3, 0x11

    goto :goto_1

    :cond_13
    const-wide v3, 0xde0b6b3a7640000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_14

    const/16 v3, 0x12

    goto :goto_1

    :cond_14
    const/16 v3, 0x13

    :goto_1
    if-eqz v2, :cond_15

    add-int/lit8 v3, v3, 0x1

    :cond_15
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/ox/dq/ox;->s(I)Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v4

    iget-object v5, v4, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    iget v8, v4, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    add-int/2addr v8, v3

    :goto_2
    cmp-long v9, p1, v0

    if-eqz v9, :cond_16

    rem-long v9, p1, v6

    long-to-int v10, v9

    add-int/lit8 v8, v8, -0x1

    sget-object v9, Lcom/bytedance/sdk/component/ox/dq/ox;->ox:[B

    aget-byte v9, v9, v10

    aput-byte v9, v5, v8

    div-long/2addr p1, v6

    goto :goto_2

    :cond_16
    if-eqz v2, :cond_17

    add-int/lit8 v8, v8, -0x1

    const/16 p1, 0x2d

    aput-byte p1, v5, v8

    :cond_17
    iget p1, v4, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    add-int/2addr p1, v3

    iput p1, v4, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget-wide p1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    int-to-long v0, v3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    return-object p0
.end method

.method public synthetic kk(I)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    return-object p1
.end method

.method public kk()S
    .locals 11

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget v5, v4, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    iget v6, v4, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    sub-int v7, v6, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/ox;->ia()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/ox;->ia()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :cond_0
    iget-object v7, v4, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    add-int/lit8 v9, v5, 0x1

    aget-byte v10, v7, v5

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v5, v8

    aget-byte v7, v7, v9

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v10

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/ox/dq/jy;->d()Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    invoke-static {v4}, Lcom/bytedance/sdk/component/ox/dq/f;->dq(Lcom/bytedance/sdk/component/ox/dq/jy;)V

    goto :goto_0

    :cond_1
    iput v5, v4, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    :goto_0
    int-to-short v0, v7

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final mn()J
    .locals 5

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget-object v2, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget v3, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v4, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->s:Z

    if-eqz v4, :cond_1

    iget v2, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public synthetic mn(I)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->p(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    return-object p1
.end method

.method public mn(J)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/i;->dq(JJJ)V

    const-wide/32 p1, 0x7fffffff

    cmp-long v0, v4, p1

    if-gtz v0, :cond_0

    long-to-int p1, v4

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq([B)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "byteCount > Integer.MAX_VALUE: "

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mp()J
    .locals 15

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    const/4 v0, 0x0

    move-wide v4, v2

    const/4 v1, 0x0

    :cond_0
    iget-object v6, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget-object v7, v6, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    iget v8, v6, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    iget v9, v6, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    :goto_0
    if-ge v8, v9, :cond_6

    aget-byte v10, v7, v8

    const/16 v11, 0x30

    if-lt v10, v11, :cond_1

    const/16 v11, 0x39

    if-gt v10, v11, :cond_1

    add-int/lit8 v11, v10, -0x30

    goto :goto_1

    :cond_1
    const/16 v11, 0x61

    if-lt v10, v11, :cond_2

    const/16 v11, 0x66

    if-gt v10, v11, :cond_2

    add-int/lit8 v11, v10, -0x57

    goto :goto_1

    :cond_2
    const/16 v11, 0x41

    if-lt v10, v11, :cond_4

    const/16 v11, 0x46

    if-gt v10, v11, :cond_4

    add-int/lit8 v11, v10, -0x37

    :goto_1
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v14, v12, v2

    if-nez v14, :cond_3

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/component/ox/dq/ox;->o(J)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object v0

    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Number too large: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->jy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v10}, Lg/awf;->d(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    if-ne v8, v9, :cond_7

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/ox/dq/jy;->d()Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v7

    iput-object v7, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    invoke-static {v6}, Lcom/bytedance/sdk/component/ox/dq/f;->dq(Lcom/bytedance/sdk/component/ox/dq/jy;)V

    goto :goto_3

    :cond_7
    iput v8, v6, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    :goto_3
    if-nez v1, :cond_8

    iget-object v6, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    if-nez v6, :cond_0

    :cond_8
    iget-wide v1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    iput-wide v1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    return-wide v4

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic no(J)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/ox/dq/ox;->o(J)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    return-object p1
.end method

.method public no()S
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/ox;->kk()S

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/i;->dq(S)S

    move-result v0

    return v0
.end method

.method public o()I
    .locals 12

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget v5, v4, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    iget v6, v4, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    sub-int v7, v6, v5

    const/4 v8, 0x4

    if-ge v7, v8, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/ox;->ia()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/ox;->ia()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/ox;->ia()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/ox;->ia()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v7, v4, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    add-int/lit8 v9, v5, 0x1

    aget-byte v10, v7, v5

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    add-int/lit8 v11, v5, 0x2

    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x3

    aget-byte v11, v7, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v9, v11

    add-int/2addr v5, v8

    aget-byte v7, v7, v10

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v9

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/ox/dq/jy;->d()Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    invoke-static {v4}, Lcom/bytedance/sdk/component/ox/dq/f;->dq(Lcom/bytedance/sdk/component/ox/dq/jy;)V

    return v7

    :cond_1
    iput v5, v4, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    return v7

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o(J)Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(I)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->s(I)Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v2

    iget-object v3, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    iget v4, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    add-int v5, v4, v0

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-lt v5, v4, :cond_1

    sget-object v6, Lcom/bytedance/sdk/component/ox/dq/ox;->ox:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v6, v6, v8

    aput-byte v6, v3, v5

    ushr-long/2addr p1, v1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    iget p1, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    add-int/2addr p1, v0

    iput p1, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget-wide p1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    return-object p0
.end method

.method public ox(J)Lcom/bytedance/sdk/component/ox/dq/iw;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/ox/dq/ox;->mn(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/iw;-><init>([B)V

    return-object v0
.end method

.method public ox()Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 0

    return-object p0
.end method

.method public ox(I)Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 6

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->s(I)Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v1

    iget-object v2, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    iget v3, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/2addr v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    iput v3, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    return-object p0
.end method

.method public synthetic ox([B)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d([B)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    return-object p1
.end method

.method public synthetic ox([BII)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/ox;->d([BII)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object p1

    return-object p1
.end method

.method public p()Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 0

    return-object p0
.end method

.method public p(I)Lcom/bytedance/sdk/component/ox/dq/ox;
    .locals 7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->s(I)Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v1

    iget-object v2, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    iget v3, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, p1, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v5, v3, 0x2

    ushr-int/lit8 v6, p1, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    add-int/lit8 v4, v3, 0x3

    ushr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/2addr v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    iput v3, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    return-object p0
.end method

.method public p(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    sget-object v0, Lcom/bytedance/sdk/component/ox/dq/i;->dq:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public q()Lcom/bytedance/sdk/component/ox/dq/iw;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/iw;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/ox;->fw()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/ox/dq/iw;-><init>([B)V

    return-object v0
.end method

.method public final r()Lcom/bytedance/sdk/component/ox/dq/iw;
    .locals 5

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->iw(I)Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v3, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    iget v3, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p1, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    add-int/2addr p1, v1

    iput p1, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    iget-wide v2, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    iget v2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/jy;->d()Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/f;->dq(Lcom/bytedance/sdk/component/ox/dq/jy;)V

    :cond_1
    return v1
.end method

.method public s(I)Lcom/bytedance/sdk/component/ox/dq/jy;
    .locals 3

    if-lez p1, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/ox/dq/f;->dq()Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    iput-object p1, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    iput-object p1, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    return-object p1

    :cond_0
    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget v2, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_2

    iget-boolean p1, v1, Lcom/bytedance/sdk/component/ox/dq/jy;->s:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/ox/dq/f;->dq()Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/ox/dq/jy;->dq(Lcom/bytedance/sdk/component/ox/dq/jy;)Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public s(J)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    const-wide/16 v6, 0x1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    :goto_0
    move-wide v4, v0

    goto :goto_1

    :cond_0
    add-long v0, p1, v6

    goto :goto_0

    :goto_1
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(BJJ)J

    move-result-wide v1

    const-wide/16 v8, -0x1

    cmp-long v3, v1, v8

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/component/ox/dq/ox;->iw(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v1

    cmp-long v3, v4, v1

    if-gez v3, :cond_2

    sub-long v1, v4, v6

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(J)B

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v4, v5}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(J)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v4, v5}, Lcom/bytedance/sdk/component/ox/dq/ox;->iw(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v1, Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/ox/dq/ox;-><init>()V

    const-wide/16 v2, 0x20

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;JJ)Lcom/bytedance/sdk/component/ox/dq/ox;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: limit="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v3

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->q()Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/dq/iw;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2026

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "limit < 0: "

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()Z
    .locals 5

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/ox;->r()Lcom/bytedance/sdk/component/ox/dq/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/iw;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/ox/dq/ox;->s(I)Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v2

    iget v3, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    iget v5, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    iget v4, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    return v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

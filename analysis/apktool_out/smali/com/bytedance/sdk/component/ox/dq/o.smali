.class public final Lcom/bytedance/sdk/component/ox/dq/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/dq/gh;


# instance fields
.field private final d:Lcom/bytedance/sdk/component/ox/dq/s;

.field private dq:I

.field private final ox:Ljava/util/zip/Inflater;

.field private final p:Lcom/bytedance/sdk/component/ox/dq/no;

.field private final s:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/dq/gh;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/ox/dq/o;->dq:I

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/o;->s:Ljava/util/zip/CRC32;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/o;->ox:Ljava/util/zip/Inflater;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;)Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    new-instance v1, Lcom/bytedance/sdk/component/ox/dq/no;

    invoke-direct {v1, p1, v0}, Lcom/bytedance/sdk/component/ox/dq/no;-><init>(Lcom/bytedance/sdk/component/ox/dq/s;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/o;->p:Lcom/bytedance/sdk/component/ox/dq/no;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    const-wide/16 v2, 0xa

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/component/ox/dq/s;->dq(J)V

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/s;->ox()Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object v1

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/ox/dq/ox;->d(J)B

    move-result v6

    shr-int/lit8 v1, v6, 0x1

    const/4 v7, 0x1

    and-int/2addr v1, v7

    const/4 v8, 0x0

    if-ne v1, v7, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_1

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/s;->ox()Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/o;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;JJ)V

    :cond_1
    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/s;->kk()S

    move-result v1

    const-string v2, "ID1ID2"

    const/16 v3, 0x1f8b

    invoke-direct {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/ox/dq/o;->dq(Ljava/lang/String;II)V

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    const-wide/16 v2, 0x8

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/component/ox/dq/s;->ia(J)V

    shr-int/lit8 v1, v6, 0x2

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_4

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    const-wide/16 v2, 0x2

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/component/ox/dq/s;->dq(J)V

    if-eqz v9, :cond_2

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/s;->ox()Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/o;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;JJ)V

    :cond_2
    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/s;->ox()Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->no()S

    move-result v1

    iget-object v2, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lcom/bytedance/sdk/component/ox/dq/s;->dq(J)V

    if-eqz v9, :cond_3

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/s;->ox()Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/o;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;JJ)V

    :cond_3
    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v1, v4, v5}, Lcom/bytedance/sdk/component/ox/dq/s;->ia(J)V

    :cond_4
    shr-int/lit8 v1, v6, 0x3

    and-int/2addr v1, v7

    const-wide/16 v10, -0x1

    const-wide/16 v12, 0x1

    if-ne v1, v7, :cond_7

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v1, v8}, Lcom/bytedance/sdk/component/ox/dq/s;->dq(B)J

    move-result-wide v14

    cmp-long v1, v14, v10

    if-eqz v1, :cond_6

    if-eqz v9, :cond_5

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/s;->ox()Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v14, v12

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/o;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;JJ)V

    :cond_5
    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    add-long/2addr v14, v12

    invoke-interface {v1, v14, v15}, Lcom/bytedance/sdk/component/ox/dq/s;->ia(J)V

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_7
    :goto_1
    shr-int/lit8 v1, v6, 0x4

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_a

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v1, v8}, Lcom/bytedance/sdk/component/ox/dq/s;->dq(B)J

    move-result-wide v6

    cmp-long v1, v6, v10

    if-eqz v1, :cond_9

    if-eqz v9, :cond_8

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/s;->ox()Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v6, v12

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/o;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;JJ)V

    :cond_8
    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    add-long/2addr v6, v12

    invoke-interface {v1, v6, v7}, Lcom/bytedance/sdk/component/ox/dq/s;->ia(J)V

    goto :goto_2

    :cond_9
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_a
    :goto_2
    if-eqz v9, :cond_b

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/dq/s;->no()S

    move-result v1

    iget-object v2, v0, Lcom/bytedance/sdk/component/ox/dq/o;->s:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    int-to-short v2, v3

    const-string v3, "FHCRC"

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/sdk/component/ox/dq/o;->dq(Ljava/lang/String;II)V

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/dq/o;->s:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    :cond_b
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/ox/dq/ox;JJ)V
    .locals 5

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    :goto_0
    iget v0, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v1, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v4, p2, v2

    if-ltz v4, :cond_0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    iget v2, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int p2, v2

    iget p3, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/dq/o;->s:Ljava/util/zip/CRC32;

    iget-object v3, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    move-wide p2, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private dq(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p3, p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p3, v1, p1

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ox()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/s;->ig()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/o;->s:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, "CRC"

    invoke-direct {p0, v1, v0, v2}, Lcom/bytedance/sdk/component/ox/dq/o;->dq(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/s;->ig()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/o;->ox:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, "ISIZE"

    invoke-direct {p0, v1, v0, v2}, Lcom/bytedance/sdk/component/ox/dq/o;->dq(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/o;->p:Lcom/bytedance/sdk/component/ox/dq/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/no;->close()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_6

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/component/ox/dq/o;->dq:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/dq/o;->d()V

    iput v1, p0, Lcom/bytedance/sdk/component/ox/dq/o;->dq:I

    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/component/ox/dq/o;->dq:I

    const/4 v2, 0x2

    const-wide/16 v3, -0x1

    if-ne v0, v1, :cond_3

    iget-wide v7, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/o;->p:Lcom/bytedance/sdk/component/ox/dq/no;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/no;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J

    move-result-wide v9

    cmp-long p2, v9, v3

    if-eqz p2, :cond_2

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/bytedance/sdk/component/ox/dq/o;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;JJ)V

    return-wide v9

    :cond_2
    move-object v5, p0

    iput v2, v5, Lcom/bytedance/sdk/component/ox/dq/o;->dq:I

    goto :goto_0

    :cond_3
    move-object v5, p0

    :goto_0
    iget p1, v5, Lcom/bytedance/sdk/component/ox/dq/o;->dq:I

    if-ne p1, v2, :cond_5

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/dq/o;->ox()V

    const/4 p1, 0x3

    iput p1, v5, Lcom/bytedance/sdk/component/ox/dq/o;->dq:I

    iget-object p1, v5, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/s;->s()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "gzip finished without exhausting source"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-wide v3

    :cond_6
    move-object v5, p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount < 0: "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/o;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/gh;->dq()Lcom/bytedance/sdk/component/ox/dq/r;

    move-result-object v0

    return-object v0
.end method

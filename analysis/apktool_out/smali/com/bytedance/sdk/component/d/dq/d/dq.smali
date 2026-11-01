.class public final Lcom/bytedance/sdk/component/d/dq/d/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/d/dq/d/d;
.implements Lcom/bytedance/sdk/component/d/dq/d/ox;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# static fields
.field private static final ox:[B


# instance fields
.field d:J

.field dq:Lcom/bytedance/sdk/component/d/dq/d/iw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bytedance/sdk/component/d/dq/d/dq;->ox:[B

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
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/d/dq/d/dq;->p()Lcom/bytedance/sdk/component/d/dq/d/dq;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d()B
    .locals 9

    iget-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iget v3, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    iget v4, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    iget-object v5, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v5, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    if-ne v6, v4, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/dq/d/iw;->d()Lcom/bytedance/sdk/component/d/dq/d/iw;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    invoke-static {v2}, Lcom/bytedance/sdk/component/d/dq/d/mn;->dq(Lcom/bytedance/sdk/component/d/dq/d/iw;)V

    return v3

    :cond_0
    iput v6, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    return v3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/d/dq/d/dq;->ox(I)Lcom/bytedance/sdk/component/d/dq/d/iw;

    move-result-object v0

    iget-object v1, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq:[B

    iget v2, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    return-object p0
.end method

.method public d(J)Lcom/bytedance/sdk/component/d/dq/d/dq;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

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

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/d/dq/d/dq;->ox(I)Lcom/bytedance/sdk/component/d/dq/d/iw;

    move-result-object v2

    iget-object v3, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq:[B

    iget v4, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    add-int v5, v4, v0

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-lt v5, v4, :cond_1

    sget-object v6, Lcom/bytedance/sdk/component/d/dq/d/dq;->ox:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v6, v6, v8

    aput-byte v6, v3, v5

    ushr-long/2addr p1, v1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    iget p1, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    add-int/2addr p1, v0

    iput p1, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    iget-wide p1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    return-object p0
.end method

.method public d([BII)Lcom/bytedance/sdk/component/d/dq/d/dq;
    .locals 7

    if-eqz p1, :cond_1

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/component/d/dq/d/o;->dq(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/d/dq/d/dq;->ox(I)Lcom/bytedance/sdk/component/d/dq/d/iw;

    move-result-object v0

    sub-int v1, p3, p2

    iget v2, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq:[B

    iget v3, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    iget v2, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    add-long/2addr p1, v5

    iput-wide p1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq([BII)I
    .locals 7

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/component/d/dq/d/o;->dq(JJJ)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v1, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    iget v2, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq:[B

    iget v2, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    add-int/2addr p1, p3

    iput p1, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    iget-wide v1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    iget p2, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    if-ne p1, p2, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/d/iw;->d()Lcom/bytedance/sdk/component/d/dq/d/iw;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/dq/d/mn;->dq(Lcom/bytedance/sdk/component/d/dq/d/iw;)V

    :cond_1
    return p3
.end method

.method public dq(I)Lcom/bytedance/sdk/component/d/dq/d/dq;
    .locals 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    return-object p0

    :cond_0
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_1

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    return-object p0

    :cond_1
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_3

    const v1, 0xd800

    if-lt p1, v1, :cond_2

    const v1, 0xdfff

    if-gt p1, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    return-object p0

    :cond_2
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    return-object p0

    :cond_3
    const v1, 0x10ffff

    if-gt p1, v1, :cond_4

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    shr-int/lit8 v1, p1, 0xc

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

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

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/d/dq;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq(Ljava/lang/String;II)Lcom/bytedance/sdk/component/d/dq/d/dq;

    move-result-object p1

    return-object p1
.end method

.method public dq(Ljava/lang/String;II)Lcom/bytedance/sdk/component/d/dq/d/dq;
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

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/d/dq/d/dq;->ox(I)Lcom/bytedance/sdk/component/d/dq/d/iw;

    move-result-object v2

    iget-object v3, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq:[B

    iget v4, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

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

    iget v0, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    sub-int/2addr v4, v0

    add-int/2addr v0, v4

    iput v0, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    iget-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    goto :goto_0

    :cond_1
    const/16 v2, 0x800

    if-ge v0, v2, :cond_2

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

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

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_0

    :cond_6
    :goto_4
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    move p2, v4

    goto/16 :goto_0

    :cond_7
    :goto_5
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d(I)Lcom/bytedance/sdk/component/d/dq/d/dq;

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

.method public dq(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/bytedance/sdk/component/d/dq/d/dq;
    .locals 1

    if-eqz p1, :cond_5

    if-ltz p2, :cond_4

    if-lt p3, p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_2

    if-eqz p4, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/d/dq/d/o;->dq:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq(Ljava/lang/String;II)Lcom/bytedance/sdk/component/d/dq/d/dq;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/d/dq/d/dq;->d([BII)Lcom/bytedance/sdk/component/d/dq/d/dq;

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

.method public dq(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/component/d/dq/d/o;->dq(JJJ)V

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
    iget-object p1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iget p2, p1, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    int-to-long v0, p2

    add-long/2addr v0, v4

    iget v2, p1, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    int-to-long v2, v2

    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq(J)[B

    move-result-object p2

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq:[B

    long-to-int v2, v4

    invoke-direct {v0, v1, p2, v2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p2, p1, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    int-to-long p2, p2

    add-long/2addr p2, v4

    long-to-int p3, p2

    iput p3, p1, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    iget-wide v1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    iget p2, p1, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    if-ne p3, p2, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/d/iw;->d()Lcom/bytedance/sdk/component/d/dq/d/iw;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/dq/d/mn;->dq(Lcom/bytedance/sdk/component/d/dq/d/iw;)V

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

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq([BII)I

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

.method public dq()Z
    .locals 5

    iget-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dq(J)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/component/d/dq/d/o;->dq(JJJ)V

    const-wide/32 p1, 0x7fffffff

    cmp-long v0, v4, p1

    if-gtz v0, :cond_0

    long-to-int p1, v4

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq([B)V

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

.method public equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bytedance/sdk/component/d/dq/d/dq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/bytedance/sdk/component/d/dq/d/dq;

    iget-wide v3, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    iget-wide v5, p1, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iget-object p1, p1, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iget v3, v1, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    iget v4, p1, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    :goto_0
    iget-wide v7, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_8

    iget v7, v1, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    sub-int/2addr v7, v3

    iget v8, p1, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x0

    :goto_1
    int-to-long v10, v9

    cmp-long v12, v10, v7

    if-gez v12, :cond_5

    iget-object v10, v1, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq:[B

    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v10, v3

    iget-object v10, p1, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq:[B

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
    iget v9, v1, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    if-ne v3, v9, :cond_6

    iget-object v1, v1, Lcom/bytedance/sdk/component/d/dq/d/iw;->iw:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iget v3, v1, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    :cond_6
    iget v9, p1, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    if-ne v4, v9, :cond_7

    iget-object p1, p1, Lcom/bytedance/sdk/component/d/dq/d/iw;->iw:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iget v4, p1, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    :cond_7
    add-long/2addr v5, v7

    goto :goto_0

    :cond_8
    return v0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget v2, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    iget v3, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->iw:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    if-ne v0, v2, :cond_1

    return v1
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ox(I)Lcom/bytedance/sdk/component/d/dq/d/iw;
    .locals 3

    if-lez p1, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/d/dq/d/mn;->dq()Lcom/bytedance/sdk/component/d/dq/d/iw;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iput-object p1, p1, Lcom/bytedance/sdk/component/d/dq/d/iw;->mn:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iput-object p1, p1, Lcom/bytedance/sdk/component/d/dq/d/iw;->iw:Lcom/bytedance/sdk/component/d/dq/d/iw;

    return-object p1

    :cond_0
    iget-object v1, v1, Lcom/bytedance/sdk/component/d/dq/d/iw;->mn:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iget v2, v1, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_2

    iget-boolean p1, v1, Lcom/bytedance/sdk/component/d/dq/d/iw;->s:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/d/dq/d/mn;->dq()Lcom/bytedance/sdk/component/d/dq/d/iw;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq(Lcom/bytedance/sdk/component/d/dq/d/iw;)Lcom/bytedance/sdk/component/d/dq/d/iw;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public ox()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    sget-object v2, Lcom/bytedance/sdk/component/d/dq/d/o;->dq:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq(JLjava/nio/charset/Charset;)Ljava/lang/String;

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

.method public p()Lcom/bytedance/sdk/component/d/dq/d/dq;
    .locals 6

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/d/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/dq/d/dq;-><init>()V

    iget-wide v1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq()Lcom/bytedance/sdk/component/d/dq/d/iw;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iput-object v1, v1, Lcom/bytedance/sdk/component/d/dq/d/iw;->mn:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iput-object v1, v1, Lcom/bytedance/sdk/component/d/dq/d/iw;->iw:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    :goto_0
    iget-object v1, v1, Lcom/bytedance/sdk/component/d/dq/d/iw;->iw:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    if-eq v1, v2, :cond_1

    iget-object v2, v0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    iget-object v2, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->mn:Lcom/bytedance/sdk/component/d/dq/d/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq()Lcom/bytedance/sdk/component/d/dq/d/iw;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq(Lcom/bytedance/sdk/component/d/dq/d/iw;)Lcom/bytedance/sdk/component/d/dq/d/iw;

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    iput-wide v1, v0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    return-object v0
.end method

.method public final p(I)Lcom/bytedance/sdk/component/d/dq/d/p;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/bytedance/sdk/component/d/dq/d/p;->ox:Lcom/bytedance/sdk/component/d/dq/d/p;

    return-object p1

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/d/dq/d/ia;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/d/dq/d/ia;-><init>(Lcom/bytedance/sdk/component/d/dq/d/dq;I)V

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    iget v3, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq:[B

    iget v3, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p1, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    add-int/2addr p1, v1

    iput p1, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->d:I

    iget-wide v2, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    iget v2, v0, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/d/iw;->d()Lcom/bytedance/sdk/component/d/dq/d/iw;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/d/dq/d/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/dq/d/mn;->dq(Lcom/bytedance/sdk/component/d/dq/d/iw;)V

    :cond_1
    return v1
.end method

.method public final s()Lcom/bytedance/sdk/component/d/dq/d/p;
    .locals 5

    iget-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/d/dq/d/dq;->p(I)Lcom/bytedance/sdk/component/d/dq/d/p;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/d/dq/d/dq;->s()Lcom/bytedance/sdk/component/d/dq/d/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/d/p;->toString()Ljava/lang/String;

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

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/d/dq/d/dq;->ox(I)Lcom/bytedance/sdk/component/d/dq/d/iw;

    move-result-object v2

    iget v3, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->dq:[B

    iget v5, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    iget v4, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/bytedance/sdk/component/d/dq/d/iw;->ox:I

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bytedance/sdk/component/d/dq/d/dq;->d:J

    return v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

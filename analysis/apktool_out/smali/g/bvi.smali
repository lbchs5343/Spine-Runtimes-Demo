.class public final Lg/bvi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Z

.field public d:J

.field public e:I


# virtual methods
.method public f(I)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lg/bvi;->a:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lg/bvi;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    mul-int/lit8 v2, p1, 0x4

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    const-string v4, "\u27e8STRING_DECODE_ERROR\u27e9"

    if-lt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    if-gez v2, :cond_2

    :goto_0
    return-object v4

    :cond_2
    iget-wide v5, p0, Lg/bvi;->d:J

    int-to-long v2, v2

    add-long/2addr v5, v2

    iget-boolean v2, p0, Lg/bvi;->c:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    long-to-int v2, v5

    array-length v5, v0

    if-lt v2, v5, :cond_3

    goto :goto_5

    :cond_3
    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    :goto_1
    add-int/2addr v2, v4

    add-int/lit8 v4, v2, 0x1

    aget-byte v5, v0, v2

    if-nez v5, :cond_5

    const-string v4, ""

    goto :goto_5

    :cond_5
    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_6

    and-int/lit8 v5, v5, 0x7f

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v2, v3

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v5, v3

    move v4, v2

    :cond_6
    add-int/2addr v5, v4

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    sget-object v2, Lg/gdu;->b:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    long-to-int v2, v5

    add-int/lit8 v5, v2, 0x2

    array-length v6, v0

    if-lt v5, v6, :cond_8

    goto :goto_5

    :cond_8
    array-length v4, v0

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x4

    :goto_2
    add-int/2addr v2, v3

    move v3, v2

    :goto_3
    add-int/lit8 v5, v3, 0x1

    if-lt v5, v4, :cond_a

    goto :goto_4

    :cond_a
    aget-byte v6, v0, v3

    if-nez v6, :cond_b

    aget-byte v5, v0, v5

    if-nez v5, :cond_b

    :goto_4
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    sget-object v2, Lg/gdu;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_b
    add-int/lit8 v3, v3, 0x2

    goto :goto_3
.end method

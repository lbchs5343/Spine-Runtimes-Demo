.class public Lcom/bykv/vk/openvk/preload/dq/p/dq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field d:I

.field public dq:Z

.field private ia:I

.field private ig:[I

.field private iw:I

.field private jy:[I

.field private kk:J

.field private mn:I

.field private mp:I

.field private no:Ljava/lang/String;

.field private o:I

.field private final ox:Ljava/io/Reader;

.field private final p:[C

.field private q:[Ljava/lang/String;

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/p/dq$1;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq$1;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/dq/d/iw;->dq:Lcom/bykv/vk/openvk/preload/dq/d/iw;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mn:I

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ia:I

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ig:[I

    const/4 v3, 0x1

    iput v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    const/4 v3, 0x6

    aput v3, v2, v0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->q:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ox:Ljava/io/Reader;

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/p/p;

    invoke-static {p1}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/p/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(C)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    move v4, v2

    :goto_1
    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v4, v3, :cond_5

    add-int/lit8 v7, v4, 0x1

    aget-char v4, v0, v4

    if-ne v4, p1, :cond_1

    iput v7, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    sub-int/2addr v7, v2

    sub-int/2addr v7, v6

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v2, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_0
    invoke-virtual {v1, v0, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v8, 0x5c

    if-ne v4, v8, :cond_3

    iput v7, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    sub-int/2addr v7, v2

    add-int/lit8 v3, v7, -0x1

    if-nez v1, :cond_2

    mul-int/lit8 v7, v7, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_2
    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->k()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mn:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mn:I

    iput v7, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ia:I

    :cond_4
    move v4, v7

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    sub-int v1, v4, v2

    mul-int/lit8 v1, v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    :cond_6
    sub-int v3, v4, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    invoke-direct {p0, v6}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    const-string p1, "Unterminated string"

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private d(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ia:I

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ia:I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    :goto_0
    iput v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    :cond_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ox:Ljava/io/Reader;

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mn:I

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ia:I

    if-nez v1, :cond_2

    if-lez v2, :cond_2

    aget-char v5, v0, v3

    const v6, 0xfeff

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ia:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lt v2, p1, :cond_1

    return v4

    :cond_3
    return v3
.end method

.method private dq(Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    invoke-direct {p0, v3}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v4, v1, 0x1

    aget-char v5, v0, v1

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mn:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mn:I

    iput v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ia:I

    goto :goto_3

    :cond_3
    const/16 v6, 0x20

    if-eq v5, v6, :cond_a

    const/16 v6, 0xd

    if-eq v5, v6, :cond_a

    const/16 v6, 0x9

    if-eq v5, v6, :cond_a

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_8

    iput v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    const/4 v7, 0x2

    if-ne v4, v2, :cond_4

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    invoke-direct {p0, v7}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(I)Z

    move-result v1

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->i()V

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    aget-char v2, v0, v1

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_6

    if-eq v2, v6, :cond_5

    :goto_2
    return v5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->le()V

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    const-string v1, "*/"

    invoke-direct {p0, v1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/2addr v1, v7

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    goto/16 :goto_0

    :cond_7
    const-string p1, "Unterminated comment"

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_8
    const/16 v1, 0x23

    if-ne v5, v1, :cond_9

    iput v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->i()V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->le()V

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    goto/16 :goto_0

    :cond_9
    iput v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    return v5

    :cond_a
    :goto_3
    move v1, v4

    goto/16 :goto_0
.end method

.method private dq(I)V
    .locals 3

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ig:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ig:[I

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->q:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->q:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ig:[I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    aput p1, v0, v1

    return-void
.end method

.method private dq(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->i()V

    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private dq(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    return v3

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    aget-char v1, v1, v2

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ne v1, v4, :cond_2

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mn:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mn:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ia:I

    goto :goto_3

    :cond_2
    :goto_2
    if-ge v3, v0, :cond_4

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/2addr v2, v3

    aget-char v1, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    goto :goto_0

    :cond_4
    return v5
.end method

.method private gh()I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v2, v0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v3, v0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    :goto_0
    add-int v14, v2, v8

    const-wide/16 v16, 0x0

    const/4 v5, 0x2

    if-ne v14, v3, :cond_2

    array-length v2, v1

    if-ne v8, v2, :cond_0

    return v6

    :cond_0
    add-int/lit8 v2, v8, 0x1

    invoke-direct {v0, v2}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v3, v0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    goto/16 :goto_6

    :cond_2
    :goto_1
    add-int v14, v2, v8

    aget-char v14, v1, v14

    const/16 v18, 0x0

    const/16 v6, 0x2b

    const/4 v4, 0x5

    if-eq v14, v6, :cond_1c

    const/16 v6, 0x45

    if-eq v14, v6, :cond_19

    const/16 v6, 0x65

    if-eq v14, v6, :cond_19

    const/16 v6, 0x2d

    if-eq v14, v6, :cond_16

    const/16 v6, 0x2e

    const/4 v15, 0x3

    if-eq v14, v6, :cond_14

    const/16 v6, 0x30

    if-lt v14, v6, :cond_c

    const/16 v6, 0x39

    if-le v14, v6, :cond_3

    goto :goto_5

    :cond_3
    if-eq v9, v7, :cond_b

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    if-ne v9, v5, :cond_8

    cmp-long v4, v11, v16

    if-nez v4, :cond_5

    return v18

    :cond_5
    const-wide/16 v4, 0xa

    mul-long v4, v4, v11

    add-int/lit8 v14, v14, -0x30

    int-to-long v14, v14

    sub-long/2addr v4, v14

    const-wide v14, -0xcccccccccccccccL

    cmp-long v6, v11, v14

    if-gtz v6, :cond_7

    if-nez v6, :cond_6

    cmp-long v6, v4, v11

    if-gez v6, :cond_6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v6, 0x1

    :goto_3
    and-int/2addr v10, v6

    move-wide v11, v4

    goto/16 :goto_b

    :cond_8
    if-ne v9, v15, :cond_9

    const/4 v9, 0x4

    goto/16 :goto_b

    :cond_9
    if-eq v9, v4, :cond_a

    const/4 v5, 0x6

    if-ne v9, v5, :cond_1d

    :cond_a
    const/4 v9, 0x7

    goto/16 :goto_b

    :cond_b
    :goto_4
    add-int/lit8 v14, v14, -0x30

    neg-int v4, v14

    int-to-long v11, v4

    const/4 v9, 0x2

    goto :goto_b

    :cond_c
    :goto_5
    invoke-direct {v0, v14}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq(C)Z

    move-result v1

    if-eqz v1, :cond_d

    return v18

    :cond_d
    :goto_6
    if-ne v9, v5, :cond_11

    if-eqz v10, :cond_11

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, v11, v1

    if-nez v3, :cond_e

    if-eqz v13, :cond_11

    :cond_e
    cmp-long v1, v11, v16

    if-nez v1, :cond_f

    if-nez v13, :cond_11

    :cond_f
    if-eqz v13, :cond_10

    goto :goto_7

    :cond_10
    neg-long v11, v11

    :goto_7
    iput-wide v11, v0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->kk:J

    iget v1, v0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    const/16 v1, 0xf

    iput v1, v0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return v1

    :cond_11
    if-eq v9, v5, :cond_13

    const/4 v1, 0x4

    if-eq v9, v1, :cond_13

    const/4 v1, 0x7

    if-ne v9, v1, :cond_12

    goto :goto_8

    :cond_12
    return v18

    :cond_13
    :goto_8
    iput v8, v0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->o:I

    const/16 v1, 0x10

    iput v1, v0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return v1

    :cond_14
    if-ne v9, v5, :cond_15

    const/4 v9, 0x3

    goto :goto_b

    :cond_15
    return v18

    :cond_16
    const/4 v5, 0x6

    if-nez v9, :cond_17

    const/4 v9, 0x1

    const/4 v13, 0x1

    goto :goto_b

    :cond_17
    if-ne v9, v4, :cond_18

    :goto_9
    const/4 v9, 0x6

    goto :goto_b

    :cond_18
    return v18

    :cond_19
    if-eq v9, v5, :cond_1b

    const/4 v5, 0x4

    if-ne v9, v5, :cond_1a

    goto :goto_a

    :cond_1a
    return v18

    :cond_1b
    :goto_a
    const/4 v9, 0x5

    goto :goto_b

    :cond_1c
    const/4 v5, 0x6

    if-ne v9, v4, :cond_1e

    goto :goto_9

    :cond_1d
    :goto_b
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_1e
    return v18
.end method

.method private i()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private k()C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    const-string v2, "Unterminated escape sequence"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v3}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    aget-char v0, v0, v1

    const/16 v5, 0xa

    if-eq v0, v5, :cond_f

    const/16 v3, 0x22

    if-eq v0, v3, :cond_e

    const/16 v3, 0x27

    if-eq v0, v3, :cond_e

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_e

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_e

    const/16 v3, 0x62

    if-eq v0, v3, :cond_d

    const/16 v3, 0x66

    if-eq v0, v3, :cond_c

    const/16 v4, 0x6e

    if-eq v0, v4, :cond_b

    const/16 v4, 0x72

    if-eq v0, v4, :cond_a

    const/16 v4, 0x74

    if-eq v0, v4, :cond_9

    const/16 v4, 0x75

    if-ne v0, v4, :cond_8

    add-int/lit8 v1, v1, 0x5

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    const/4 v4, 0x4

    if-le v1, v0, :cond_3

    invoke-direct {p0, v4}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_1
    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    :goto_2
    if-ge v0, v1, :cond_7

    iget-object v5, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    aget-char v5, v5, v0

    shl-int/lit8 v2, v2, 0x4

    int-to-char v2, v2

    const/16 v6, 0x30

    if-lt v5, v6, :cond_4

    const/16 v6, 0x39

    if-gt v5, v6, :cond_4

    add-int/lit8 v5, v5, -0x30

    :goto_3
    add-int/2addr v5, v2

    int-to-char v2, v5

    goto :goto_4

    :cond_4
    const/16 v6, 0x61

    if-lt v5, v6, :cond_5

    if-gt v5, v3, :cond_5

    add-int/lit8 v5, v5, -0x57

    goto :goto_3

    :cond_5
    const/16 v6, 0x41

    if-lt v5, v6, :cond_6

    const/16 v6, 0x46

    if-gt v5, v6, :cond_6

    add-int/lit8 v5, v5, -0x37

    goto :goto_3

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    const-string v2, "\\u"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    return v2

    :cond_8
    const-string v0, "Invalid escape sequence"

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_9
    const/16 v0, 0x9

    return v0

    :cond_a
    const/16 v0, 0xd

    return v0

    :cond_b
    return v5

    :cond_c
    const/16 v0, 0xc

    return v0

    :cond_d
    const/16 v0, 0x8

    :cond_e
    return v0

    :cond_f
    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mn:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mn:I

    iput v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ia:I

    return v0
.end method

.method private le()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-direct {p0, v2}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mn:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mn:I

    iput v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ia:I

    return-void

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    return-void
.end method

.method private mn()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x66

    if-eq v0, v1, :cond_4

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const-string v0, "null"

    const-string v1, "NULL"

    const/4 v3, 0x7

    goto :goto_3

    :cond_4
    :goto_1
    const-string v0, "false"

    const-string v1, "FALSE"

    const/4 v3, 0x6

    goto :goto_3

    :cond_5
    :goto_2
    const-string v0, "true"

    const-string v1, "TRUE"

    const/4 v3, 0x5

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    :goto_4
    if-ge v5, v4, :cond_8

    iget v6, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    if-lt v6, v7, :cond_6

    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v6}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(I)Z

    move-result v6

    if-nez v6, :cond_6

    return v2

    :cond_6
    iget-object v6, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v7, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/2addr v7, v5

    aget-char v6, v6, v7

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    return v2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/2addr v0, v4

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    if-lt v0, v1, :cond_9

    add-int/lit8 v0, v4, 0x1

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/2addr v1, v4

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq(C)Z

    move-result v0

    if-eqz v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iput v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return v3
.end method

.method private ox(C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    :goto_0
    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    add-int/lit8 v4, v1, 0x1

    aget-char v1, v0, v1

    if-ne v1, p1, :cond_0

    iput v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    return-void

    :cond_0
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    iput v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->k()C

    goto :goto_0

    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mn:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mn:I

    iput v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ia:I

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    invoke-direct {p0, v3}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated string"

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private r()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int v4, v3, v2

    iget v5, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    add-int/2addr v3, v2

    aget-char v3, v4, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->i()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    array-length v3, v3

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    :pswitch_1
    move v1, v2

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_5
    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private wp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq(Z)I

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/lit8 v2, v0, 0x4

    iget v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    const/4 v4, 0x5

    if-le v2, v3, :cond_0

    invoke-direct {p0, v4}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    aget-char v1, v2, v1

    const/16 v3, 0x29

    if-ne v1, v3, :cond_2

    aget-char v1, v2, v0

    const/16 v3, 0x5d

    if-ne v1, v3, :cond_2

    add-int/lit8 v1, v0, 0x1

    aget-char v1, v2, v1

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_2

    add-int/lit8 v1, v0, 0x2

    aget-char v1, v2, v1

    const/16 v3, 0x27

    if-ne v1, v3, :cond_2

    add-int/lit8 v0, v0, 0x3

    aget-char v0, v2, v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final cd()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mn:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ia:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const-string v2, " column "

    const-string v3, " path "

    const-string v4, " at line "

    invoke-static {v0, v1, v4, v2, v3}, Lg/awf;->z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ig:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ox:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->fw()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    add-int/lit8 v0, v0, -0x2

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dq()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->fw()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq(I)V

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ig:[I

    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->q:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final fw()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ig:[I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    const/16 v3, 0x27

    const/16 v4, 0x22

    const/16 v5, 0x8

    const/4 v6, 0x3

    const/16 v7, 0x5d

    const/4 v8, 0x7

    const/16 v9, 0x3b

    const/16 v10, 0x2c

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_0

    sub-int/2addr v1, v13

    aput v12, v0, v1

    goto/16 :goto_0

    :cond_0
    if-ne v2, v12, :cond_3

    invoke-direct {p0, v13}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq(Z)I

    move-result v0

    if-eq v0, v10, :cond_c

    if-eq v0, v9, :cond_2

    if-ne v0, v7, :cond_1

    iput v11, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return v11

    :cond_1
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->i()V

    goto :goto_0

    :cond_3
    const/4 v14, 0x5

    if-eq v2, v6, :cond_19

    if-ne v2, v14, :cond_4

    goto/16 :goto_2

    :cond_4
    if-ne v2, v11, :cond_7

    sub-int/2addr v1, v13

    aput v14, v0, v1

    invoke-direct {p0, v13}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq(Z)I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_c

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->i()V

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v13}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_5
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    aget-char v0, v0, v1

    const/16 v14, 0x3e

    if-ne v0, v14, :cond_c

    add-int/2addr v1, v13

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    goto :goto_0

    :cond_6
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_7
    const/4 v0, 0x6

    if-ne v2, v0, :cond_9

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->wp()V

    :cond_8
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ig:[I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    sub-int/2addr v1, v13

    aput v8, v0, v1

    goto :goto_0

    :cond_9
    if-ne v2, v8, :cond_b

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq(Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/16 v0, 0x11

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return v0

    :cond_a
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->i()V

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    goto :goto_0

    :cond_b
    if-eq v2, v5, :cond_18

    :cond_c
    :goto_0
    invoke-direct {p0, v13}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq(Z)I

    move-result v0

    if-eq v0, v4, :cond_17

    if-eq v0, v3, :cond_16

    if-eq v0, v10, :cond_13

    if-eq v0, v9, :cond_13

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_12

    if-eq v0, v7, :cond_11

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mn()I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    :cond_d
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->gh()I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    :cond_e
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq(C)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->i()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return v0

    :cond_f
    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_10
    iput v13, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return v13

    :cond_11
    if-ne v2, v13, :cond_13

    iput v11, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return v11

    :cond_12
    iput v6, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return v6

    :cond_13
    if-eq v2, v13, :cond_15

    if-ne v2, v12, :cond_14

    goto :goto_1

    :cond_14
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_15
    :goto_1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->i()V

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iput v8, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return v8

    :cond_16
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->i()V

    iput v5, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return v5

    :cond_17
    const/16 v0, 0x9

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_2
    sub-int/2addr v1, v13

    aput v11, v0, v1

    const/16 v0, 0x7d

    if-ne v2, v14, :cond_1c

    invoke-direct {p0, v13}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq(Z)I

    move-result v1

    if-eq v1, v10, :cond_1c

    if-eq v1, v9, :cond_1b

    if-ne v1, v0, :cond_1a

    iput v12, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return v12

    :cond_1a
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1b
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->i()V

    :cond_1c
    invoke-direct {p0, v13}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq(Z)I

    move-result v1

    if-eq v1, v4, :cond_21

    if-eq v1, v3, :cond_20

    const-string v3, "Expected name"

    if-eq v1, v0, :cond_1e

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->i()V

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    int-to-char v0, v1

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq(C)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0xe

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return v0

    :cond_1d
    invoke-direct {p0, v3}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1e
    if-eq v2, v14, :cond_1f

    iput v12, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return v12

    :cond_1f
    invoke-direct {p0, v3}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_20
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->i()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return v0

    :cond_21
    const/16 v0, 0xd

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return v0
.end method

.method public ia()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->fw()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->r()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->q:[Ljava/lang/String;

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ig()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->fw()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->kk:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v5, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->o:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    :goto_1
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    :goto_2
    iput v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq:Z

    if-nez v3, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    new-instance v2, Lcom/bykv/vk/openvk/preload/dq/p/p;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/bykv/vk/openvk/preload/dq/p/p;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    iget v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0
.end method

.method public iw()Lcom/bykv/vk/openvk/preload/dq/p/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->fw()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->o:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->mn:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->s:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->iw:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->kk:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->ia:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->d:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :pswitch_7
    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->dq:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :pswitch_8
    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->p:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :pswitch_9
    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->ox:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public jy()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->fw()I

    move-result v2

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v4}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq(I)V

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_2
    if-ne v2, v4, :cond_3

    invoke-direct {p0, v3}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_6

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    goto :goto_1

    :cond_5
    const/16 v3, 0xe

    const/16 v5, 0xd

    const/16 v6, 0x9

    const/16 v7, 0xc

    const/16 v8, 0xa

    if-eq v2, v3, :cond_b

    if-ne v2, v8, :cond_6

    goto :goto_4

    :cond_6
    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    if-ne v2, v7, :cond_7

    goto :goto_3

    :cond_7
    if-eq v2, v6, :cond_9

    if-ne v2, v5, :cond_8

    goto :goto_2

    :cond_8
    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->o:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    goto :goto_6

    :cond_9
    :goto_2
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ox(C)V

    goto :goto_6

    :cond_a
    :goto_3
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ox(C)V

    goto :goto_6

    :cond_b
    :goto_4
    const/4 v2, 0x0

    :goto_5
    iget v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int v9, v3, v2

    iget v10, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw:I

    if-ge v9, v10, :cond_e

    iget-object v9, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    add-int/2addr v3, v2

    aget-char v3, v9, v3

    if-eq v3, v6, :cond_d

    if-eq v3, v8, :cond_d

    if-eq v3, v7, :cond_d

    if-eq v3, v5, :cond_d

    const/16 v9, 0x20

    if-eq v3, v9, :cond_d

    const/16 v9, 0x23

    if-eq v3, v9, :cond_c

    const/16 v9, 0x2c

    if-eq v3, v9, :cond_d

    const/16 v9, 0x2f

    if-eq v3, v9, :cond_c

    const/16 v9, 0x3d

    if-eq v3, v9, :cond_c

    const/16 v9, 0x7b

    if-eq v3, v9, :cond_d

    const/16 v9, 0x7d

    if-eq v3, v9, :cond_d

    const/16 v9, 0x3a

    if-eq v3, v9, :cond_d

    const/16 v9, 0x3b

    if-eq v3, v9, :cond_c

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    :pswitch_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->i()V

    :cond_d
    :pswitch_1
    iget v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    goto :goto_6

    :cond_e
    add-int/2addr v3, v2

    iput v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    invoke-direct {p0, v4}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_f
    :goto_6
    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    add-int/2addr v3, v4

    aput v3, v0, v2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->q:[Ljava/lang/String;

    sub-int/2addr v1, v4

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public kk()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->fw()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->r()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->kk:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->o:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->o:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mp()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->fw()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->kk:J

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-string v3, "Expected a long but was "

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v5, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->o:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    goto :goto_3

    :cond_2
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4

    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v0, 0x27

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    :goto_1
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    iget-object v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    iget v5, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    nop

    :goto_3
    const/16 v0, 0xb

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v4, v0

    long-to-double v6, v4

    cmpl-double v8, v6, v0

    if-nez v8, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-wide v4

    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public no()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->fw()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->fw()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    return v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ox()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->fw()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->fw()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->q:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    sub-int/2addr v0, v1

    aget v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, v2, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->fw()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    const-string v3, "Expected an int but was "

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->kk:J

    long-to-int v4, v0

    int-to-long v5, v4

    cmp-long v7, v0, v5

    if-nez v7, :cond_1

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v4

    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->kk:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p:[C

    iget v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v5, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->o:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s:I

    goto :goto_3

    :cond_3
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-eq v0, v5, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-ne v0, v4, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    :goto_1
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    iget v4, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    nop

    :goto_3
    const/16 v0, 0xb

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v4, v0

    int-to-double v5, v4

    cmpl-double v7, v5, v0

    if-nez v7, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->jy:[I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->mp:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v4

    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->fw()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->cd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

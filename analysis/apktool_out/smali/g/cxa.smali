.class public final Lg/cxa;
.super Ljava/io/Writer;
.source "SourceFile"


# static fields
.field public static final a:[C

.field public static final b:[C

.field public static final c:[B

.field public static final d:[C

.field public static final e:[B

.field public static final f:Ljava/lang/ThreadLocal;

.field public static final g:[I

.field public static final h:[C

.field public static final i:[C

.field public static final j:[C


# instance fields
.field public final k:I

.field public l:[C

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lg/cxa;->f:Ljava/lang/ThreadLocal;

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lg/cxa;->g:[I

    const/16 v1, 0x24

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lg/cxa;->j:[C

    const/16 v1, 0x64

    new-array v2, v1, [C

    fill-array-data v2, :array_2

    sput-object v2, Lg/cxa;->b:[C

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    sput-object v1, Lg/cxa;->a:[C

    const/16 v1, 0x60

    new-array v1, v1, [C

    fill-array-data v1, :array_4

    sput-object v1, Lg/cxa;->h:[C

    const/16 v1, 0xa1

    new-array v2, v1, [B

    sput-object v2, Lg/cxa;->c:[B

    new-array v1, v1, [B

    sput-object v1, Lg/cxa;->e:[B

    const/16 v3, 0x5d

    new-array v3, v3, [C

    sput-object v3, Lg/cxa;->d:[C

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput-byte v4, v2, v3

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    const/4 v6, 0x2

    aput-byte v4, v2, v6

    const/4 v7, 0x3

    aput-byte v4, v2, v7

    aput-byte v4, v2, v4

    const/4 v8, 0x5

    aput-byte v4, v2, v8

    const/4 v9, 0x6

    aput-byte v4, v2, v9

    const/4 v10, 0x7

    aput-byte v4, v2, v10

    const/16 v11, 0x8

    aput-byte v5, v2, v11

    const/16 v12, 0x9

    aput-byte v5, v2, v12

    aput-byte v5, v2, v0

    const/16 v13, 0xb

    aput-byte v4, v2, v13

    const/16 v14, 0xc

    aput-byte v5, v2, v14

    const/16 v15, 0xd

    aput-byte v5, v2, v15

    const/16 v16, 0x22

    aput-byte v5, v2, v16

    const/16 v17, 0x5c

    aput-byte v5, v2, v17

    aput-byte v4, v1, v3

    aput-byte v4, v1, v5

    aput-byte v4, v1, v6

    aput-byte v4, v1, v7

    aput-byte v4, v1, v4

    aput-byte v4, v1, v8

    aput-byte v4, v1, v9

    aput-byte v4, v1, v10

    aput-byte v5, v1, v11

    aput-byte v5, v1, v12

    aput-byte v5, v1, v0

    aput-byte v4, v1, v13

    aput-byte v5, v1, v14

    aput-byte v5, v1, v15

    aput-byte v5, v1, v17

    const/16 v2, 0x27

    aput-byte v5, v1, v2

    const/16 v1, 0xe

    const/16 v18, 0xa

    :goto_0
    const/16 v0, 0x1f

    if-gt v1, v0, :cond_0

    sget-object v0, Lg/cxa;->c:[B

    aput-byte v4, v0, v1

    sget-object v0, Lg/cxa;->e:[B

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    :goto_1
    const/16 v1, 0xa0

    if-gt v0, v1, :cond_1

    sget-object v1, Lg/cxa;->c:[B

    aput-byte v4, v1, v0

    sget-object v1, Lg/cxa;->e:[B

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lg/cxa;->d:[C

    const/16 v1, 0x30

    aput-char v1, v0, v3

    const/16 v1, 0x31

    aput-char v1, v0, v5

    const/16 v1, 0x32

    aput-char v1, v0, v6

    const/16 v1, 0x33

    aput-char v1, v0, v7

    const/16 v1, 0x34

    aput-char v1, v0, v4

    const/16 v1, 0x35

    aput-char v1, v0, v8

    const/16 v1, 0x36

    aput-char v1, v0, v9

    const/16 v1, 0x37

    aput-char v1, v0, v10

    const/16 v1, 0x62

    aput-char v1, v0, v11

    const/16 v1, 0x74

    aput-char v1, v0, v12

    const/16 v1, 0x6e

    aput-char v1, v0, v18

    const/16 v1, 0x76

    aput-char v1, v0, v13

    const/16 v1, 0x66

    aput-char v1, v0, v14

    const/16 v1, 0x72

    aput-char v1, v0, v15

    aput-char v16, v0, v16

    aput-char v2, v0, v2

    const/16 v1, 0x2f

    aput-char v1, v0, v1

    aput-char v17, v0, v17

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    sput-object v0, Lg/cxa;->i:[C

    return-void

    :array_0
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_4
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data

    :array_5
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(I[Lg/gar;)V
    .locals 3

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    sget-object v0, Lg/cxa;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lg/cxa;->l:[C

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lg/cxa;->l:[C

    if-nez v0, :cond_1

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lg/cxa;->l:[C

    :cond_1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    iget v2, v2, Lg/gar;->mask:I

    or-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput p1, p0, Lg/cxa;->k:I

    return-void
.end method

.method public static n(JI[C)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    neg-long p0, p0

    const/16 v0, 0x2d

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/32 v1, 0x7fffffff

    sget-object v3, Lg/cxa;->b:[C

    sget-object v4, Lg/cxa;->a:[C

    cmp-long v5, p0, v1

    if-lez v5, :cond_1

    const-wide/16 v1, 0x64

    div-long v1, p0, v1

    const/4 v5, 0x6

    shl-long v5, v1, v5

    const/4 v7, 0x5

    shl-long v7, v1, v7

    add-long/2addr v5, v7

    const/4 v7, 0x2

    shl-long v7, v1, v7

    add-long/2addr v5, v7

    sub-long/2addr p0, v5

    long-to-int p1, p0

    add-int/lit8 p0, p2, -0x1

    aget-char v4, v4, p1

    aput-char v4, p3, p0

    add-int/lit8 p2, p2, -0x2

    aget-char p0, v3, p1

    aput-char p0, p3, p2

    move-wide p0, v1

    goto :goto_0

    :cond_1
    long-to-int p1, p0

    :goto_1
    const/high16 p0, 0x10000

    if-lt p1, p0, :cond_2

    div-int/lit8 p0, p1, 0x64

    shl-int/lit8 v1, p0, 0x6

    shl-int/lit8 v2, p0, 0x5

    add-int/2addr v1, v2

    shl-int/lit8 v2, p0, 0x2

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    add-int/lit8 v1, p2, -0x1

    aget-char v2, v4, p1

    aput-char v2, p3, v1

    add-int/lit8 p2, p2, -0x2

    aget-char p1, v3, p1

    aput-char p1, p3, p2

    move p1, p0

    goto :goto_1

    :cond_2
    :goto_2
    const p0, 0xcccd

    mul-int p0, p0, p1

    ushr-int/lit8 p0, p0, 0x13

    shl-int/lit8 v1, p0, 0x3

    shl-int/lit8 v2, p0, 0x1

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    add-int/lit8 v1, p2, -0x1

    sget-object v2, Lg/cxa;->j:[C

    aget-char p1, v2, p1

    aput-char p1, p3, v1

    if-nez p0, :cond_4

    if-eqz v0, :cond_3

    add-int/lit8 p2, p2, -0x2

    aput-char v0, p3, p2

    :cond_3
    return-void

    :cond_4
    move p1, p0

    move p2, v1

    goto :goto_2
.end method


# virtual methods
.method public final append(C)Ljava/io/Writer;
    .locals 0

    invoke-virtual {p0, p1}, Lg/cxa;->write(I)V

    return-object p0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0

    invoke-virtual {p0, p1}, Lg/cxa;->s(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lg/cxa;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public final append(C)Ljava/lang/Appendable;
    .locals 0

    invoke-virtual {p0, p1}, Lg/cxa;->write(I)V

    return-object p0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    invoke-virtual {p0, p1}, Lg/cxa;->s(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lg/cxa;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lg/cxa;->l:[C

    array-length v1, v0

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_0

    sget-object v1, Lg/cxa;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lg/cxa;->l:[C

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final o()V
    .locals 1

    const-string v0, "null"

    invoke-virtual {p0, v0}, Lg/cxa;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final p(Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lg/gar;->UseSingleQuotes:Lg/gar;

    iget v2, v2, Lg/gar;->mask:I

    iget v3, v0, Lg/cxa;->k:I

    and-int/2addr v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x5c

    sget-object v7, Lg/cxa;->d:[C

    const/16 v8, 0x3a

    if-eqz v2, :cond_9

    sget-object v2, Lg/gar;->QuoteFieldNames:Lg/gar;

    iget v2, v2, Lg/gar;->mask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lg/cxa;->r(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lg/cxa;->write(I)V

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, v0, Lg/cxa;->m:I

    add-int/2addr v3, v2

    add-int/2addr v3, v4

    iget-object v9, v0, Lg/cxa;->l:[C

    array-length v9, v9

    if-le v3, v9, :cond_1

    invoke-virtual {v0, v3}, Lg/cxa;->u(I)V

    :cond_1
    const/16 v9, 0x27

    if-nez v2, :cond_3

    iget v1, v0, Lg/cxa;->m:I

    add-int/lit8 v1, v1, 0x3

    iget-object v2, v0, Lg/cxa;->l:[C

    array-length v2, v2

    if-le v1, v2, :cond_2

    invoke-virtual {v0, v1}, Lg/cxa;->u(I)V

    :cond_2
    iget-object v1, v0, Lg/cxa;->l:[C

    iget v2, v0, Lg/cxa;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lg/cxa;->m:I

    aput-char v9, v1, v2

    add-int/lit8 v4, v2, 0x2

    iput v4, v0, Lg/cxa;->m:I

    aput-char v9, v1, v3

    add-int/lit8 v2, v2, 0x3

    iput v2, v0, Lg/cxa;->m:I

    aput-char v8, v1, v4

    return-void

    :cond_3
    iget v10, v0, Lg/cxa;->m:I

    add-int v11, v10, v2

    iget-object v12, v0, Lg/cxa;->l:[C

    invoke-virtual {v1, v5, v2, v12, v10}, Ljava/lang/String;->getChars(II[CI)V

    iput v3, v0, Lg/cxa;->m:I

    move v1, v10

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v11, :cond_8

    iget-object v12, v0, Lg/cxa;->l:[C

    aget-char v13, v12, v1

    sget-object v14, Lg/cxa;->e:[B

    array-length v15, v14

    if-ge v13, v15, :cond_5

    aget-byte v14, v14, v13

    if-eqz v14, :cond_5

    if-nez v2, :cond_6

    add-int/lit8 v3, v3, 0x3

    array-length v2, v12

    if-le v3, v2, :cond_4

    invoke-virtual {v0, v3}, Lg/cxa;->u(I)V

    :cond_4
    iput v3, v0, Lg/cxa;->m:I

    iget-object v2, v0, Lg/cxa;->l:[C

    add-int/lit8 v12, v1, 0x1

    add-int/lit8 v14, v1, 0x3

    sub-int v15, v11, v1

    sub-int/2addr v15, v4

    invoke-static {v2, v12, v2, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lg/cxa;->l:[C

    invoke-static {v2, v5, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lg/cxa;->l:[C

    aput-char v9, v2, v10

    aput-char v6, v2, v12

    add-int/lit8 v1, v1, 0x2

    aget-char v12, v7, v13

    aput-char v12, v2, v1

    add-int/lit8 v11, v11, 0x2

    iget v12, v0, Lg/cxa;->m:I

    add-int/lit8 v12, v12, -0x2

    aput-char v9, v2, v12

    const/4 v2, 0x1

    :cond_5
    const/16 v16, 0x5c

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    array-length v12, v12

    if-le v3, v12, :cond_7

    invoke-virtual {v0, v3}, Lg/cxa;->u(I)V

    :cond_7
    iput v3, v0, Lg/cxa;->m:I

    iget-object v12, v0, Lg/cxa;->l:[C

    add-int/lit8 v14, v1, 0x1

    add-int/lit8 v15, v1, 0x2

    const/16 v16, 0x5c

    sub-int v6, v11, v1

    invoke-static {v12, v14, v12, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v0, Lg/cxa;->l:[C

    aput-char v16, v6, v1

    aget-char v1, v7, v13

    aput-char v1, v6, v14

    add-int/lit8 v11, v11, 0x1

    move v1, v14

    :goto_1
    add-int/2addr v1, v4

    const/16 v6, 0x5c

    goto :goto_0

    :cond_8
    iget-object v1, v0, Lg/cxa;->l:[C

    sub-int/2addr v3, v4

    aput-char v8, v1, v3

    return-void

    :cond_9
    const/16 v16, 0x5c

    sget-object v2, Lg/gar;->QuoteFieldNames:Lg/gar;

    iget v2, v2, Lg/gar;->mask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_a

    move/from16 v2, p2

    invoke-virtual {v0, v2, v1, v8}, Lg/cxa;->v(ZLjava/lang/String;C)V

    return-void

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, v0, Lg/cxa;->m:I

    add-int/2addr v3, v2

    add-int/2addr v3, v4

    iget-object v6, v0, Lg/cxa;->l:[C

    array-length v6, v6

    if-le v3, v6, :cond_b

    invoke-virtual {v0, v3}, Lg/cxa;->u(I)V

    :cond_b
    const/16 v6, 0x22

    if-nez v2, :cond_d

    iget v1, v0, Lg/cxa;->m:I

    add-int/lit8 v1, v1, 0x3

    iget-object v2, v0, Lg/cxa;->l:[C

    array-length v2, v2

    if-le v1, v2, :cond_c

    invoke-virtual {v0, v1}, Lg/cxa;->u(I)V

    :cond_c
    iget-object v1, v0, Lg/cxa;->l:[C

    iget v2, v0, Lg/cxa;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lg/cxa;->m:I

    aput-char v6, v1, v2

    add-int/lit8 v4, v2, 0x2

    iput v4, v0, Lg/cxa;->m:I

    aput-char v6, v1, v3

    add-int/lit8 v2, v2, 0x3

    iput v2, v0, Lg/cxa;->m:I

    aput-char v8, v1, v4

    return-void

    :cond_d
    iget v9, v0, Lg/cxa;->m:I

    add-int v10, v9, v2

    iget-object v11, v0, Lg/cxa;->l:[C

    invoke-virtual {v1, v5, v2, v11, v9}, Ljava/lang/String;->getChars(II[CI)V

    iput v3, v0, Lg/cxa;->m:I

    move v1, v9

    const/4 v2, 0x0

    :goto_2
    if-ge v1, v10, :cond_12

    iget-object v11, v0, Lg/cxa;->l:[C

    aget-char v12, v11, v1

    sget-object v13, Lg/cxa;->c:[B

    array-length v14, v13

    if-ge v12, v14, :cond_11

    aget-byte v13, v13, v12

    if-eqz v13, :cond_11

    if-nez v2, :cond_f

    add-int/lit8 v3, v3, 0x3

    array-length v2, v11

    if-le v3, v2, :cond_e

    invoke-virtual {v0, v3}, Lg/cxa;->u(I)V

    :cond_e
    iput v3, v0, Lg/cxa;->m:I

    iget-object v2, v0, Lg/cxa;->l:[C

    add-int/lit8 v11, v1, 0x1

    add-int/lit8 v13, v1, 0x3

    sub-int v14, v10, v1

    sub-int/2addr v14, v4

    invoke-static {v2, v11, v2, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lg/cxa;->l:[C

    invoke-static {v2, v5, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lg/cxa;->l:[C

    aput-char v6, v2, v9

    aput-char v16, v2, v11

    add-int/lit8 v1, v1, 0x2

    aget-char v11, v7, v12

    aput-char v11, v2, v1

    add-int/lit8 v10, v10, 0x2

    iget v11, v0, Lg/cxa;->m:I

    add-int/lit8 v11, v11, -0x2

    aput-char v6, v2, v11

    const/4 v2, 0x1

    goto :goto_3

    :cond_f
    add-int/lit8 v3, v3, 0x1

    array-length v11, v11

    if-le v3, v11, :cond_10

    invoke-virtual {v0, v3}, Lg/cxa;->u(I)V

    :cond_10
    iput v3, v0, Lg/cxa;->m:I

    iget-object v11, v0, Lg/cxa;->l:[C

    add-int/lit8 v13, v1, 0x1

    add-int/lit8 v14, v1, 0x2

    sub-int v15, v10, v1

    invoke-static {v11, v13, v11, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v0, Lg/cxa;->l:[C

    aput-char v16, v11, v1

    aget-char v1, v7, v12

    aput-char v1, v11, v13

    add-int/lit8 v10, v10, 0x1

    move v1, v13

    :cond_11
    :goto_3
    add-int/2addr v1, v4

    goto :goto_2

    :cond_12
    iget-object v1, v0, Lg/cxa;->l:[C

    iget v2, v0, Lg/cxa;->m:I

    sub-int/2addr v2, v4

    aput-char v8, v1, v2

    return-void
.end method

.method public final q(I)V
    .locals 4

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const-string p1, "-2147483648"

    invoke-virtual {p0, p1}, Lg/cxa;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    if-gez p1, :cond_1

    neg-int v0, p1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lg/cxa;->g:[I

    aget v2, v2, v1

    if-gt v0, v2, :cond_4

    add-int/lit8 v0, v1, 0x1

    if-gez p1, :cond_2

    add-int/lit8 v0, v1, 0x2

    :cond_2
    iget v1, p0, Lg/cxa;->m:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lg/cxa;->l:[C

    array-length v0, v0

    if-le v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lg/cxa;->u(I)V

    :cond_3
    int-to-long v2, p1

    iget-object p1, p0, Lg/cxa;->l:[C

    invoke-static {v2, v3, v1, p1}, Lg/cxa;->n(JI[C)V

    iput v1, p0, Lg/cxa;->m:I

    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final r(Ljava/lang/String;)V
    .locals 14

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget p1, p0, Lg/cxa;->m:I

    const/4 v1, 0x4

    add-int/2addr p1, v1

    iget-object v2, p0, Lg/cxa;->l:[C

    array-length v2, v2

    if-le p1, v2, :cond_0

    invoke-virtual {p0, p1}, Lg/cxa;->u(I)V

    :cond_0
    iget-object v2, p0, Lg/cxa;->l:[C

    iget v3, p0, Lg/cxa;->m:I

    const-string v4, "null"

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iput p1, p0, Lg/cxa;->m:I

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lg/cxa;->m:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lg/cxa;->l:[C

    array-length v3, v3

    if-le v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lg/cxa;->u(I)V

    :cond_2
    iget v3, p0, Lg/cxa;->m:I

    add-int/lit8 v4, v3, 0x1

    add-int v5, v4, v1

    iget-object v6, p0, Lg/cxa;->l:[C

    const/16 v7, 0x27

    aput-char v7, v6, v3

    invoke-virtual {p1, v0, v1, v6, v4}, Ljava/lang/String;->getChars(II[CI)V

    iput v2, p0, Lg/cxa;->m:I

    const/4 p1, -0x1

    move v3, v4

    const/4 v1, 0x0

    const/4 v6, -0x1

    :goto_0
    const/16 v8, 0x2f

    const/16 v9, 0xd

    const/16 v10, 0x5c

    if-ge v3, v5, :cond_5

    iget-object v11, p0, Lg/cxa;->l:[C

    aget-char v11, v11, v3

    if-le v11, v9, :cond_3

    if-eq v11, v10, :cond_3

    if-eq v11, v7, :cond_3

    if-ne v11, v8, :cond_4

    sget-object v8, Lg/gar;->WriteSlashAsSpecial:Lg/gar;

    iget v8, v8, Lg/gar;->mask:I

    iget v9, p0, Lg/cxa;->k:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v6, v3

    move v1, v11

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    add-int/2addr v2, v0

    iget-object v3, p0, Lg/cxa;->l:[C

    array-length v3, v3

    if-le v2, v3, :cond_6

    invoke-virtual {p0, v2}, Lg/cxa;->u(I)V

    :cond_6
    iput v2, p0, Lg/cxa;->m:I

    sget-object v2, Lg/cxa;->d:[C

    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    iget-object p1, p0, Lg/cxa;->l:[C

    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v4, v6, 0x2

    sub-int/2addr v5, v6

    sub-int/2addr v5, v3

    invoke-static {p1, v0, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lg/cxa;->l:[C

    aput-char v10, p1, v6

    aget-char v1, v2, v1

    aput-char v1, p1, v0

    goto :goto_2

    :cond_7
    if-le v0, v3, :cond_a

    iget-object v0, p0, Lg/cxa;->l:[C

    add-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v6, 0x2

    sub-int v13, v5, v6

    sub-int/2addr v13, v3

    invoke-static {v0, v11, v0, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lg/cxa;->l:[C

    aput-char v10, v0, v6

    aget-char v1, v2, v1

    aput-char v1, v0, v11

    add-int/2addr v5, v3

    add-int/2addr v6, p1

    :goto_1
    if-lt v6, v4, :cond_a

    iget-object p1, p0, Lg/cxa;->l:[C

    aget-char v0, p1, v6

    if-le v0, v9, :cond_8

    if-eq v0, v10, :cond_8

    if-eq v0, v7, :cond_8

    if-ne v0, v8, :cond_9

    sget-object v1, Lg/gar;->WriteSlashAsSpecial:Lg/gar;

    iget v1, v1, Lg/gar;->mask:I

    iget v11, p0, Lg/cxa;->k:I

    and-int/2addr v1, v11

    if-eqz v1, :cond_9

    :cond_8
    add-int/lit8 v1, v6, 0x1

    add-int/lit8 v11, v6, 0x2

    sub-int v12, v5, v6

    sub-int/2addr v12, v3

    invoke-static {p1, v1, p1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lg/cxa;->l:[C

    aput-char v10, p1, v6

    aget-char v0, v2, v0

    aput-char v0, p1, v1

    add-int/lit8 v5, v5, 0x1

    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_a
    :goto_2
    iget-object p1, p0, Lg/cxa;->l:[C

    iget v0, p0, Lg/cxa;->m:I

    sub-int/2addr v0, v3

    aput-char v7, p1, v0

    return-void
.end method

.method public final s(Ljava/lang/CharSequence;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lg/cxa;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lg/gar;->UseSingleQuotes:Lg/gar;

    iget v0, v0, Lg/gar;->mask:I

    iget v1, p0, Lg/cxa;->k:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lg/cxa;->r(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0}, Lg/cxa;->v(ZLjava/lang/String;C)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lg/cxa;->l:[C

    const/4 v2, 0x0

    iget v3, p0, Lg/cxa;->m:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final u(I)V
    .locals 3

    iget-object v0, p0, Lg/cxa;->l:[C

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    new-array p1, p1, [C

    iget v1, p0, Lg/cxa;->m:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lg/cxa;->l:[C

    return-void
.end method

.method public final v(ZLjava/lang/String;C)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lg/cxa;->o()V

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lg/cxa;->write(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, v0, Lg/cxa;->m:I

    add-int/2addr v4, v3

    add-int/lit8 v5, v4, 0x2

    if-eqz v2, :cond_2

    add-int/lit8 v5, v4, 0x3

    :cond_2
    iget-object v4, v0, Lg/cxa;->l:[C

    array-length v4, v4

    if-le v5, v4, :cond_3

    invoke-virtual {v0, v5}, Lg/cxa;->u(I)V

    :cond_3
    iget v4, v0, Lg/cxa;->m:I

    add-int/lit8 v6, v4, 0x1

    add-int v7, v6, v3

    iget-object v8, v0, Lg/cxa;->l:[C

    const/16 v9, 0x22

    aput-char v9, v8, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3, v8, v6}, Ljava/lang/String;->getChars(II[CI)V

    iput v5, v0, Lg/cxa;->m:I

    sget-object v3, Lg/gar;->BrowserCompatible:Lg/gar;

    iget v3, v3, Lg/gar;->mask:I

    iget v8, v0, Lg/cxa;->k:I

    and-int/2addr v3, v8

    sget-object v11, Lg/cxa;->d:[C

    sget-object v12, Lg/cxa;->i:[C

    const/16 v14, 0x2f

    const/4 v15, -0x1

    const/16 v16, 0x75

    const/16 v4, 0x5c

    const/16 v18, 0x30

    if-eqz v3, :cond_14

    move v1, v6

    :goto_0
    const/16 v19, 0x1

    const/16 v8, 0xa

    const/16 v10, 0xc

    const/16 v3, 0x8

    if-ge v1, v7, :cond_9

    iget-object v13, v0, Lg/cxa;->l:[C

    aget-char v13, v13, v1

    if-eq v13, v9, :cond_7

    if-eq v13, v14, :cond_7

    if-ne v13, v4, :cond_4

    goto :goto_3

    :cond_4
    if-eq v13, v3, :cond_7

    if-eq v13, v10, :cond_7

    if-eq v13, v8, :cond_7

    const/16 v3, 0xd

    if-eq v13, v3, :cond_7

    const/16 v3, 0x9

    if-ne v13, v3, :cond_5

    goto :goto_3

    :cond_5
    const/16 v3, 0x20

    if-ge v13, v3, :cond_6

    :goto_1
    add-int/lit8 v5, v5, 0x5

    :goto_2
    move v15, v1

    goto :goto_4

    :cond_6
    const/16 v3, 0x7f

    if-lt v13, v3, :cond_8

    goto :goto_1

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    iget-object v1, v0, Lg/cxa;->l:[C

    array-length v1, v1

    if-le v5, v1, :cond_a

    invoke-virtual {v0, v5}, Lg/cxa;->u(I)V

    :cond_a
    iput v5, v0, Lg/cxa;->m:I

    :goto_5
    if-lt v15, v6, :cond_12

    iget-object v1, v0, Lg/cxa;->l:[C

    aget-char v5, v1, v15

    if-eq v5, v3, :cond_f

    if-eq v5, v10, :cond_f

    if-eq v5, v8, :cond_f

    const/16 v13, 0xd

    if-eq v5, v13, :cond_10

    const/16 v3, 0x9

    if-ne v5, v3, :cond_b

    goto/16 :goto_9

    :cond_b
    if-eq v5, v9, :cond_e

    if-eq v5, v14, :cond_e

    if-ne v5, v4, :cond_c

    goto :goto_7

    :cond_c
    const/16 v3, 0x20

    if-ge v5, v3, :cond_d

    add-int/lit8 v3, v15, 0x1

    add-int/lit8 v8, v15, 0x6

    sub-int v21, v7, v15

    add-int/lit8 v10, v21, -0x1

    invoke-static {v1, v3, v1, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lg/cxa;->l:[C

    aput-char v4, v1, v15

    aput-char v16, v1, v3

    add-int/lit8 v3, v15, 0x2

    aput-char v18, v1, v3

    add-int/lit8 v3, v15, 0x3

    aput-char v18, v1, v3

    add-int/lit8 v3, v15, 0x4

    mul-int/lit8 v5, v5, 0x2

    sget-object v8, Lg/cxa;->h:[C

    aget-char v10, v8, v5

    aput-char v10, v1, v3

    add-int/lit8 v3, v15, 0x5

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v8, v5

    aput-char v5, v1, v3

    :goto_6
    add-int/lit8 v7, v7, 0x5

    goto :goto_a

    :cond_d
    const/16 v3, 0x7f

    if-lt v5, v3, :cond_11

    add-int/lit8 v3, v15, 0x1

    add-int/lit8 v8, v15, 0x6

    sub-int v10, v7, v15

    add-int/lit8 v10, v10, -0x1

    invoke-static {v1, v3, v1, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lg/cxa;->l:[C

    aput-char v4, v1, v15

    aput-char v16, v1, v3

    add-int/lit8 v3, v15, 0x2

    ushr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v12, v8

    aput-char v8, v1, v3

    add-int/lit8 v3, v15, 0x3

    ushr-int/lit8 v8, v5, 0x8

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v12, v8

    aput-char v8, v1, v3

    add-int/lit8 v3, v15, 0x4

    ushr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v12, v8

    aput-char v8, v1, v3

    add-int/lit8 v3, v15, 0x5

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v12, v5

    aput-char v5, v1, v3

    goto :goto_6

    :cond_e
    :goto_7
    add-int/lit8 v3, v15, 0x1

    add-int/lit8 v8, v15, 0x2

    sub-int v10, v7, v15

    add-int/lit8 v10, v10, -0x1

    invoke-static {v1, v3, v1, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lg/cxa;->l:[C

    aput-char v4, v1, v15

    aput-char v5, v1, v3

    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_f
    const/16 v13, 0xd

    :cond_10
    :goto_9
    add-int/lit8 v3, v15, 0x1

    add-int/lit8 v8, v15, 0x2

    sub-int v10, v7, v15

    add-int/lit8 v10, v10, -0x1

    invoke-static {v1, v3, v1, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lg/cxa;->l:[C

    aput-char v4, v1, v15

    aget-char v5, v11, v5

    aput-char v5, v1, v3

    goto :goto_8

    :cond_11
    :goto_a
    add-int/lit8 v15, v15, -0x1

    const/16 v3, 0x8

    const/16 v8, 0xa

    const/16 v10, 0xc

    goto/16 :goto_5

    :cond_12
    if-eqz v2, :cond_13

    iget-object v1, v0, Lg/cxa;->l:[C

    iget v3, v0, Lg/cxa;->m:I

    add-int/lit8 v4, v3, -0x2

    aput-char v9, v1, v4

    add-int/lit8 v3, v3, -0x1

    aput-char v2, v1, v3

    return-void

    :cond_13
    iget-object v1, v0, Lg/cxa;->l:[C

    iget v2, v0, Lg/cxa;->m:I

    add-int/lit8 v2, v2, -0x1

    aput-char v9, v1, v2

    return-void

    :cond_14
    const/16 v19, 0x1

    if-eqz p1, :cond_2b

    move v8, v5

    move v10, v6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v13, -0x1

    const/16 v17, -0x1

    :goto_b
    const/16 v9, 0x2028

    sget-object v4, Lg/cxa;->c:[B

    if-ge v10, v7, :cond_21

    iget-object v14, v0, Lg/cxa;->l:[C

    aget-char v14, v14, v10

    if-ne v14, v9, :cond_17

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v8, 0x4

    if-ne v13, v15, :cond_16

    move v13, v10

    move/from16 v17, v13

    :goto_c
    move v5, v14

    :cond_15
    :goto_d
    const/4 v9, -0x1

    goto :goto_11

    :cond_16
    :goto_e
    move/from16 v17, v10

    goto :goto_c

    :cond_17
    const/16 v9, 0x5d

    if-lt v14, v9, :cond_19

    const/16 v9, 0x7f

    if-lt v14, v9, :cond_15

    const/16 v4, 0xa0

    if-gt v14, v4, :cond_15

    if-ne v13, v15, :cond_18

    move v13, v10

    :cond_18
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v8, 0x4

    goto :goto_e

    :cond_19
    const/16 v9, 0x20

    if-ne v14, v9, :cond_1a

    goto :goto_d

    :cond_1a
    const/16 v9, 0x2f

    if-ne v14, v9, :cond_1b

    sget-object v9, Lg/gar;->WriteSlashAsSpecial:Lg/gar;

    iget v9, v9, Lg/gar;->mask:I

    iget v15, v0, Lg/cxa;->k:I

    and-int/2addr v9, v15

    if-eqz v9, :cond_1b

    goto :goto_f

    :cond_1b
    const/16 v9, 0x23

    if-le v14, v9, :cond_1c

    const/16 v9, 0x5c

    if-eq v14, v9, :cond_1d

    goto :goto_d

    :cond_1c
    const/16 v9, 0x5c

    :cond_1d
    const/16 v15, 0x1f

    if-le v14, v15, :cond_1e

    if-eq v14, v9, :cond_1e

    const/16 v9, 0x22

    if-ne v14, v9, :cond_15

    :cond_1e
    :goto_f
    add-int/lit8 v3, v3, 0x1

    array-length v5, v4

    if-ge v14, v5, :cond_1f

    aget-byte v4, v4, v14

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1f

    add-int/lit8 v8, v8, 0x4

    :cond_1f
    const/4 v9, -0x1

    if-ne v13, v9, :cond_20

    move v13, v10

    move/from16 v17, v13

    :goto_10
    move v5, v14

    goto :goto_11

    :cond_20
    move/from16 v17, v10

    goto :goto_10

    :goto_11
    add-int/lit8 v10, v10, 0x1

    const/16 v4, 0x5c

    const/16 v14, 0x2f

    const/4 v15, -0x1

    goto :goto_b

    :cond_21
    const/16 v10, 0x2028

    if-lez v3, :cond_2b

    add-int/2addr v8, v3

    iget-object v9, v0, Lg/cxa;->l:[C

    array-length v9, v9

    if-le v8, v9, :cond_22

    invoke-virtual {v0, v8}, Lg/cxa;->u(I)V

    :cond_22
    iput v8, v0, Lg/cxa;->m:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_25

    if-ne v5, v10, :cond_23

    add-int/lit8 v1, v17, 0x1

    add-int/lit8 v3, v17, 0x6

    sub-int v7, v7, v17

    sub-int/2addr v7, v8

    iget-object v4, v0, Lg/cxa;->l:[C

    invoke-static {v4, v1, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lg/cxa;->l:[C

    const/16 v22, 0x5c

    aput-char v22, v3, v17

    aput-char v16, v3, v1

    add-int/lit8 v1, v17, 0x2

    const/16 v4, 0x32

    aput-char v4, v3, v1

    add-int/lit8 v1, v17, 0x3

    aput-char v18, v3, v1

    add-int/lit8 v1, v17, 0x4

    aput-char v4, v3, v1

    add-int/lit8 v17, v17, 0x5

    const/16 v1, 0x38

    aput-char v1, v3, v17

    goto/16 :goto_17

    :cond_23
    array-length v1, v4

    if-ge v5, v1, :cond_24

    aget-byte v1, v4, v5

    const/4 v3, 0x4

    if-ne v1, v3, :cond_24

    add-int/lit8 v1, v17, 0x1

    add-int/lit8 v3, v17, 0x6

    sub-int v7, v7, v17

    const/16 v19, 0x1

    add-int/lit8 v7, v7, -0x1

    iget-object v4, v0, Lg/cxa;->l:[C

    invoke-static {v4, v1, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lg/cxa;->l:[C

    const/16 v22, 0x5c

    aput-char v22, v3, v17

    add-int/lit8 v4, v17, 0x2

    aput-char v16, v3, v1

    add-int/lit8 v1, v17, 0x3

    ushr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v12, v6

    aput-char v6, v3, v4

    add-int/lit8 v4, v17, 0x4

    ushr-int/lit8 v6, v5, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v12, v6

    aput-char v6, v3, v1

    add-int/lit8 v17, v17, 0x5

    ushr-int/lit8 v1, v5, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v12, v1

    aput-char v1, v3, v4

    and-int/lit8 v1, v5, 0xf

    aget-char v1, v12, v1

    aput-char v1, v3, v17

    const/4 v8, 0x1

    goto/16 :goto_17

    :cond_24
    add-int/lit8 v1, v17, 0x1

    add-int/lit8 v3, v17, 0x2

    sub-int v7, v7, v17

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iget-object v4, v0, Lg/cxa;->l:[C

    invoke-static {v4, v1, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lg/cxa;->l:[C

    const/16 v22, 0x5c

    aput-char v22, v3, v17

    aget-char v4, v11, v5

    aput-char v4, v3, v1

    goto/16 :goto_17

    :cond_25
    if-le v3, v8, :cond_2b

    sub-int v3, v13, v6

    :goto_12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2b

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    array-length v6, v4

    if-ge v5, v6, :cond_26

    aget-byte v6, v4, v5

    if-nez v6, :cond_27

    :cond_26
    const/16 v9, 0x2f

    goto :goto_13

    :cond_27
    const/16 v9, 0x2f

    goto :goto_14

    :goto_13
    if-ne v5, v9, :cond_29

    sget-object v6, Lg/gar;->WriteSlashAsSpecial:Lg/gar;

    iget v6, v6, Lg/gar;->mask:I

    iget v7, v0, Lg/cxa;->k:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_29

    :goto_14
    iget-object v6, v0, Lg/cxa;->l:[C

    add-int/lit8 v7, v13, 0x1

    const/16 v22, 0x5c

    aput-char v22, v6, v13

    aget-byte v8, v4, v5

    const/4 v14, 0x4

    if-ne v8, v14, :cond_28

    add-int/lit8 v8, v13, 0x2

    aput-char v16, v6, v7

    add-int/lit8 v7, v13, 0x3

    ushr-int/lit8 v15, v5, 0xc

    and-int/lit8 v15, v15, 0xf

    aget-char v15, v12, v15

    aput-char v15, v6, v8

    add-int/lit8 v8, v13, 0x4

    ushr-int/lit8 v15, v5, 0x8

    and-int/lit8 v15, v15, 0xf

    aget-char v15, v12, v15

    aput-char v15, v6, v7

    add-int/lit8 v7, v13, 0x5

    ushr-int/lit8 v15, v5, 0x4

    and-int/lit8 v15, v15, 0xf

    aget-char v15, v12, v15

    aput-char v15, v6, v8

    add-int/lit8 v13, v13, 0x6

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v12, v5

    aput-char v5, v6, v7

    :goto_15
    const/16 v22, 0x5c

    goto :goto_16

    :cond_28
    add-int/lit8 v13, v13, 0x2

    aget-char v5, v11, v5

    aput-char v5, v6, v7

    goto :goto_15

    :cond_29
    const/4 v14, 0x4

    if-ne v5, v10, :cond_2a

    iget-object v6, v0, Lg/cxa;->l:[C

    add-int/lit8 v7, v13, 0x1

    const/16 v22, 0x5c

    aput-char v22, v6, v13

    add-int/lit8 v8, v13, 0x2

    aput-char v16, v6, v7

    add-int/lit8 v7, v13, 0x3

    ushr-int/lit8 v15, v5, 0xc

    and-int/lit8 v15, v15, 0xf

    aget-char v15, v12, v15

    aput-char v15, v6, v8

    add-int/lit8 v8, v13, 0x4

    ushr-int/lit8 v15, v5, 0x8

    and-int/lit8 v15, v15, 0xf

    aget-char v15, v12, v15

    aput-char v15, v6, v7

    add-int/lit8 v7, v13, 0x5

    ushr-int/lit8 v15, v5, 0x4

    and-int/lit8 v15, v15, 0xf

    aget-char v15, v12, v15

    aput-char v15, v6, v8

    add-int/lit8 v13, v13, 0x6

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v12, v5

    aput-char v5, v6, v7

    goto :goto_16

    :cond_2a
    const/16 v22, 0x5c

    iget-object v6, v0, Lg/cxa;->l:[C

    add-int/lit8 v7, v13, 0x1

    aput-char v5, v6, v13

    move v13, v7

    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    :cond_2b
    :goto_17
    if-eqz v2, :cond_2c

    iget-object v1, v0, Lg/cxa;->l:[C

    iget v3, v0, Lg/cxa;->m:I

    add-int/lit8 v4, v3, -0x2

    const/16 v21, 0x22

    aput-char v21, v1, v4

    const/16 v19, 0x1

    add-int/lit8 v3, v3, -0x1

    aput-char v2, v1, v3

    return-void

    :cond_2c
    const/16 v19, 0x1

    const/16 v21, 0x22

    iget-object v1, v0, Lg/cxa;->l:[C

    iget v2, v0, Lg/cxa;->m:I

    add-int/lit8 v2, v2, -0x1

    aput-char v21, v1, v2

    return-void
.end method

.method public final w(J)V
    .locals 10

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-string p1, "-9223372036854775808"

    invoke-virtual {p0, p1}, Lg/cxa;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    neg-long v0, p1

    goto :goto_0

    :cond_1
    move-wide v0, p1

    :goto_0
    const-wide/16 v3, 0xa

    const/4 v5, 0x1

    move-wide v6, v3

    :goto_1
    const/16 v8, 0x13

    if-ge v5, v8, :cond_3

    cmp-long v9, v0, v6

    if-gez v9, :cond_2

    goto :goto_2

    :cond_2
    mul-long v6, v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move v8, v5

    :goto_3
    if-gez v2, :cond_5

    add-int/lit8 v8, v8, 0x1

    :cond_5
    iget v0, p0, Lg/cxa;->m:I

    add-int/2addr v0, v8

    iget-object v1, p0, Lg/cxa;->l:[C

    array-length v1, v1

    if-le v0, v1, :cond_6

    invoke-virtual {p0, v0}, Lg/cxa;->u(I)V

    :cond_6
    iget-object v1, p0, Lg/cxa;->l:[C

    invoke-static {p1, p2, v0, v1}, Lg/cxa;->n(JI[C)V

    iput v0, p0, Lg/cxa;->m:I

    return-void
.end method

.method public final write(I)V
    .locals 3

    iget v0, p0, Lg/cxa;->m:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lg/cxa;->l:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lg/cxa;->u(I)V

    :cond_0
    iget-object v1, p0, Lg/cxa;->l:[C

    iget v2, p0, Lg/cxa;->m:I

    int-to-char p1, p1

    aput-char p1, v1, v2

    iput v0, p0, Lg/cxa;->m:I

    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lg/cxa;->o()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lg/cxa;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 3

    iget v0, p0, Lg/cxa;->m:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lg/cxa;->l:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lg/cxa;->u(I)V

    :cond_0
    add-int/2addr p3, p2

    iget-object v1, p0, Lg/cxa;->l:[C

    iget v2, p0, Lg/cxa;->m:I

    invoke-virtual {p1, p2, p3, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iput v0, p0, Lg/cxa;->m:I

    return-void
.end method

.method public final write([CII)V
    .locals 3

    if-ltz p2, :cond_2

    array-length v0, p1

    if-gt p2, v0, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lg/cxa;->m:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lg/cxa;->l:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lg/cxa;->u(I)V

    :cond_1
    iget-object v1, p0, Lg/cxa;->l:[C

    iget v2, p0, Lg/cxa;->m:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lg/cxa;->m:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

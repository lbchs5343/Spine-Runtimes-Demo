.class public final Lg/ctv;
.super Lg/afo;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Z


# instance fields
.field public final c:[B

.field public final d:I

.field public e:I

.field public f:Lg/dnb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/ctv;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lg/ctv;->a:Ljava/util/logging/Logger;

    sget-boolean v0, Lg/euh;->b:Z

    sput-boolean v0, Lg/ctv;->b:Z

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    sub-int v1, v0, p2

    or-int/2addr v1, p2

    if-ltz v1, :cond_0

    iput-object p1, p0, Lg/ctv;->c:[B

    const/4 p1, 0x0

    iput p1, p0, Lg/ctv;->e:I

    iput p2, p0, Lg/ctv;->d:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Array range is invalid. Buffer.length="

    const-string v2, ", offset=0, length="

    invoke-static {v0, p2, v1, v2}, Lg/tn;->t(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static g(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lg/bib;->e(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lg/gol; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lg/cua;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lg/ctv;->i(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static h(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static i(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method


# virtual methods
.method public final j(I)V
    .locals 9

    iget v1, p0, Lg/ctv;->e:I

    :try_start_0
    iget-object v0, p0, Lg/ctv;->c:[B

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lg/ctv;->e:I

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    int-to-long v3, v1

    new-instance v2, Lg/gng;

    iget p1, p0, Lg/ctv;->d:I

    int-to-long v5, p1

    const/4 v7, 0x4

    invoke-direct/range {v2 .. v8}, Lg/gng;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v2
.end method

.method public final k(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lg/ctv;->s(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lg/ctv;->r(J)V

    return-void
.end method

.method public final l(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lg/ctv;->s(I)V

    invoke-virtual {p0, p2, p3}, Lg/ctv;->r(J)V

    return-void
.end method

.method public final m(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lg/ctv;->s(I)V

    return-void
.end method

.method public final n(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lg/ctv;->s(I)V

    invoke-virtual {p0, p2}, Lg/ctv;->j(I)V

    return-void
.end method

.method public final o(ILjava/lang/String;)V
    .locals 7

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lg/ctv;->s(I)V

    iget p1, p0, Lg/ctv;->e:I

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lg/ctv;->i(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lg/ctv;->i(I)I

    move-result v1
    :try_end_0
    .catch Lg/gol; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, p0, Lg/ctv;->d:I

    iget-object v3, p0, Lg/ctv;->c:[B

    if-ne v1, v0, :cond_0

    add-int v0, p1, v1

    :try_start_1
    iput v0, p0, Lg/ctv;->e:I

    sub-int/2addr v2, v0

    invoke-static {p2, v3, v0, v2}, Lg/bib;->d(Ljava/lang/String;[BII)I

    move-result v0

    iput p1, p0, Lg/ctv;->e:I

    sub-int v2, v0, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lg/ctv;->s(I)V

    iput v0, p0, Lg/ctv;->e:I

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lg/bib;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lg/ctv;->s(I)V

    iget v0, p0, Lg/ctv;->e:I

    sub-int/2addr v2, v0

    invoke-static {p2, v3, v0, v2}, Lg/bib;->d(Ljava/lang/String;[BII)I

    move-result v0

    iput v0, p0, Lg/ctv;->e:I
    :try_end_1
    .catch Lg/gol; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_0
    new-instance p2, Lg/gng;

    invoke-direct {p2, p1}, Lg/gng;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p2

    :goto_1
    iput p1, p0, Lg/ctv;->e:I

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "inefficientWriteStringNoTag"

    const-string v5, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    sget-object v1, Lg/ctv;->a:Ljava/util/logging/Logger;

    const-string v3, "com.google.protobuf.CodedOutputStream"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lg/cua;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_2
    array-length p2, p1

    invoke-virtual {p0, p2}, Lg/ctv;->s(I)V

    invoke-virtual {p0, p2, p1}, Lg/ctv;->w(I[B)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    move-object p1, v0

    new-instance p2, Lg/gng;

    invoke-direct {p2, p1}, Lg/gng;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final p(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lg/ctv;->s(I)V

    invoke-virtual {p0, p2}, Lg/ctv;->k(I)V

    return-void
.end method

.method public final q(J)V
    .locals 9

    iget v1, p0, Lg/ctv;->e:I

    :try_start_0
    iget-object v0, p0, Lg/ctv;->c:[B

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x8

    shr-long v4, p1, v3

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x2

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x4

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x5

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x6

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x7

    const/16 v4, 0x38

    shr-long/2addr p1, v4

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v3

    iput v1, p0, Lg/ctv;->e:I

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    int-to-long v3, v1

    new-instance v2, Lg/gng;

    iget p1, p0, Lg/ctv;->d:I

    int-to-long v5, p1

    const/16 v7, 0x8

    invoke-direct/range {v2 .. v8}, Lg/gng;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v2
.end method

.method public final r(J)V
    .locals 16

    move-object/from16 v1, p0

    iget v0, v1, Lg/ctv;->e:I

    sget-boolean v2, Lg/ctv;->b:Z

    const/4 v3, 0x7

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x80

    iget v8, v1, Lg/ctv;->d:I

    iget-object v9, v1, Lg/ctv;->c:[B

    if-eqz v2, :cond_1

    sub-int v2, v8, v0

    const/16 v10, 0xa

    if-lt v2, v10, :cond_1

    move-wide/from16 v10, p1

    :goto_0
    and-long v12, v10, v6

    cmp-long v2, v12, v4

    if-nez v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    int-to-long v3, v0

    long-to-int v0, v10

    int-to-byte v0, v0

    sget-object v5, Lg/euh;->f:Lg/aul;

    sget-wide v6, Lg/euh;->d:J

    add-long/2addr v6, v3

    invoke-virtual {v5, v9, v6, v7, v0}, Lg/aul;->a(Ljava/lang/Object;JB)V

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v0, 0x1

    int-to-long v12, v0

    long-to-int v0, v10

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    sget-object v8, Lg/euh;->f:Lg/aul;

    sget-wide v14, Lg/euh;->d:J

    add-long/2addr v14, v12

    invoke-virtual {v8, v9, v14, v15, v0}, Lg/aul;->a(Ljava/lang/Object;JB)V

    ushr-long/2addr v10, v3

    move v0, v2

    goto :goto_0

    :cond_1
    move-wide/from16 v10, p1

    :goto_1
    and-long v12, v10, v6

    cmp-long v2, v12, v4

    if-nez v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    long-to-int v3, v10

    int-to-byte v3, v3

    :try_start_0
    aput-byte v3, v9, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput v2, v1, Lg/ctv;->e:I

    return-void

    :catch_0
    move-exception v0

    move-object v15, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v0, 0x1

    long-to-int v12, v10

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    :try_start_1
    aput-byte v12, v9, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    ushr-long/2addr v10, v3

    move v0, v2

    goto :goto_1

    :goto_3
    new-instance v9, Lg/gng;

    int-to-long v10, v2

    int-to-long v12, v8

    const/4 v14, 0x1

    invoke-direct/range {v9 .. v15}, Lg/gng;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v9
.end method

.method public final s(I)V
    .locals 9

    iget v0, p0, Lg/ctv;->e:I

    :goto_0
    and-int/lit8 v1, p1, -0x80

    iget-object v2, p0, Lg/ctv;->c:[B

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    int-to-byte p1, p1

    :try_start_0
    aput-byte p1, v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iput v1, p0, Lg/ctv;->e:I

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    :try_start_1
    aput-byte v3, v2, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    move v0, v1

    goto :goto_0

    :goto_1
    new-instance v2, Lg/gng;

    int-to-long v3, v1

    iget p1, p0, Lg/ctv;->d:I

    int-to-long v5, p1

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v8}, Lg/gng;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v2
.end method

.method public final t(ILg/aki;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lg/ctv;->s(I)V

    invoke-virtual {p2}, Lg/aki;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lg/ctv;->s(I)V

    check-cast p2, Lg/gto;

    invoke-virtual {p2}, Lg/gto;->g()I

    move-result p1

    iget-object p2, p2, Lg/gto;->zza:[B

    invoke-virtual {p0, p1, p2}, Lg/ctv;->w(I[B)V

    return-void
.end method

.method public final u(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lg/ctv;->s(I)V

    invoke-virtual {p0, p2}, Lg/ctv;->s(I)V

    return-void
.end method

.method public final v(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lg/ctv;->s(I)V

    invoke-virtual {p0, p2, p3}, Lg/ctv;->q(J)V

    return-void
.end method

.method public final w(I[B)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lg/ctv;->c:[B

    iget v1, p0, Lg/ctv;->e:I

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget p2, p0, Lg/ctv;->e:I

    add-int/2addr p2, p1

    iput p2, p0, Lg/ctv;->e:I

    return-void

    :catch_0
    move-exception v0

    move-object p2, v0

    move-object v6, p2

    new-instance v0, Lg/gng;

    iget p2, p0, Lg/ctv;->e:I

    int-to-long v1, p2

    iget p2, p0, Lg/ctv;->d:I

    int-to-long v3, p2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lg/gng;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.class public final Lg/deb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dsy;


# instance fields
.field public a:Z

.field public final b:Lg/cpv;

.field public final d:Lg/clq;


# direct methods
.method public constructor <init>(Lg/cpv;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/deb;->b:Lg/cpv;

    new-instance p1, Lg/clq;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/deb;->d:Lg/clq;

    return-void
.end method


# virtual methods
.method public final ad(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lg/deb;->b:Lg/cpv;

    iget-object v1, p0, Lg/deb;->d:Lg/clq;

    invoke-virtual {v1, v0}, Lg/clq;->ae(Lg/cpv;)V

    iget-wide v2, v1, Lg/clq;->b:J

    invoke-virtual {v1, v2, v3, p1}, Lg/clq;->n(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final ah(Lg/clq;)J
    .locals 10

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    :goto_0
    iget-object v4, p0, Lg/deb;->b:Lg/cpv;

    const-wide/16 v5, 0x2000

    iget-object v7, p0, Lg/deb;->d:Lg/clq;

    invoke-interface {v4, v7, v5, v6}, Lg/cpv;->c(Lg/clq;J)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v6, v4, v8

    if-eqz v6, :cond_1

    invoke-virtual {v7}, Lg/clq;->ao()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    invoke-virtual {p1, v7, v4, v5}, Lg/clq;->f(Lg/clq;J)V

    goto :goto_0

    :cond_1
    iget-wide v4, v7, Lg/clq;->b:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    add-long/2addr v2, v4

    invoke-virtual {p1, v7, v4, v5}, Lg/clq;->f(Lg/clq;J)V

    :cond_2
    return-wide v2
.end method

.method public final ai()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lg/deb;->s(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lg/clq;J)J
    .locals 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    iget-boolean v2, p0, Lg/deb;->a:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lg/deb;->d:Lg/clq;

    iget-wide v3, v2, Lg/clq;->b:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    iget-object v0, p0, Lg/deb;->b:Lg/cpv;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lg/cpv;->c(Lg/clq;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return-wide v3

    :cond_0
    iget-wide v0, v2, Lg/clq;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v2, p1, p2, p3}, Lg/clq;->c(Lg/clq;J)J

    move-result-wide p1

    return-wide p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "byteCount < 0: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lg/deb;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/deb;->a:Z

    iget-object v0, p0, Lg/deb;->b:Lg/cpv;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget-object v0, p0, Lg/deb;->d:Lg/clq;

    invoke-virtual {v0}, Lg/clq;->aa()V

    :cond_0
    return-void
.end method

.method public final e()Lg/dme;
    .locals 1

    iget-object v0, p0, Lg/deb;->b:Lg/cpv;

    invoke-interface {v0}, Lg/cpv;->e()Lg/dme;

    move-result-object v0

    return-object v0
.end method

.method public final f(JLg/gei;)Z
    .locals 8

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lg/gei;->d()I

    move-result v0

    iget-boolean v1, p0, Lg/deb;->a:Z

    if-nez v1, :cond_5

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    cmp-long v4, p1, v1

    if-ltz v4, :cond_4

    if-ltz v0, :cond_4

    invoke-virtual {p3}, Lg/gei;->d()I

    move-result v1

    if-ge v1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    int-to-long v4, v1

    add-long/2addr v4, p1

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    invoke-virtual {p0, v6, v7}, Lg/deb;->k(J)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lg/deb;->d:Lg/clq;

    invoke-virtual {v2, v4, v5}, Lg/clq;->an(J)B

    move-result v2

    invoke-virtual {p3, v1}, Lg/gei;->m(I)B

    move-result v4

    if-eq v2, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v3

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g()J
    .locals 25

    move-object/from16 v0, p0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lg/deb;->v(J)V

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    add-long v7, v5, v1

    invoke-virtual {v0, v7, v8}, Lg/deb;->k(J)Z

    move-result v9

    const/16 v10, 0x2d

    const/16 v11, 0x39

    const/16 v12, 0x30

    iget-object v13, v0, Lg/deb;->d:Lg/clq;

    if-eqz v9, :cond_4

    invoke-virtual {v13, v5, v6}, Lg/clq;->an(J)B

    move-result v9

    if-lt v9, v12, :cond_0

    if-le v9, v11, :cond_1

    :cond_0
    cmp-long v14, v5, v3

    if-nez v14, :cond_2

    if-eq v9, v10, :cond_1

    goto :goto_1

    :cond_1
    move-wide v5, v7

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v14, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    const/16 v2, 0x10

    invoke-static {v2}, Lg/egh;->al(I)V

    invoke-static {v2}, Lg/egh;->al(I)V

    invoke-static {v9, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this, checkRadix(radix))"

    invoke-static {v2, v3}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Expected a digit or \'-\' but was 0x"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    iget-wide v5, v13, Lg/clq;->b:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_13

    const-wide/16 v6, -0x7

    move-wide/from16 v17, v1

    move-wide v8, v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_3
    iget-object v1, v13, Lg/clq;->a:Lg/ghg;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v2, v1, Lg/ghg;->c:[B

    const/16 v19, 0x0

    iget v5, v1, Lg/ghg;->e:I

    move-wide/from16 v20, v3

    iget v3, v1, Lg/ghg;->f:I

    :goto_4
    if-ge v5, v3, :cond_a

    const/16 v22, 0x1

    aget-byte v4, v2, v5

    if-lt v4, v12, :cond_8

    if-gt v4, v11, :cond_8

    rsub-int/lit8 v11, v4, 0x30

    const-wide v23, -0xcccccccccccccccL

    cmp-long v22, v8, v23

    if-ltz v22, :cond_6

    move-object/from16 v24, v13

    if-nez v22, :cond_5

    int-to-long v12, v11

    cmp-long v22, v12, v6

    if-gez v22, :cond_5

    goto :goto_5

    :cond_5
    const-wide/16 v12, 0xa

    mul-long v8, v8, v12

    int-to-long v11, v11

    add-long/2addr v8, v11

    goto :goto_6

    :cond_6
    :goto_5
    new-instance v1, Lg/clq;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v8, v9}, Lg/clq;->ag(J)V

    invoke-virtual {v1, v4}, Lg/clq;->al(I)V

    if-nez v15, :cond_7

    invoke-virtual {v1}, Lg/clq;->readByte()B

    :cond_7
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-virtual {v1}, Lg/clq;->x()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Number too large: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    move-object/from16 v24, v13

    if-ne v4, v10, :cond_9

    if-nez v14, :cond_9

    sub-long v6, v6, v17

    const/4 v15, 0x1

    :goto_6
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v13, v24

    const/16 v11, 0x39

    const/16 v12, 0x30

    goto :goto_4

    :cond_9
    const/16 v16, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v24, v13

    const/16 v22, 0x1

    :goto_7
    if-ne v5, v3, :cond_b

    invoke-virtual {v1}, Lg/ghg;->i()Lg/ghg;

    move-result-object v2

    move-object/from16 v3, v24

    iput-object v2, v3, Lg/clq;->a:Lg/ghg;

    invoke-static {v1}, Lg/ip;->d(Lg/ghg;)V

    goto :goto_8

    :cond_b
    move-object/from16 v3, v24

    iput v5, v1, Lg/ghg;->e:I

    :goto_8
    if-nez v16, :cond_d

    iget-object v1, v3, Lg/clq;->a:Lg/ghg;

    if-nez v1, :cond_c

    goto :goto_9

    :cond_c
    move-object v13, v3

    move-wide/from16 v3, v20

    const/16 v11, 0x39

    const/16 v12, 0x30

    goto/16 :goto_3

    :cond_d
    :goto_9
    iget-wide v1, v3, Lg/clq;->b:J

    int-to-long v4, v14

    sub-long/2addr v1, v4

    iput-wide v1, v3, Lg/clq;->b:J

    const/4 v4, 0x2

    if-eqz v15, :cond_e

    const/4 v5, 0x2

    goto :goto_a

    :cond_e
    const/4 v5, 0x1

    :goto_a
    if-ge v14, v5, :cond_11

    cmp-long v5, v1, v20

    if-eqz v5, :cond_10

    if-eqz v15, :cond_f

    const-string v1, "Expected a digit"

    goto :goto_b

    :cond_f
    const-string v1, "Expected a digit or \'-\'"

    :goto_b
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v5, " but was 0x"

    invoke-static {v1, v5}, Lg/tn;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v5, v20

    invoke-virtual {v3, v5, v6}, Lg/clq;->an(J)B

    move-result v3

    sget-object v5, Lg/eg;->e:[C

    shr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    new-array v4, v4, [C

    aput-char v6, v4, v19

    aput-char v3, v4, v22

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_11
    if-eqz v15, :cond_12

    goto :goto_c

    :cond_12
    neg-long v8, v8

    :goto_c
    return-wide v8

    :cond_13
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final h()I
    .locals 3

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lg/deb;->v(J)V

    iget-object v0, p0, Lg/deb;->d:Lg/clq;

    invoke-virtual {v0}, Lg/clq;->readInt()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const v2, 0xff00

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 5

    iget-boolean v0, p0, Lg/deb;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/deb;->d:Lg/clq;

    invoke-virtual {v0}, Lg/clq;->aj()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/deb;->b:Lg/cpv;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lg/cpv;->c(Lg/clq;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lg/deb;->a:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final j(BJJ)J
    .locals 9

    iget-boolean p2, p0, Lg/deb;->a:Z

    if-nez p2, :cond_4

    const-wide/16 p2, 0x0

    cmp-long v0, p2, p4

    if-gtz v0, :cond_3

    move-wide v3, p2

    :goto_0
    const-wide/16 p2, -0x1

    cmp-long v0, v3, p4

    if-gez v0, :cond_2

    iget-object v1, p0, Lg/deb;->d:Lg/clq;

    move v2, p1

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lg/clq;->ac(BJJ)J

    move-result-wide p4

    cmp-long p1, p4, p2

    if-eqz p1, :cond_0

    return-wide p4

    :cond_0
    iget-wide p4, v1, Lg/clq;->b:J

    cmp-long p1, p4, v5

    if-gez p1, :cond_2

    iget-object p1, p0, Lg/deb;->b:Lg/cpv;

    const-wide/16 v7, 0x2000

    invoke-interface {p1, v1, v7, v8}, Lg/cpv;->c(Lg/clq;J)J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move p1, v2

    move-wide p4, v5

    goto :goto_0

    :cond_2
    :goto_1
    return-wide p2

    :cond_3
    move-wide v5, p4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "fromIndex=0 toIndex="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(J)Z
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    iget-boolean v0, p0, Lg/deb;->a:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lg/deb;->d:Lg/clq;

    iget-wide v1, v0, Lg/clq;->b:J

    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    iget-object v1, p0, Lg/deb;->b:Lg/cpv;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lg/cpv;->c(Lg/clq;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final m()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lg/wd;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/wd;-><init>(Lg/dsy;I)V

    return-object v0
.end method

.method public final q()J
    .locals 6

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lg/deb;->v(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lg/deb;->k(J)Z

    move-result v2

    iget-object v3, p0, Lg/deb;->d:Lg/clq;

    if-eqz v2, :cond_5

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lg/clq;->an(J)B

    move-result v2

    const/16 v4, 0x30

    if-lt v2, v4, :cond_0

    const/16 v4, 0x39

    if-le v2, v4, :cond_2

    :cond_0
    const/16 v4, 0x61

    if-lt v2, v4, :cond_1

    const/16 v4, 0x66

    if-le v2, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    if-lt v2, v4, :cond_3

    const/16 v4, 0x46

    if-le v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    const/16 v1, 0x10

    invoke-static {v1}, Lg/egh;->al(I)V

    invoke-static {v1}, Lg/egh;->al(I)V

    invoke-static {v2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(this, checkRadix(radix))"

    invoke-static {v1, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    invoke-virtual {v3}, Lg/clq;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/deb;->d:Lg/clq;

    iget-wide v1, v0, Lg/clq;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v1, p0, Lg/deb;->b:Lg/cpv;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lg/cpv;->c(Lg/clq;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lg/clq;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final readByte()B
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lg/deb;->v(J)V

    iget-object v0, p0, Lg/deb;->d:Lg/clq;

    invoke-virtual {v0}, Lg/clq;->readByte()B

    move-result v0

    return v0
.end method

.method public final readInt()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lg/deb;->v(J)V

    iget-object v0, p0, Lg/deb;->d:Lg/clq;

    invoke-virtual {v0}, Lg/clq;->readInt()I

    move-result v0

    return v0
.end method

.method public final readShort()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lg/deb;->v(J)V

    iget-object v0, p0, Lg/deb;->d:Lg/clq;

    invoke-virtual {v0}, Lg/clq;->readShort()S

    move-result v0

    return v0
.end method

.method public final s(J)Ljava/lang/String;
    .locals 20

    move-wide/from16 v6, p1

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-ltz v2, :cond_3

    const-wide/16 v8, 0x1

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v0, v6, v10

    if-nez v0, :cond_0

    move-wide v4, v10

    goto :goto_0

    :cond_0
    add-long v0, v6, v8

    move-wide v4, v0

    :goto_0
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lg/deb;->j(BJJ)J

    move-result-wide v1

    const-wide/16 v12, -0x1

    iget-object v14, v0, Lg/deb;->d:Lg/clq;

    cmp-long v3, v1, v12

    if-eqz v3, :cond_1

    invoke-static {v14, v1, v2}, Lg/bgz;->b(Lg/clq;J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    cmp-long v1, v4, v10

    if-gez v1, :cond_2

    invoke-virtual {v0, v4, v5}, Lg/deb;->k(J)Z

    move-result v1

    if-eqz v1, :cond_2

    sub-long v1, v4, v8

    invoke-virtual {v14, v1, v2}, Lg/clq;->an(J)B

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    add-long v1, v4, v8

    invoke-virtual {v0, v1, v2}, Lg/deb;->k(J)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v14, v4, v5}, Lg/clq;->an(J)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    invoke-static {v14, v4, v5}, Lg/bgz;->b(Lg/clq;J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v15, Lg/clq;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    iget-wide v1, v14, Lg/clq;->b:J

    const/16 v3, 0x20

    int-to-long v3, v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    const-wide/16 v16, 0x0

    invoke-virtual/range {v14 .. v19}, Lg/clq;->i(Lg/clq;JJ)V

    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: limit="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v14, Lg/clq;->b:J

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v15, Lg/clq;->b:J

    invoke-virtual {v15, v3, v4}, Lg/clq;->t(J)Lg/gei;

    move-result-object v3

    invoke-virtual {v3}, Lg/gei;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2026

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "limit < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final skip(J)V
    .locals 6

    iget-boolean v0, p0, Lg/deb;->a:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Lg/deb;->d:Lg/clq;

    iget-wide v3, v2, Lg/clq;->b:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    iget-object v0, p0, Lg/deb;->b:Lg/cpv;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lg/cpv;->c(Lg/clq;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    :goto_1
    iget-wide v0, v2, Lg/clq;->b:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lg/clq;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t(J)Lg/gei;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lg/deb;->v(J)V

    iget-object v0, p0, Lg/deb;->d:Lg/clq;

    invoke-virtual {v0, p1, p2}, Lg/clq;->t(J)Lg/gei;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/deb;->b:Lg/cpv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lg/deb;->k(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final w(Lg/hck;)I
    .locals 6

    const-string v0, "options"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lg/deb;->a:Z

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lg/deb;->d:Lg/clq;

    invoke-static {v1, p1, v0}, Lg/bgz;->c(Lg/clq;Lg/hck;Z)I

    move-result v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_2

    iget-object p1, p1, Lg/hck;->b:[Lg/gei;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lg/gei;->d()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lg/clq;->skip(J)V

    return v0

    :cond_1
    iget-object v0, p0, Lg/deb;->b:Lg/cpv;

    const-wide/16 v4, 0x2000

    invoke-interface {v0, v1, v4, v5}, Lg/cpv;->c(Lg/clq;J)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    :cond_2
    return v3

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

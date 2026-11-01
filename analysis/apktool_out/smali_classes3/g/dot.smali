.class public final Lg/dot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cpv;


# instance fields
.field public final a:Ljava/util/zip/Inflater;

.field public final b:Lg/gmz;

.field public final d:Ljava/util/zip/CRC32;

.field public f:B

.field public final g:Lg/deb;


# direct methods
.method public constructor <init>(Lg/cpv;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/deb;

    invoke-direct {v0, p1}, Lg/deb;-><init>(Lg/cpv;)V

    iput-object v0, p0, Lg/dot;->g:Lg/deb;

    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lg/dot;->a:Ljava/util/zip/Inflater;

    new-instance v1, Lg/gmz;

    invoke-direct {v1, v0, p1}, Lg/gmz;-><init>(Lg/deb;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lg/dot;->b:Lg/gmz;

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lg/dot;->d:Ljava/util/zip/CRC32;

    return-void
.end method

.method public static h(IILjava/lang/String;)V
    .locals 4

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    aput-object p0, v2, p1

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final c(Lg/clq;J)J
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    const-string v1, "sink"

    invoke-static {v6, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-byte v1, v0, Lg/dot;->f:B

    iget-object v7, v0, Lg/dot;->d:Ljava/util/zip/CRC32;

    const/4 v8, 0x1

    iget-object v9, v0, Lg/dot;->g:Lg/deb;

    const-wide/16 v15, -0x1

    if-nez v1, :cond_c

    const-wide/16 v1, 0xa

    invoke-virtual {v9, v1, v2}, Lg/deb;->v(J)V

    iget-object v1, v9, Lg/deb;->d:Lg/clq;

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lg/clq;->an(J)B

    move-result v17

    shr-int/lit8 v2, v17, 0x1

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_0

    const/16 v18, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/16 v18, 0x0

    :goto_0
    if-eqz v18, :cond_1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    invoke-virtual/range {v0 .. v5}, Lg/dot;->i(Lg/clq;JJ)V

    :cond_1
    invoke-virtual {v9}, Lg/deb;->readShort()S

    move-result v0

    const-string v2, "ID1ID2"

    const/16 v3, 0x1f8b

    invoke-static {v3, v0, v2}, Lg/dot;->h(IILjava/lang/String;)V

    const-wide/16 v2, 0x8

    invoke-virtual {v9, v2, v3}, Lg/deb;->skip(J)V

    shr-int/lit8 v0, v17, 0x2

    and-int/2addr v0, v8

    const v19, 0xff00

    const-wide/16 v10, 0x2

    if-ne v0, v8, :cond_4

    invoke-virtual {v9, v10, v11}, Lg/deb;->v(J)V

    if-eqz v18, :cond_2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lg/dot;->i(Lg/clq;JJ)V

    :cond_2
    invoke-virtual {v1}, Lg/clq;->readShort()S

    move-result v0

    and-int v2, v0, v19

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    int-to-short v0, v0

    const v2, 0xffff

    and-int/2addr v0, v2

    int-to-long v4, v0

    invoke-virtual {v9, v4, v5}, Lg/deb;->v(J)V

    if-eqz v18, :cond_3

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lg/dot;->i(Lg/clq;JJ)V

    :cond_3
    invoke-virtual {v9, v4, v5}, Lg/deb;->skip(J)V

    :cond_4
    shr-int/lit8 v0, v17, 0x3

    and-int/2addr v0, v8

    const-wide/16 v20, 0x1

    if-ne v0, v8, :cond_7

    move-wide v2, v10

    const-wide/16 v11, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v10, 0x0

    invoke-virtual/range {v9 .. v14}, Lg/deb;->j(BJJ)J

    move-result-wide v10

    cmp-long v0, v10, v15

    if-eqz v0, :cond_6

    if-eqz v18, :cond_5

    move-wide v4, v2

    const-wide/16 v2, 0x0

    add-long v12, v10, v20

    move-wide/from16 v22, v12

    move-wide v12, v4

    move-wide/from16 v4, v22

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lg/dot;->i(Lg/clq;JJ)V

    goto :goto_1

    :cond_5
    move-wide v12, v2

    :goto_1
    add-long v10, v10, v20

    invoke-virtual {v9, v10, v11}, Lg/deb;->skip(J)V

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_7
    move-wide v12, v10

    :goto_2
    shr-int/lit8 v0, v17, 0x4

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_a

    move-wide v2, v12

    const-wide/16 v11, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v10, 0x0

    invoke-virtual/range {v9 .. v14}, Lg/deb;->j(BJJ)J

    move-result-wide v10

    cmp-long v0, v10, v15

    if-eqz v0, :cond_9

    if-eqz v18, :cond_8

    move-wide v12, v2

    const-wide/16 v2, 0x0

    add-long v4, v10, v20

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lg/dot;->i(Lg/clq;JJ)V

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    move-wide v12, v2

    :goto_3
    add-long v10, v10, v20

    invoke-virtual {v9, v10, v11}, Lg/deb;->skip(J)V

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_a
    move-object/from16 v0, p0

    :goto_4
    if-eqz v18, :cond_b

    invoke-virtual {v9, v12, v13}, Lg/deb;->v(J)V

    invoke-virtual {v1}, Lg/clq;->readShort()S

    move-result v1

    and-int v2, v1, v19

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    int-to-short v2, v3

    const-string v3, "FHCRC"

    invoke-static {v1, v2, v3}, Lg/dot;->h(IILjava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->reset()V

    :cond_b
    iput-byte v8, v0, Lg/dot;->f:B

    :cond_c
    iget-byte v1, v0, Lg/dot;->f:B

    const/4 v10, 0x2

    if-ne v1, v8, :cond_e

    iget-wide v2, v6, Lg/clq;->b:J

    iget-object v1, v0, Lg/dot;->b:Lg/gmz;

    const-wide/16 v4, 0x2000

    invoke-virtual {v1, v6, v4, v5}, Lg/gmz;->c(Lg/clq;J)J

    move-result-wide v4

    cmp-long v1, v4, v15

    if-eqz v1, :cond_d

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lg/dot;->i(Lg/clq;JJ)V

    return-wide v4

    :cond_d
    iput-byte v10, v0, Lg/dot;->f:B

    :cond_e
    iget-byte v1, v0, Lg/dot;->f:B

    if-ne v1, v10, :cond_10

    invoke-virtual {v9}, Lg/deb;->h()I

    move-result v1

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    const-string v2, "CRC"

    invoke-static {v1, v3, v2}, Lg/dot;->h(IILjava/lang/String;)V

    invoke-virtual {v9}, Lg/deb;->h()I

    move-result v1

    iget-object v2, v0, Lg/dot;->a:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    long-to-int v3, v2

    const-string v2, "ISIZE"

    invoke-static {v1, v3, v2}, Lg/dot;->h(IILjava/lang/String;)V

    const/4 v1, 0x3

    iput-byte v1, v0, Lg/dot;->f:B

    invoke-virtual {v9}, Lg/deb;->i()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_5

    :cond_f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "gzip finished without exhausting source"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_5
    return-wide v15
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lg/dot;->b:Lg/gmz;

    invoke-virtual {v0}, Lg/gmz;->close()V

    return-void
.end method

.method public final e()Lg/dme;
    .locals 1

    iget-object v0, p0, Lg/dot;->g:Lg/deb;

    iget-object v0, v0, Lg/deb;->b:Lg/cpv;

    invoke-interface {v0}, Lg/cpv;->e()Lg/dme;

    move-result-object v0

    return-object v0
.end method

.method public final i(Lg/clq;JJ)V
    .locals 5

    iget-object p1, p1, Lg/clq;->a:Lg/ghg;

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    :goto_0
    iget v0, p1, Lg/ghg;->f:I

    iget v1, p1, Lg/ghg;->e:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v4, p2, v2

    if-ltz v4, :cond_0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    iget-object p1, p1, Lg/ghg;->d:Lg/ghg;

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    iget v2, p1, Lg/ghg;->e:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int p2, v2

    iget p3, p1, Lg/ghg;->f:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    iget-object v2, p0, Lg/dot;->d:Ljava/util/zip/CRC32;

    iget-object v3, p1, Lg/ghg;->c:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    iget-object p1, p1, Lg/ghg;->d:Lg/ghg;

    invoke-static {p1}, Lg/bff;->d(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_1

    :cond_1
    return-void
.end method

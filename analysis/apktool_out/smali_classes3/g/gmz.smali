.class public final Lg/gmz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cpv;


# instance fields
.field public a:I

.field public b:Z

.field public final d:Lg/deb;

.field public final f:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Lg/deb;Ljava/util/zip/Inflater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gmz;->d:Lg/deb;

    iput-object p2, p0, Lg/gmz;->f:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public final c(Lg/clq;J)J
    .locals 7

    iget-object p2, p0, Lg/gmz;->f:Ljava/util/zip/Inflater;

    const-string p3, "sink"

    invoke-static {p1, p3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-boolean p3, p0, Lg/gmz;->b:Z

    if-nez p3, :cond_9

    const/4 p3, 0x1

    :try_start_0
    invoke-virtual {p1, p3}, Lg/clq;->ak(I)Lg/ghg;

    move-result-object p3

    iget v0, p3, Lg/ghg;->f:I

    rsub-int v0, v0, 0x2000

    int-to-long v0, v0

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lg/gmz;->d:Lg/deb;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lg/deb;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v2, Lg/deb;->d:Lg/clq;

    iget-object v0, v0, Lg/clq;->a:Lg/ghg;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    iget v3, v0, Lg/ghg;->f:I

    iget v4, v0, Lg/ghg;->e:I

    sub-int/2addr v3, v4

    iput v3, p0, Lg/gmz;->a:I

    iget-object v0, v0, Lg/ghg;->c:[B

    invoke-virtual {p2, v0, v4, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    :goto_1
    iget-object v0, p3, Lg/ghg;->c:[B

    iget v3, p3, Lg/ghg;->f:I

    invoke-virtual {p2, v0, v3, v1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    iget v1, p0, Lg/gmz;->a:I

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lg/gmz;->a:I

    sub-int/2addr v3, v1

    iput v3, p0, Lg/gmz;->a:I

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lg/deb;->skip(J)V

    :goto_2
    const-wide/16 v3, 0x0

    if-lez v0, :cond_3

    iget v1, p3, Lg/ghg;->f:I

    add-int/2addr v1, v0

    iput v1, p3, Lg/ghg;->f:I

    iget-wide v5, p1, Lg/clq;->b:J

    int-to-long v0, v0

    add-long/2addr v5, v0

    iput-wide v5, p1, Lg/clq;->b:J

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_3
    iget v0, p3, Lg/ghg;->e:I

    iget v1, p3, Lg/ghg;->f:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p3}, Lg/ghg;->i()Lg/ghg;

    move-result-object v0

    iput-object v0, p1, Lg/clq;->a:Lg/ghg;

    invoke-static {p3}, Lg/ip;->d(Lg/ghg;)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    move-wide v0, v3

    :goto_3
    cmp-long p3, v0, v3

    if-lez p3, :cond_5

    return-wide v0

    :cond_5
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->finished()Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Lg/deb;->i()Z

    move-result p3

    if-nez p3, :cond_7

    goto/16 :goto_0

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_4
    const-wide/16 p1, -0x1

    return-wide p1

    :goto_5
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lg/gmz;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/gmz;->f:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/gmz;->b:Z

    iget-object v0, p0, Lg/gmz;->d:Lg/deb;

    invoke-virtual {v0}, Lg/deb;->close()V

    return-void
.end method

.method public final e()Lg/dme;
    .locals 1

    iget-object v0, p0, Lg/gmz;->d:Lg/deb;

    iget-object v0, v0, Lg/deb;->b:Lg/cpv;

    invoke-interface {v0}, Lg/cpv;->e()Lg/dme;

    move-result-object v0

    return-object v0
.end method

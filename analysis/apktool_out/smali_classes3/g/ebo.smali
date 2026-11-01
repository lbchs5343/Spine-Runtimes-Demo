.class public final Lg/ebo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cpv;


# instance fields
.field public a:I

.field public b:I

.field public d:I

.field public final f:Lg/dsy;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lg/dsy;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ebo;->f:Lg/dsy;

    return-void
.end method


# virtual methods
.method public final c(Lg/clq;J)J
    .locals 6

    const-string p2, "sink"

    invoke-static {p1, p2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget p2, p0, Lg/ebo;->d:I

    const-wide/16 v0, -0x1

    iget-object p3, p0, Lg/ebo;->f:Lg/dsy;

    if-nez p2, :cond_4

    iget p2, p0, Lg/ebo;->h:I

    int-to-long v2, p2

    invoke-interface {p3, v2, v3}, Lg/dsy;->skip(J)V

    const/4 p2, 0x0

    iput p2, p0, Lg/ebo;->h:I

    iget p2, p0, Lg/ebo;->a:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iget p2, p0, Lg/ebo;->b:I

    invoke-static {p3}, Lg/erq;->u(Lg/dsy;)I

    move-result v0

    iput v0, p0, Lg/ebo;->d:I

    iput v0, p0, Lg/ebo;->g:I

    invoke-interface {p3}, Lg/dsy;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p3}, Lg/dsy;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lg/ebo;->a:I

    sget-object v1, Lg/gvn;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lg/aby;->b:Lg/gei;

    iget v2, p0, Lg/ebo;->b:I

    iget v3, p0, Lg/ebo;->g:I

    iget v4, p0, Lg/ebo;->a:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v0, v4, v5}, Lg/aby;->e(IIIIZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p3}, Lg/dsy;->readInt()I

    move-result p3

    const v1, 0x7fffffff

    and-int/2addr p3, v1

    iput p3, p0, Lg/ebo;->b:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    if-ne p3, p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_CONTINUATION streamId changed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " != TYPE_CONTINUATION"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    int-to-long v2, p2

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-interface {p3, p1, v2, v3}, Lg/cpv;->c(Lg/clq;J)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-nez p3, :cond_5

    :goto_1
    return-wide v0

    :cond_5
    iget p3, p0, Lg/ebo;->d:I

    long-to-int v0, p1

    sub-int/2addr p3, v0

    iput p3, p0, Lg/ebo;->d:I

    return-wide p1
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final e()Lg/dme;
    .locals 1

    iget-object v0, p0, Lg/ebo;->f:Lg/dsy;

    invoke-interface {v0}, Lg/cpv;->e()Lg/dme;

    move-result-object v0

    return-object v0
.end method

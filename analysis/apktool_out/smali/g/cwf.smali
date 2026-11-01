.class public final Lg/cwf;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public a:J

.field public final b:J

.field public c:J


# direct methods
.method public constructor <init>(JLjava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p3}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-wide p1, p0, Lg/cwf;->b:J

    return-void
.end method


# virtual methods
.method public final d(J)V
    .locals 3

    iget-wide v0, p0, Lg/cwf;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lg/cwf;->c:J

    iget-wide p1, p0, Lg/cwf;->b:J

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Read limit exceeded"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final mark(I)V
    .locals 2

    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    iget-wide v0, p0, Lg/cwf;->c:J

    iput-wide v0, p0, Lg/cwf;->a:J

    return-void
.end method

.method public final read()I
    .locals 3

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lg/cwf;->d(J)V

    :cond_0
    return v0
.end method

.method public final read([BII)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    int-to-long p2, p1

    invoke-virtual {p0, p2, p3}, Lg/cwf;->d(J)V

    :cond_0
    return p1
.end method

.method public final reset()V
    .locals 2

    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    iget-wide v0, p0, Lg/cwf;->a:J

    iput-wide v0, p0, Lg/cwf;->c:J

    return-void
.end method

.method public final skip(J)J
    .locals 3

    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lg/cwf;->d(J)V

    :cond_0
    return-wide p1
.end method

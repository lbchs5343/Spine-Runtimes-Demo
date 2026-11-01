.class public final Lg/dht;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public final h:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    new-array v0, v0, [Z

    iput-object v0, p0, Lg/dht;->h:[Z

    return-void
.end method


# virtual methods
.method public final i(J)V
    .locals 12

    iget-wide v0, p0, Lg/dht;->b:J

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    iput-wide p1, p0, Lg/dht;->d:J

    goto :goto_0

    :cond_0
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    iget-wide v0, p0, Lg/dht;->d:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lg/dht;->f:J

    iput-wide v0, p0, Lg/dht;->e:J

    iput-wide v4, p0, Lg/dht;->c:J

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lg/dht;->g:J

    sub-long v2, p1, v2

    iget-wide v6, p0, Lg/dht;->f:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0xf

    rem-long/2addr v0, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    iget-object v10, p0, Lg/dht;->h:[Z

    cmp-long v11, v6, v8

    long-to-int v1, v0

    if-gtz v11, :cond_2

    iget-wide v6, p0, Lg/dht;->c:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lg/dht;->c:J

    iget-wide v6, p0, Lg/dht;->e:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lg/dht;->e:J

    aget-boolean v0, v10, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    aput-boolean v0, v10, v1

    iget v0, p0, Lg/dht;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lg/dht;->a:I

    goto :goto_0

    :cond_2
    aget-boolean v0, v10, v1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    aput-boolean v0, v10, v1

    iget v1, p0, Lg/dht;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lg/dht;->a:I

    :cond_3
    :goto_0
    iget-wide v0, p0, Lg/dht;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lg/dht;->b:J

    iput-wide p1, p0, Lg/dht;->g:J

    return-void
.end method

.method public final j()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/dht;->b:J

    iput-wide v0, p0, Lg/dht;->c:J

    iput-wide v0, p0, Lg/dht;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lg/dht;->a:I

    iget-object v1, p0, Lg/dht;->h:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method public final k()Z
    .locals 5

    iget-wide v0, p0, Lg/dht;->b:J

    const-wide/16 v2, 0xf

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget v0, p0, Lg/dht;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

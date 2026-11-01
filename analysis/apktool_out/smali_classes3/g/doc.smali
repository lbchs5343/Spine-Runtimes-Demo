.class public final Lg/doc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:D

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:D

.field public final e:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DDDI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/doc;->c:Ljava/lang/String;

    iput-wide p2, p0, Lg/doc;->e:D

    iput-wide p4, p0, Lg/doc;->d:D

    iput-wide p6, p0, Lg/doc;->a:D

    iput p8, p0, Lg/doc;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lg/doc;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lg/doc;

    iget-object v0, p0, Lg/doc;->c:Ljava/lang/String;

    iget-object v2, p1, Lg/doc;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lg/doc;->d:D

    iget-wide v4, p1, Lg/doc;->d:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Lg/doc;->e:D

    iget-wide v4, p1, Lg/doc;->e:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget v0, p0, Lg/doc;->b:I

    iget v2, p1, Lg/doc;->b:I

    if-ne v0, v2, :cond_1

    iget-wide v2, p0, Lg/doc;->a:D

    iget-wide v4, p1, Lg/doc;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 7

    iget-wide v0, p0, Lg/doc;->d:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lg/doc;->e:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lg/doc;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget v3, p0, Lg/doc;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lg/doc;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lg/ffr;

    invoke-direct {v0, p0}, Lg/ffr;-><init>(Ljava/lang/Object;)V

    const-string v1, "name"

    iget-object v2, p0, Lg/doc;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lg/ffr;->x(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "minBound"

    iget-wide v2, p0, Lg/doc;->e:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lg/ffr;->x(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "maxBound"

    iget-wide v2, p0, Lg/doc;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lg/ffr;->x(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "percent"

    iget-wide v2, p0, Lg/doc;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lg/ffr;->x(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "count"

    iget v2, p0, Lg/doc;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lg/ffr;->x(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/ffr;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

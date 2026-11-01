.class public final Lg/bcj;
.super Lg/dux;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J

.field public final e:Ljava/lang/Integer;

.field public final f:J

.field public final g:Lg/ih;


# direct methods
.method public constructor <init>(JLjava/lang/Integer;J[BLjava/lang/String;JLg/ih;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lg/bcj;->c:J

    iput-object p3, p0, Lg/bcj;->e:Ljava/lang/Integer;

    iput-wide p4, p0, Lg/bcj;->f:J

    iput-object p6, p0, Lg/bcj;->a:[B

    iput-object p7, p0, Lg/bcj;->b:Ljava/lang/String;

    iput-wide p8, p0, Lg/bcj;->d:J

    iput-object p10, p0, Lg/bcj;->g:Lg/ih;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/dux;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lg/dux;

    move-object v1, p1

    check-cast v1, Lg/bcj;

    iget-wide v3, v1, Lg/bcj;->c:J

    iget-wide v5, p0, Lg/bcj;->c:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_5

    iget-object v1, p0, Lg/bcj;->e:Ljava/lang/Integer;

    if-nez v1, :cond_1

    move-object v1, p1

    check-cast v1, Lg/bcj;

    iget-object v1, v1, Lg/bcj;->e:Ljava/lang/Integer;

    if-nez v1, :cond_5

    goto :goto_0

    :cond_1
    move-object v3, p1

    check-cast v3, Lg/bcj;

    iget-object v3, v3, Lg/bcj;->e:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    move-object v1, p1

    check-cast v1, Lg/bcj;

    iget-object v3, v1, Lg/bcj;->g:Lg/ih;

    iget-object v4, v1, Lg/bcj;->b:Ljava/lang/String;

    iget-wide v5, v1, Lg/bcj;->f:J

    iget-wide v7, p0, Lg/bcj;->f:J

    cmp-long v9, v7, v5

    if-nez v9, :cond_5

    instance-of v5, p1, Lg/bcj;

    if-eqz v5, :cond_2

    check-cast p1, Lg/bcj;

    iget-object p1, p1, Lg/bcj;->a:[B

    goto :goto_1

    :cond_2
    iget-object p1, v1, Lg/bcj;->a:[B

    :goto_1
    iget-object v5, p0, Lg/bcj;->a:[B

    invoke-static {v5, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lg/bcj;->b:Ljava/lang/String;

    if-nez p1, :cond_3

    if-nez v4, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_2
    iget-wide v4, p0, Lg/bcj;->d:J

    iget-wide v6, v1, Lg/bcj;->d:J

    cmp-long p1, v4, v6

    if-nez p1, :cond_5

    iget-object p1, p0, Lg/bcj;->g:Lg/ih;

    if-nez p1, :cond_4

    if-nez v3, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_3
    return v0

    :cond_5
    return v2
.end method

.method public final hashCode()I
    .locals 8

    iget-wide v0, p0, Lg/bcj;->c:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    const/4 v3, 0x0

    iget-object v4, p0, Lg/bcj;->e:Ljava/lang/Integer;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->hashCode()I

    move-result v4

    :goto_0
    xor-int/2addr v1, v4

    mul-int v1, v1, v0

    iget-wide v4, p0, Lg/bcj;->f:J

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v5, v4

    xor-int/2addr v1, v5

    mul-int v1, v1, v0

    iget-object v4, p0, Lg/bcj;->a:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    xor-int/2addr v1, v4

    mul-int v1, v1, v0

    iget-object v4, p0, Lg/bcj;->b:Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    xor-int/2addr v1, v4

    mul-int v1, v1, v0

    iget-wide v4, p0, Lg/bcj;->d:J

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    iget-object v0, p0, Lg/bcj;->g:Lg/ih;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    xor-int v0, v1, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogEvent{eventTimeMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lg/bcj;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/bcj;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventUptimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/bcj;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceExtension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/bcj;->a:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceExtensionJsonProto3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/bcj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timezoneOffsetSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/bcj;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", networkConnectionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/bcj;->g:Lg/ih;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

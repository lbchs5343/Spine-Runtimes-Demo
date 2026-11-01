.class public final Lg/ekh;
.super Lg/gsh;
.source "SourceFile"


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(JLg/cwx;)V
    .locals 3

    invoke-direct {p0}, Lg/lh;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lg/cwx;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong literal type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " for value: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-wide p1, p0, Lg/ekh;->a:J

    iput-object p3, p0, Lg/flv;->h:Lg/cwx;

    return-void
.end method


# virtual methods
.method public final b()Lg/gsh;
    .locals 4

    new-instance v0, Lg/ekh;

    iget-wide v1, p0, Lg/ekh;->a:J

    iget-object v3, p0, Lg/flv;->h:Lg/cwx;

    invoke-direct {v0, v1, v2, v3}, Lg/ekh;-><init>(JLg/cwx;)V

    invoke-virtual {v0, p0}, Lg/lh;->s(Lg/lh;)V

    iget-object v1, p0, Lg/gsh;->ae:Lg/eek;

    invoke-virtual {v0, v1}, Lg/gsh;->_bb(Lg/eek;)V

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lg/ekh;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 3

    sget-object v0, Lg/fwn;->a:[I

    iget-object v1, p0, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v1}, Lg/cwx;->f()Lg/bjt;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lg/ekh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/ekh;

    iget-wide v2, p0, Lg/ekh;->a:J

    iget-wide v4, p1, Lg/ekh;->a:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lg/flv;->h:Lg/cwx;

    iget-object p1, p1, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v2, p1}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final f(Lg/cwx;)V
    .locals 0

    iput-object p1, p0, Lg/flv;->h:Lg/cwx;

    return-void
.end method

.method public final g()Z
    .locals 5

    iget-wide v0, p0, Lg/ekh;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 5

    const/16 v0, 0x20

    iget-wide v1, p0, Lg/ekh;->a:J

    ushr-long v3, v1, v0

    xor-long/2addr v1, v3

    long-to-int v0, v1

    iget-object v1, p0, Lg/flv;->h:Lg/cwx;

    iget v1, v1, Lg/cwx;->az:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    const-string v0, "("

    const/16 v1, 0x29

    const/16 v2, 0x20

    :try_start_0
    iget-wide v3, p0, Lg/ekh;->a:J

    iget-object v5, p0, Lg/flv;->h:Lg/cwx;

    sget-object v6, Lg/foj;->a:Lg/foj;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lg/pp;->b(JLg/cwx;Lg/foj;ZZ)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lg/flv;->h:Lg/cwx;

    sget-object v5, Lg/cwx;->at:Lg/cff;

    invoke-virtual {v4, v5}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-object v3

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lg/gck; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lg/ekh;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

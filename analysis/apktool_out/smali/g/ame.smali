.class public final Lg/ame;
.super Lg/eek;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# instance fields
.field public final d:Lg/bvj;


# direct methods
.method public constructor <init>(Lg/bvj;Lg/gks;Lg/gsh;Lg/gsh;)V
    .locals 2

    sget-object v0, Lg/hay;->ARITH:Lg/hay;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lg/eek;-><init>(Lg/hay;I)V

    iput-object p1, p0, Lg/ame;->d:Lg/bvj;

    invoke-virtual {p0, p2}, Lg/eek;->ax(Lg/gks;)V

    invoke-virtual {p0, p3}, Lg/eek;->_an(Lg/gsh;)V

    invoke-virtual {p0, p4}, Lg/eek;->_an(Lg/gsh;)V

    return-void
.end method


# virtual methods
.method public final _o()Lg/eek;
    .locals 5

    new-instance v0, Lg/ame;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v1}, Lg/gsh;->b()Lg/gsh;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    invoke-virtual {v2}, Lg/gsh;->b()Lg/gsh;

    move-result-object v2

    iget-object v3, p0, Lg/ame;->d:Lg/bvj;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lg/ame;-><init>(Lg/bvj;Lg/gks;Lg/gsh;Lg/gsh;)V

    invoke-virtual {p0, v0}, Lg/eek;->am(Lg/eek;)V

    return-object v0
.end method

.method public final _p(Lg/eek;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/ame;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-super {p0, p1}, Lg/eek;->_p(Lg/eek;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lg/ame;

    iget-object v1, p0, Lg/ame;->d:Lg/bvj;

    iget-object v3, p1, Lg/ame;->d:Lg/bvj;

    if-ne v1, v3, :cond_4

    invoke-virtual {p0, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {p1, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v1, Lg/ekh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, p1, Lg/ekh;

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    check-cast v1, Lg/ekh;

    iget-wide v3, v1, Lg/ekh;->a:J

    check-cast p1, Lg/ekh;

    iget-wide v5, p1, Lg/ekh;->a:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_4

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lg/eek;->ag:I

    invoke-static {v1}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": ARITH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lg/csv;->ARITH_ONEARG:Lg/csv;

    iget-object v2, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lg/ame;->d:Lg/bvj;

    const/4 v4, 0x0

    const/16 v5, 0x20

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lg/bvj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/eek;->ai:Lg/gks;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v4}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lg/bvj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0, v0}, Lg/eek;->al(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

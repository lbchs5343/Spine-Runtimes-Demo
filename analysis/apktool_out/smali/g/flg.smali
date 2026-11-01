.class public final Lg/flg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dhc;


# instance fields
.field public final a:Lg/cwx;

.field public final b:Lg/dwg;

.field public final c:Lg/gif;

.field public final d:Lg/gks;


# direct methods
.method public constructor <init>(Lg/dwg;Lg/gif;Lg/gks;Lg/cwx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/flg;->b:Lg/dwg;

    iput-object p2, p0, Lg/flg;->c:Lg/gif;

    iput-object p3, p0, Lg/flg;->d:Lg/gks;

    iput-object p4, p0, Lg/flg;->a:Lg/cwx;

    return-void
.end method


# virtual methods
.method public final e(Lg/gcu;)Lg/cwx;
    .locals 3

    iget-object v0, p0, Lg/flg;->c:Lg/gif;

    invoke-virtual {v0}, Lg/gif;->aa()Lg/gsh;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/gcu;->g(Lg/gsh;)Lg/cwx;

    move-result-object v0

    iget-object v1, p0, Lg/flg;->d:Lg/gks;

    invoke-virtual {p1, v1}, Lg/gcu;->g(Lg/gsh;)Lg/cwx;

    move-result-object p1

    iget-object v1, p0, Lg/flg;->b:Lg/dwg;

    iget-object v1, v1, Lg/dwg;->o:Lg/emr;

    iget-object v2, p0, Lg/flg;->a:Lg/cwx;

    invoke-virtual {v1, v0, v0, v2}, Lg/emr;->z(Lg/cwx;Lg/cwx;Lg/cwx;)Lg/cwx;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lg/flg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/flg;

    iget-object v0, p0, Lg/flg;->c:Lg/gif;

    iget-object p1, p1, Lg/flg;->c:Lg/gif;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Lg/au;
    .locals 1

    sget-object v0, Lg/au;->USE:Lg/au;

    return-object v0
.end method

.method public final getType()Lg/cwx;
    .locals 4

    iget-object v0, p0, Lg/flg;->c:Lg/gif;

    invoke-virtual {v0}, Lg/gif;->aa()Lg/gsh;

    move-result-object v0

    invoke-virtual {v0}, Lg/flv;->j()Lg/cwx;

    move-result-object v0

    iget-object v1, p0, Lg/flg;->d:Lg/gks;

    invoke-virtual {v1}, Lg/gks;->j()Lg/cwx;

    move-result-object v1

    iget-object v2, p0, Lg/flg;->b:Lg/dwg;

    iget-object v2, v2, Lg/dwg;->o:Lg/emr;

    iget-object v3, p0, Lg/flg;->a:Lg/cwx;

    invoke-virtual {v2, v0, v0, v3}, Lg/emr;->z(Lg/cwx;Lg/cwx;Lg/cwx;)Lg/cwx;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/flg;->c:Lg/gif;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InvokeAssign{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/flg;->c:Lg/gif;

    invoke-virtual {v1}, Lg/gif;->ac()Lg/ayu;

    move-result-object v2

    iget-object v2, v2, Lg/ayu;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", argType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/flg;->a:Lg/cwx;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", currentType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/flg;->getType()Lg/cwx;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", instanceArg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lg/gif;->aa()Lg/gsh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

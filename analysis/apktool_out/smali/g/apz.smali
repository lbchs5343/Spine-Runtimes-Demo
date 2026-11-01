.class public final Lg/apz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dhc;


# instance fields
.field public final a:Lg/cwx;

.field public final b:Lg/dwg;

.field public final c:Lg/adz;

.field public final d:Lg/dsj;


# direct methods
.method public constructor <init>(Lg/dwg;Lg/adz;Lg/cwx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/apz;->b:Lg/dwg;

    iput-object p2, p0, Lg/apz;->c:Lg/adz;

    iget-object p1, p2, Lg/adz;->a:Ljava/lang/Object;

    check-cast p1, Lg/dsj;

    iput-object p1, p0, Lg/apz;->d:Lg/dsj;

    iput-object p3, p0, Lg/apz;->a:Lg/cwx;

    return-void
.end method


# virtual methods
.method public final e(Lg/gcu;)Lg/cwx;
    .locals 2

    iget-object v0, p0, Lg/apz;->c:Lg/adz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/gcu;->g(Lg/gsh;)Lg/cwx;

    move-result-object p1

    iget-object v0, p0, Lg/apz;->b:Lg/dwg;

    iget-object v0, v0, Lg/dwg;->o:Lg/emr;

    iget-object v1, p0, Lg/apz;->a:Lg/cwx;

    invoke-virtual {v0, p1, p1, v1}, Lg/emr;->z(Lg/cwx;Lg/cwx;Lg/cwx;)Lg/cwx;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lg/gzg;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lg/apz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/apz;

    iget-object v0, p0, Lg/apz;->c:Lg/adz;

    iget-object p1, p1, Lg/apz;->c:Lg/adz;

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

    sget-object v0, Lg/au;->ASSIGN:Lg/au;

    return-object v0
.end method

.method public final getType()Lg/cwx;
    .locals 3

    iget-object v0, p0, Lg/apz;->c:Lg/adz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {v0}, Lg/flv;->j()Lg/cwx;

    move-result-object v0

    iget-object v1, p0, Lg/apz;->b:Lg/dwg;

    iget-object v1, v1, Lg/dwg;->o:Lg/emr;

    iget-object v2, p0, Lg/apz;->a:Lg/cwx;

    invoke-virtual {v1, v0, v0, v2}, Lg/emr;->z(Lg/cwx;Lg/cwx;Lg/cwx;)Lg/cwx;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lg/gzg;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    return-object v2
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/apz;->c:Lg/adz;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldGetAssign{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/apz;->d:Lg/dsj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/apz;->getType()Lg/cwx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", instanceArg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/apz;->c:Lg/adz;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

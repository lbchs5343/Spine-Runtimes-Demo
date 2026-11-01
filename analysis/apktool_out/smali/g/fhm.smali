.class public final Lg/fhm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ebp;
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Lg/cwx;

.field public final k:Ljava/util/List;

.field public final l:Ljava/util/List;

.field public final m:Lg/ayu;

.field public final n:Ljava/util/List;

.field public final o:I


# direct methods
.method public constructor <init>(Lg/ayu;Ljava/util/List;Lg/cwx;Ljava/util/List;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fhm;->m:Lg/ayu;

    iput-object p2, p0, Lg/fhm;->n:Ljava/util/List;

    iput-object p3, p0, Lg/fhm;->a:Lg/cwx;

    iput-object p4, p0, Lg/fhm;->k:Ljava/util/List;

    iput-object p5, p0, Lg/fhm;->l:Ljava/util/List;

    iput p6, p0, Lg/fhm;->o:I

    return-void
.end method


# virtual methods
.method public final _cv()I
    .locals 1

    iget v0, p0, Lg/fhm;->o:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lg/awf;->aa(Lg/ebp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (c)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lg/fhm;

    iget-object v0, p0, Lg/fhm;->m:Lg/ayu;

    iget-object p1, p1, Lg/fhm;->m:Lg/ayu;

    invoke-virtual {v0, p1}, Lg/ayu;->n(Lg/ayu;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic d()Lg/fky;
    .locals 1

    sget-object v0, Lg/acq;->j:Lg/acq;

    return-object v0
.end method

.method public final synthetic e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg/fhm;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lg/fhm;

    iget-object v0, p0, Lg/fhm;->m:Lg/ayu;

    iget-object p1, p1, Lg/fhm;->m:Lg/ayu;

    invoke-virtual {v0, p1}, Lg/ayu;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/fhm;->n:Ljava/util/List;

    return-object v0
.end method

.method public final g()Lg/cwx;
    .locals 1

    iget-object v0, p0, Lg/fhm;->a:Lg/cwx;

    return-object v0
.end method

.method public final getTypeParameters()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/fhm;->k:Ljava/util/List;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget v0, p0, Lg/fhm;->o:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/fhm;->m:Lg/ayu;

    iget v0, v0, Lg/ayu;->b:I

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/fhm;->l:Ljava/util/List;

    return-object v0
.end method

.method public final j()Lg/ayu;
    .locals 1

    iget-object v0, p0, Lg/fhm;->m:Lg/ayu;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClspMth{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/fhm;->k:Ljava/util/List;

    invoke-static {v1}, Lg/evh;->e(Ljava/util/Collection;)Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_0

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3, v1}, Lg/evh;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lg/fhm;->m:Lg/ayu;

    iget-object v4, v2, Lg/ayu;->d:Lg/ve;

    iget-object v4, v4, Lg/ve;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lg/ayu;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/fhm;->n:Ljava/util/List;

    invoke-static {v3, v1}, Lg/evh;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/fhm;->a:Lg/cwx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/fhm;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " VARARG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lg/fhm;->l:Ljava/util/List;

    invoke-static {v1}, Lg/evh;->e(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, " throws "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v1}, Lg/evh;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

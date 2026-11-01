.class public final Lg/fej;
.super Lg/gzj;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lg/guu;


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/fej;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lg/fej;-><init>(I)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/gzj;->f:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0}, Lg/gzj;-><init>()V

    iput-object v0, p0, Lg/fej;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lg/gzj;-><init>()V

    iput-object p1, p0, Lg/fej;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lg/gzj;->g()V

    iget-object v0, p0, Lg/fej;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1

    invoke-virtual {p0}, Lg/gzj;->g()V

    instance-of v0, p2, Lg/guu;

    if-eqz v0, :cond_0

    check-cast p2, Lg/guu;

    invoke-interface {p2}, Lg/guu;->zzh()Ljava/util/List;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lg/fej;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lg/fej;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lg/fej;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final b(Lg/cyb;)V
    .locals 1

    invoke-virtual {p0}, Lg/gzj;->g()V

    iget-object v0, p0, Lg/fej;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final c(I)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lg/fej;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    instance-of v2, v1, Lg/cyb;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    check-cast v1, Lg/cyb;

    sget-object v2, Lg/dhz;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Lg/cyb;->c()I

    move-result v4

    if-nez v4, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    move-object v4, v1

    check-cast v4, Lg/crn;

    new-instance v5, Ljava/lang/String;

    iget-object v6, v4, Lg/crn;->zza:[B

    invoke-virtual {v4}, Lg/crn;->c()I

    move-result v4

    invoke-direct {v5, v6, v3, v4, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v2, v5

    :goto_0
    check-cast v1, Lg/crn;

    iget-object v4, v1, Lg/crn;->zza:[B

    invoke-virtual {v1}, Lg/crn;->c()I

    move-result v1

    sget-object v5, Lg/gua;->a:Lg/cuf;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lg/cuf;->g(I[BI)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v2

    :cond_3
    check-cast v1, [B

    new-instance v2, Ljava/lang/String;

    sget-object v4, Lg/dhz;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v4, Lg/gua;->a:Lg/cuf;

    array-length v5, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1, v5}, Lg/cuf;->g(I[BI)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v2
.end method

.method public final clear()V
    .locals 1

    invoke-virtual {p0}, Lg/gzj;->g()V

    iget-object v0, p0, Lg/fej;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lg/fej;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lg/gzj;->g()V

    iget-object v0, p0, Lg/fej;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    instance-of v0, p1, Lg/cyb;

    if-eqz v0, :cond_2

    check-cast p1, Lg/cyb;

    sget-object v0, Lg/dhz;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Lg/cyb;->c()I

    move-result v1

    if-nez v1, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    check-cast p1, Lg/crn;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lg/crn;->zza:[B

    const/4 v3, 0x0

    invoke-virtual {p1}, Lg/crn;->c()I

    move-result p1

    invoke-direct {v1, v2, v3, p1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1

    :cond_2
    check-cast p1, [B

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lg/dhz;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lg/gzj;->g()V

    iget-object v0, p0, Lg/fej;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    instance-of p2, p1, Lg/cyb;

    if-eqz p2, :cond_2

    check-cast p1, Lg/cyb;

    sget-object p2, Lg/dhz;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Lg/cyb;->c()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    check-cast p1, Lg/crn;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lg/crn;->zza:[B

    const/4 v2, 0x0

    invoke-virtual {p1}, Lg/crn;->c()I

    move-result p1

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    :cond_2
    check-cast p1, [B

    new-instance p2, Ljava/lang/String;

    sget-object v0, Lg/dhz;->a:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lg/fej;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final zzd(I)Lg/cwe;
    .locals 2

    iget-object v0, p0, Lg/fej;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lg/fej;

    invoke-direct {p1, v1}, Lg/fej;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zze()Lg/guu;
    .locals 1

    iget-boolean v0, p0, Lg/gzj;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Lg/ghl;

    invoke-direct {v0, p0}, Lg/ghl;-><init>(Lg/fej;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final zzf(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/fej;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/fej;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.class public final Lg/gay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Z

.field public b:Lg/gez;

.field public final c:Lg/dpa;

.field public final d:Ljava/lang/ClassLoader;

.field public e:Lg/evf;

.field public final f:Lg/cqc;

.field public final g:Lg/cka;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lg/cqc;Lg/cka;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/gay;->h:Ljava/util/ArrayList;

    iput-object p1, p0, Lg/gay;->f:Lg/cqc;

    iput-object p2, p0, Lg/gay;->g:Lg/cka;

    invoke-interface {p2}, Lg/cka;->a()Lg/dpa;

    move-result-object p1

    iput-object p1, p0, Lg/gay;->c:Lg/dpa;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lg/gay;->d:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lg/gay;

    iget-object v0, p0, Lg/gay;->c:Lg/dpa;

    iget-object v0, v0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Lg/gay;->c:Lg/dpa;

    iget-object p1, p1, Lg/dpa;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg/gay;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lg/gay;->c:Lg/dpa;

    iget-object v0, v0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast p1, Lg/gay;

    iget-object p1, p1, Lg/gay;->c:Lg/dpa;

    iget-object p1, p1, Lg/dpa;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/gay;->c:Lg/dpa;

    iget-object v0, v0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gay;->c:Lg/dpa;

    iget-object v0, v0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

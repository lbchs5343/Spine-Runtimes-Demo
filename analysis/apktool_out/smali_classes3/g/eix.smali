.class public final Lg/eix;
.super Lg/epr;
.source "SourceFile"


# instance fields
.field public final transient a:Lg/cil;

.field public final transient b:[Ljava/lang/Object;

.field public final transient e:I


# direct methods
.method public constructor <init>(Lg/cil;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lg/eix;->a:Lg/cil;

    iput-object p2, p0, Lg/eix;->b:[Ljava/lang/Object;

    iput p3, p0, Lg/eix;->e:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lg/eix;->a:Lg/cil;

    invoke-virtual {v2, v0}, Lg/cil;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final d([Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lg/epr;->c()Lg/fkz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/fkz;->d([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final f()Lg/fkz;
    .locals 1

    new-instance v0, Lg/exc;

    invoke-direct {v0, p0}, Lg/exc;-><init>(Lg/eix;)V

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p0}, Lg/epr;->c()Lg/fkz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/fkz;->o(I)Lg/duz;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lg/eix;->e:I

    return v0
.end method

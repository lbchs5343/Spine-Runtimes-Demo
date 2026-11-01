.class public final Lg/fon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lj$/lang/Iterable;


# instance fields
.field public final a:Lg/hed;

.field public final b:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Lg/hed;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fon;->a:Lg/hed;

    new-instance v0, Ljava/util/BitSet;

    iget-object p1, p1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lg/fon;->b:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public final c(Lg/fza;)V
    .locals 1

    iget-object v0, p0, Lg/fon;->b:Ljava/util/BitSet;

    iget p1, p1, Lg/fza;->x:I

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public final d(Lg/fza;)Z
    .locals 1

    iget-object v0, p0, Lg/fon;->b:Ljava/util/BitSet;

    iget p1, p1, Lg/fza;->x:I

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public final e()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lg/fon;->b:Ljava/util/BitSet;

    if-eqz v0, :cond_3

    sget-object v1, Lg/giu;->a:Lg/giu;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_1
    iget-object v2, p0, Lg/fon;->a:Lg/hed;

    iget-object v2, v2, Lg/hed;->ak:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 4

    iget-object v0, p0, Lg/fon;->b:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lg/fon;->a:Lg/hed;

    iget-object v1, v1, Lg/hed;->ak:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 4

    new-instance v0, Lg/fdz;

    iget-object v1, p0, Lg/fon;->b:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    iget-object v3, p0, Lg/fon;->a:Lg/hed;

    iget-object v3, v3, Lg/hed;->ak:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lg/fdz;-><init>(Ljava/util/BitSet;ILjava/util/List;)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 4

    iget-object v0, p0, Lg/fon;->b:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    new-instance v2, Lg/fdz;

    iget-object v3, p0, Lg/fon;->a:Lg/hed;

    iget-object v3, v3, Lg/hed;->ak:Ljava/util/List;

    invoke-direct {v2, v0, v1, v3}, Lg/fdz;-><init>(Ljava/util/BitSet;ILjava/util/List;)V

    int-to-long v0, v1

    const/16 v3, 0x11

    invoke-static {v2, v0, v1, v3}, Lj$/util/Spliterators;->spliterator(Ljava/util/Iterator;JI)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lg/fon;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/fon;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lg/vm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Ljava/util/Comparator;


# instance fields
.field public b:Lg/ejb;

.field public c:Lg/gks;

.field public final d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:I

.field public final g:I

.field public final h:Lg/ffr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lg/vm;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    new-instance v0, Lg/dbm;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lg/dbm;-><init>(I)V

    invoke-static {v0}, Lj$/util/Comparator$a;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lg/dbm;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lg/dbm;-><init>(I)V

    invoke-static {v0, v1}, Lj$/util/Comparator$b;->thenComparingInt(Ljava/util/Comparator;Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lg/vm;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(IILg/gks;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/vm;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/vm;->e:Ljava/util/ArrayList;

    new-instance v0, Lg/ffr;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lg/ffr;-><init>(I)V

    iput-object v0, p0, Lg/vm;->h:Lg/ffr;

    iput p1, p0, Lg/vm;->f:I

    iput p2, p0, Lg/vm;->g:I

    iput-object p3, p0, Lg/vm;->c:Lg/gks;

    iput-object p0, p3, Lg/gks;->a:Lg/vm;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lg/vm;

    sget-object v0, Lg/vm;->a:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/vm;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg/vm;

    iget v1, p0, Lg/vm;->f:I

    iget v3, p1, Lg/vm;->f:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lg/vm;->g:I

    iget p1, p1, Lg/vm;->g:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lg/vm;->f:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/vm;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Lg/vm;->c:Lg/gks;

    sget-object v1, Lg/csv;->IMMUTABLE_TYPE:Lg/csv;

    iget-object v0, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    return v0
.end method

.method public final j(Lg/abi;)V
    .locals 3

    iget-object v0, p0, Lg/vm;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v1, Lg/egl;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p1}, Lg/egl;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    iget-object p1, p0, Lg/vm;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lg/vm;->e:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lg/vm;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gks;

    iget-object v1, v1, Lg/gsh;->ae:Lg/eek;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lg/eek;->ah:Lg/hay;

    sget-object v3, Lg/hay;->PHI:Lg/hay;

    if-ne v2, v3, :cond_0

    check-cast v1, Lg/abi;

    invoke-virtual {p0, v1}, Lg/vm;->p(Lg/abi;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "r"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lg/vm;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/vm;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lg/cwx;
    .locals 1

    invoke-virtual {p0}, Lg/vm;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/vm;->c:Lg/gks;

    iget-object v0, v0, Lg/flv;->h:Lg/cwx;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n(Lg/ejb;)V
    .locals 2

    iput-object p1, p0, Lg/vm;->b:Lg/ejb;

    iget-object v0, p1, Lg/ejb;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p1, Lg/ejb;->f:Ljava/util/List;

    :cond_0
    iget-object v0, p1, Lg/ejb;->f:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lg/ejb;->f:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lg/vm;->m()Lg/cwx;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p1, Lg/ejb;->e:Lg/cwx;

    :cond_2
    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/vm;->b:Lg/ejb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lg/ejb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final p(Lg/abi;)V
    .locals 2

    iget-object v0, p0, Lg/vm;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/vm;->e:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lg/vm;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final q()Lg/abi;
    .locals 2

    iget-object v0, p0, Lg/vm;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/vm;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/abi;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final r(Lg/gks;)V
    .locals 1

    iget-object v0, p1, Lg/gks;->a:Lg/vm;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/vm;->v(Lg/gks;)V

    :cond_0
    iput-object p0, p1, Lg/gks;->a:Lg/vm;

    iget-object v0, p0, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final s(Lg/cwx;)V
    .locals 4

    invoke-virtual {p0}, Lg/vm;->m()Lg/cwx;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lg/gck;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t change immutable type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lg/vm;->h:Lg/ffr;

    iput-object p1, v0, Lg/ffr;->f:Ljava/lang/Object;

    iget-object v0, p0, Lg/vm;->b:Lg/ejb;

    if-eqz v0, :cond_2

    iput-object p1, v0, Lg/ejb;->e:Lg/cwx;

    :cond_2
    return-void
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, Lg/vm;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lg/vm;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/vm;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/foj;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/vm;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/vm;->h:Lg/ffr;

    iget-object v1, v1, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v1, Lg/cwx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lg/ejb;
    .locals 3

    iget-object v0, p0, Lg/vm;->b:Lg/ejb;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Code variable not set in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final v(Lg/gks;)V
    .locals 2

    new-instance v0, Lg/egl;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lg/egl;-><init>(ILjava/lang/Object;)V

    iget-object p1, p0, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final w(Lg/hed;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Lg/vm;->c:Lg/gks;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lg/acq;->o:Lg/acq;

    iget-object p1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p1, v3}, Lg/sm;->j(Lg/fky;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gks;

    sget-object v4, Lg/acq;->s:Lg/acq;

    iget-object v3, v3, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v4}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v3

    check-cast v3, Lg/fih;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lg/fih;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Lg/fih;->a:Lg/cwx;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gks;

    iget-object v3, v2, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v3}, Lg/cwx;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v2}, Lg/gks;->j()Lg/cwx;

    move-result-object v2

    invoke-virtual {v2}, Lg/cwx;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "r"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lg/vm;->f:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x76

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lg/vm;->g:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const-string v3, "]"

    const-string v4, "["

    const-string v5, ", "

    if-nez v2, :cond_5

    invoke-static {v1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/Stream;->sorted()Lj$/util/stream/Stream;

    move-result-object v1

    invoke-static {v5, v4, v3}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ", names: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lg/coq;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lg/coq;-><init>(I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Stream;->sorted()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v5, v4, v3}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ", types: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final x()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lg/vm;->c:Lg/gks;

    iget-object v0, v0, Lg/gsh;->ae:Lg/eek;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/eek;->ah:Lg/hay;

    sget-object v2, Lg/hay;->PHI:Lg/hay;

    if-ne v1, v2, :cond_1

    check-cast v0, Lg/abi;

    iget-object v1, p0, Lg/vm;->e:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lg/vm;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/vm;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_1
    iget-object v0, p0, Lg/vm;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_2
    return-object v0
.end method

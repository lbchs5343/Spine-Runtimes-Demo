.class public final Lg/fza;
.super Lg/lh;
.source "SourceFile"

# interfaces
.implements Lg/cih;
.implements Ljava/lang/Comparable;


# instance fields
.field public aa:Lg/fza;

.field public ab:Lg/fza;

.field public final ac:Ljava/util/ArrayList;

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:Ljava/util/BitSet;

.field public final h:I

.field public i:Ljava/util/BitSet;

.field public j:Ljava/util/BitSet;

.field public x:I

.field public final y:I

.field public z:Ljava/util/List;


# direct methods
.method public constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, Lg/lh;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/fza;->ac:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/fza;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/fza;->d:Ljava/util/List;

    sget-object v0, Lg/giu;->a:Lg/giu;

    iput-object v0, p0, Lg/fza;->g:Ljava/util/BitSet;

    iput-object v0, p0, Lg/fza;->j:Ljava/util/BitSet;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/fza;->f:Ljava/util/List;

    iput p1, p0, Lg/fza;->h:I

    iput p2, p0, Lg/fza;->x:I

    iput p3, p0, Lg/fza;->y:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lg/fza;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ad()V
    .locals 5

    iget-object v0, p0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    invoke-static {v3}, Lg/ffb;->bd(Lg/fza;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v2, Lg/csv;->LOOP_END:Lg/csv;

    iget-object v3, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lg/acq;->at:Lg/acq;

    iget-object v3, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gcv;

    iget-object v3, v3, Lg/gcv;->c:Lg/fza;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lg/fza;->z:Ljava/util/List;

    return-void
.end method

.method public final ae(Lg/fza;)Z
    .locals 1

    iget-object v0, p0, Lg/fza;->g:Ljava/util/BitSet;

    iget p1, p1, Lg/fza;->x:I

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public final synthetic b(Lg/fsw;Lg/eos;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lg/awf;->k(Lg/cih;Lg/fsw;Lg/eos;)V

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/fza;->ac:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lg/fza;

    iget v0, p0, Lg/fza;->h:I

    iget p1, p1, Lg/fza;->h:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/fza;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg/fza;

    iget v1, p0, Lg/fza;->h:I

    iget p1, p1, Lg/fza;->h:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lg/fza;->h:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "B:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lg/fza;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/fza;->y:I

    invoke-static {v1}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lg/flc;
.super Lg/grs;
.source "SourceFile"


# instance fields
.field public i:I

.field public j:Ljava/util/Map;

.field public k:Ljava/util/Map;

.field public l:I


# direct methods
.method public constructor <init>(Lg/ur;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/grs;-><init>(Lg/ur;)V

    const/4 p1, 0x1

    iput p1, p0, Lg/flc;->l:I

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lg/flc;->j:Ljava/util/Map;

    iput-object p1, p0, Lg/flc;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(C)Lg/eos;
    .locals 1

    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p0, Lg/flc;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/flc;->i:I

    return-object p0
.end method

.method public final b(Lg/cdv;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lg/flc;->q(Lg/cdv;I)V

    return-void
.end method

.method public final c(Lg/flc;)Lg/eos;
    .locals 4

    iget v0, p0, Lg/flc;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lg/flc;->l:I

    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p1, Lg/flc;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cdv;

    invoke-virtual {p0, v2, v3}, Lg/flc;->q(Lg/cdv;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lg/flc;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget v2, p0, Lg/flc;->l:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    iget-object v2, p0, Lg/flc;->k:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Lg/flc;->k:Ljava/util/Map;

    :cond_1
    iget-object v2, p0, Lg/flc;->k:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget v0, p0, Lg/flc;->l:I

    iget v1, p1, Lg/flc;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lg/flc;->l:I

    iget v0, p1, Lg/flc;->i:I

    iput v0, p0, Lg/flc;->i:I

    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final bridge synthetic d(Ljava/lang/String;)Lg/eos;
    .locals 0

    invoke-virtual {p0, p1}, Lg/flc;->o(Ljava/lang/String;)V

    return-object p0
.end method

.method public final e(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lg/flc;->l:I

    iget-object v1, p0, Lg/flc;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lg/flc;->k:Ljava/util/Map;

    :cond_1
    iget-object v1, p0, Lg/flc;->k:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f(Lg/ahw;)V
    .locals 2

    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lg/flc;->i:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lg/flc;->q(Lg/cdv;I)V

    return-void
.end method

.method public final finish()Lg/emz;
    .locals 4

    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    new-instance v1, Lg/bov;

    iget-object v2, p0, Lg/flc;->k:Ljava/util/Map;

    iget-object v3, p0, Lg/flc;->j:Ljava/util/Map;

    invoke-direct {v1, v0, v2, v3}, Lg/bov;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v1
.end method

.method public final g(Lg/cfr;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lg/aev;

    invoke-direct {v0, p1}, Lg/aev;-><init>(Lg/cfr;)V

    invoke-virtual {p0, v0}, Lg/flc;->b(Lg/cdv;)V

    return-void
.end method

.method public final bridge synthetic h(Ljava/lang/String;)Lg/eos;
    .locals 0

    invoke-virtual {p0, p1}, Lg/flc;->p(Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/grs;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lg/flc;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/flc;->l:I

    const/4 v0, 0x0

    iput v0, p0, Lg/flc;->i:I

    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/grs;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lg/flc;->i:I

    iget-object v1, p0, Lg/grs;->y:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lg/flc;->i:I

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lg/flc;->i:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lg/flc;->i:I

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lg/grs;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lg/grs;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/flc;->l:I

    sget-object v2, Lg/foj;->a:Lg/foj;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v2

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v5, 0x0

    :cond_2
    add-int/2addr v1, v5

    iput v1, p0, Lg/flc;->l:I

    iput v3, p0, Lg/flc;->i:I

    return-void

    :cond_3
    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final q(Lg/cdv;I)V
    .locals 1

    iget-object v0, p0, Lg/flc;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/flc;->j:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lg/flc;->j:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic r(Ljava/lang/String;)Lg/grs;
    .locals 0

    invoke-virtual {p0, p1}, Lg/flc;->p(Ljava/lang/String;)V

    return-object p0
.end method

.method public final s(C)Lg/grs;
    .locals 1

    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p0, Lg/flc;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/flc;->i:I

    return-object p0
.end method

.method public final bridge synthetic t(Ljava/lang/String;)Lg/grs;
    .locals 0

    invoke-virtual {p0, p1}, Lg/flc;->o(Ljava/lang/String;)V

    return-object p0
.end method

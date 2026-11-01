.class public abstract Lg/ffb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ggq;


# static fields
.field public static f:Z

.field public static g:Ljava/lang/reflect/Field;

.field public static h:Z

.field public static i:Ljava/util/concurrent/ExecutorService;

.field public static j:Ljava/lang/reflect/Constructor;

.field public static final k:Lg/dcu;

.field public static final l:Lg/ehz;

.field public static m:Ljava/lang/reflect/Field;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/dcu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/ffb;->k:Lg/dcu;

    new-instance v0, Lg/ehz;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/ehz;-><init>(I)V

    sput-object v0, Lg/ffb;->l:Lg/ehz;

    return-void
.end method

.method public static aa(ILg/gri;Lg/brh;)V
    .locals 6

    iget v0, p2, Lg/brh;->ct:F

    iget-object v1, p2, Lg/brh;->bx:Lg/hac;

    iget-object v2, v1, Lg/hac;->e:Lg/hac;

    invoke-virtual {v2}, Lg/hac;->l()I

    move-result v2

    iget-object v3, p2, Lg/brh;->as:Lg/hac;

    iget-object v4, v3, Lg/hac;->e:Lg/hac;

    invoke-virtual {v4}, Lg/hac;->l()I

    move-result v4

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3}, Lg/hac;->n()I

    move-result v3

    sub-int v3, v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v2, v4, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    move v2, v1

    move v4, v3

    :goto_0
    invoke-virtual {p2}, Lg/brh;->di()I

    move-result v1

    sub-int v3, v4, v2

    sub-int/2addr v3, v1

    if-le v2, v4, :cond_1

    sub-int v3, v2, v4

    sub-int/2addr v3, v1

    :cond_1
    if-lez v3, :cond_2

    int-to-float v3, v3

    mul-float v0, v0, v3

    add-float/2addr v0, v5

    :goto_1
    float-to-int v0, v0

    goto :goto_2

    :cond_2
    int-to-float v3, v3

    mul-float v0, v0, v3

    goto :goto_1

    :goto_2
    add-int v3, v2, v0

    add-int v5, v3, v1

    if-le v2, v4, :cond_3

    sub-int v3, v2, v0

    sub-int v5, v3, v1

    :cond_3
    invoke-virtual {p2, v3, v5}, Lg/brh;->dt(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1, p2}, Lg/ffb;->bt(ILg/gri;Lg/brh;)V

    return-void
.end method

.method public static ab(Lg/fza;Lg/eek;)I
    .locals 3

    iget-object p0, p0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static ac(Lg/fza;Lg/fza;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_1

    iget-object v1, p0, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    new-instance v2, Lg/bev;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lg/bev;-><init>(I)V

    invoke-static {p0, p1, v1, v0, v2}, Lg/ffb;->n(Lg/fza;Lg/fza;Ljava/util/BitSet;ZLg/bev;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static ad(Ljava/util/List;)Z
    .locals 1

    invoke-static {p0}, Lg/evh;->m(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    iget-object v0, v0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static ae(Ljava/util/ArrayList;)V
    .locals 5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/flj;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/flj;

    iget v4, v3, Lg/flj;->s:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, Lg/flj;->d:Ljava/lang/Float;

    iget-object v4, v2, Lg/flj;->r:Ljava/lang/Object;

    if-nez v4, :cond_0

    iget-object v3, v3, Lg/flj;->p:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iput-object v3, v2, Lg/flj;->r:Ljava/lang/Object;

    instance-of v3, v2, Lg/epo;

    if-eqz v3, :cond_0

    check-cast v2, Lg/epo;

    invoke-virtual {v2}, Lg/epo;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/flj;

    iget-object v1, v0, Lg/flj;->p:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lg/flj;->r:Ljava/lang/Object;

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static af(Lg/fza;Lg/eek;)Z
    .locals 1

    iget-object p0, p0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eek;

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static ag(Ljava/util/List;Lg/csv;)Lg/fza;
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    iget-object v1, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, p1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ah(Lg/cih;)Z
    .locals 2

    invoke-static {p0}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/hay;->RETURN:Lg/hay;

    if-eq p0, v1, :cond_2

    sget-object v1, Lg/hay;->THROW:Lg/hay;

    if-eq p0, v1, :cond_2

    sget-object v1, Lg/hay;->BREAK:Lg/hay;

    if-eq p0, v1, :cond_2

    sget-object v1, Lg/hay;->CONTINUE:Lg/hay;

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static ai(Lg/hed;Lg/eek;)Lg/gsh;
    .locals 2

    sget-object v0, Lg/csv;->WRAPPED:Lg/csv;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    iget-object v0, v0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eek;

    invoke-static {v1, p1}, Lg/ffb;->au(Lg/eek;Lg/eek;)Lg/gsh;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static aj(Lg/fza;)Ljava/util/List;
    .locals 4

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lg/ffb;->ca(Lg/fza;)Lg/fza;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    iget-object v1, p0, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lg/ffb;->ca(Lg/fza;)Lg/fza;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static ak(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lg/ffb;->j:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lg/cnf;->v()Ljava/lang/Class;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sput-object v0, Lg/ffb;->j:Ljava/lang/reflect/Constructor;

    :cond_0
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/cnf;->u(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lg/cnf;->b(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    invoke-static {p0, p2}, Lg/cnf;->ac(Ljava/lang/invoke/MethodHandle;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    invoke-static {p0, p3}, Lg/cnf;->aa(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static al(Ljava/util/HashSet;Lg/fza;Lg/fza;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    if-eq v0, p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0, p2}, Lg/ffb;->al(Ljava/util/HashSet;Lg/fza;Lg/fza;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static am(Lg/hed;Ljava/util/BitSet;Ljava/util/function/Consumer;)V
    .locals 2

    sget-object v0, Lg/giu;->a:Lg/giu;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lg/hed;->ak:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static an(Lg/hed;Ljava/util/ArrayList;)Lg/fza;
    .locals 8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Lg/fov;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Lg/fov;-><init>(I)V

    new-instance v5, Lg/efe;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v3}, Lg/efe;-><init>(ILjava/util/ArrayList;)V

    invoke-static {p0, v2, v4, v5}, Lg/ffb;->ce(Lg/hed;Lg/fza;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lg/fov;

    const/16 v6, 0x13

    invoke-direct {v5, v6}, Lg/fov;-><init>(I)V

    new-instance v6, Lg/efe;

    const/4 v7, 0x4

    invoke-direct {v6, v7, v4}, Lg/efe;-><init>(ILjava/util/ArrayList;)V

    invoke-static {p0, v3, v5, v6}, Lg/ffb;->ce(Lg/hed;Lg/fza;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v1}, Lg/ffb;->ap(Ljava/util/List;Z)Lg/fza;

    move-result-object p0

    return-object p0
.end method

.method public static ao(Lg/fza;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lg/csv;->LOOP_START:Lg/csv;

    iget-object v2, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    sget-object v2, Lg/csv;->LOOP_END:Lg/csv;

    iget-object v4, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lg/acq;->at:Lg/acq;

    iget-object v4, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v2}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gcv;

    iget-object v5, v4, Lg/gcv;->c:Lg/fza;

    invoke-virtual {v5, p0}, Lg/fza;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, v4, Lg/gcv;->d:Lg/fza;

    invoke-virtual {v4, v1}, Lg/fza;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_2
    :goto_0
    return v0
.end method

.method public static ap(Ljava/util/List;Z)Lg/fza;
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/fza;

    return-object p0

    :cond_0
    if-nez p1, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    if-eq v1, v3, :cond_1

    invoke-virtual {v1, v3}, Lg/fza;->ae(Lg/fza;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    if-eqz p1, :cond_5

    if-eq v1, v3, :cond_4

    invoke-static {v3, v1}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_5
    if-eq v1, v3, :cond_4

    invoke-static {v3, v1}, Lg/ffb;->av(Lg/fza;Lg/fza;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_6
    return-object v1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static aq(Lg/hed;Ljava/util/List;)Lg/fza;
    .locals 8

    invoke-static {p0}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fza;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    iget v6, v5, Lg/fza;->x:I

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v5, v5, Lg/fza;->i:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lg/hed;->ad:Lg/fza;

    iget v1, v1, Lg/fza;->x:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0, v0}, Lg/ffb;->bv(Lg/hed;Ljava/util/BitSet;)Lg/fza;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    invoke-static {p0}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v1

    iget-object v4, p0, Lg/hed;->ad:Lg/fza;

    iget v4, v4, Lg/fza;->x:I

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v4, p0, Lg/hed;->ac:Ljava/util/List;

    new-instance v5, Lg/bgc;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lg/bgc;-><init>(Ljava/util/BitSet;I)V

    invoke-static {v4, v5}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    iget-object v4, p0, Lg/hed;->ap:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lg/hed;->ap:Ljava/util/List;

    new-instance v5, Lg/esv;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6, v1}, Lg/esv;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v4, v5}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    invoke-static {p0, v0}, Lg/ffb;->bv(Lg/hed;Ljava/util/BitSet;)Lg/fza;

    move-result-object v4

    if-eqz v4, :cond_5

    return-object v4

    :cond_5
    invoke-static {p0}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v4

    iget-object v5, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    new-instance v6, Lg/bgc;

    const/4 v7, 0x1

    invoke-direct {v6, v4, v7}, Lg/bgc;-><init>(Ljava/util/BitSet;I)V

    invoke-static {p0, v0, v6}, Lg/ffb;->am(Lg/hed;Ljava/util/BitSet;Ljava/util/function/Consumer;)V

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v6

    if-ne v6, v3, :cond_6

    invoke-static {p0, v4}, Lg/ffb;->bv(Lg/hed;Ljava/util/BitSet;)Lg/fza;

    move-result-object p0

    return-object p0

    :cond_6
    if-nez v6, :cond_7

    :goto_2
    return-object v2

    :cond_7
    add-int/lit8 v6, v5, -0x1

    if-gez v5, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Path cross not found for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", limit reached: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ebh;->bu(Ljava/lang/String;)V

    return-object v2

    :cond_8
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    invoke-virtual {v4}, Ljava/util/BitSet;->clear()V

    move v5, v6

    goto :goto_1
.end method

.method public static ar(Lg/fza;Lg/fza;)Z
    .locals 8

    iget-object v0, p0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iget-object v0, p1, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    iget-object v3, p1, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/fza;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lg/fza;->ac:Ljava/util/ArrayList;

    iget-object p1, p1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v0, v3, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/eek;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/eek;

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v5}, Lg/eek;->_p(Lg/eek;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v4, Lg/eek;->aj:Ljava/util/List;

    iget-object v7, v5, Lg/eek;->aj:Ljava/util/List;

    invoke-static {v6, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v4, v4, Lg/eek;->ai:Lg/gks;

    iget-object v5, v5, Lg/eek;->ai:Lg/gks;

    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget v4, v4, Lg/gks;->e:I

    iget v5, v5, Lg/gks;->e:I

    if-ne v4, v5, :cond_5

    goto :goto_2

    :cond_3
    :goto_1
    if-ne v4, v5, :cond_5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_3
    return v1
.end method

.method public static as()Ljava/util/concurrent/ExecutorService;
    .locals 4

    sget-object v0, Lg/ffb;->i:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    const-class v0, Lg/ffb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/ffb;->i:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v2, Lg/dew;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lg/dew;-><init>(I)V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lg/ffb;->i:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lg/ffb;->i:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static at(Lg/hed;Lg/fza;Lg/fza;Ljava/util/function/Consumer;)V
    .locals 4

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p0}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fza;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lg/fza;->z:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    if-ne v1, p2, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-static {v0, p3}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void

    :cond_5
    iget v2, v1, Lg/fza;->x:I

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    return-void
.end method

.method public static au(Lg/eek;Lg/eek;)Lg/gsh;
    .locals 3

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gsh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lg/cly;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lg/cly;

    iget-object v2, v2, Lg/cly;->a:Lg/eek;

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_1
    invoke-static {v2, p1}, Lg/ffb;->au(Lg/eek;Lg/eek;)Lg/gsh;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_2
    instance-of v0, p0, Lg/dwk;

    if-eqz v0, :cond_3

    check-cast p0, Lg/dwk;

    iget-object p0, p0, Lg/dwk;->a:Lg/eii;

    invoke-static {p0, p1}, Lg/ffb;->aw(Lg/eii;Lg/eek;)Lg/gsh;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static av(Lg/fza;Lg/fza;)Z
    .locals 3

    if-eq p0, p1, :cond_1

    invoke-virtual {p1, p0}, Lg/fza;->ae(Lg/fza;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    new-instance v1, Lg/bev;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lg/bev;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2, v1}, Lg/ffb;->n(Lg/fza;Lg/fza;Ljava/util/BitSet;ZLg/bev;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static aw(Lg/eii;Lg/eek;)Lg/gsh;
    .locals 1

    invoke-virtual {p0}, Lg/eii;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lg/eii;->c:Lg/evf;

    iget-object p0, p0, Lg/evf;->f:Ljava/lang/Object;

    check-cast p0, Lg/bgw;

    invoke-static {p0, p1}, Lg/ffb;->au(Lg/eek;Lg/eek;)Lg/gsh;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lg/eii;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eii;

    invoke-static {v0, p1}, Lg/ffb;->aw(Lg/eii;Lg/eek;)Lg/gsh;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ax(Lg/brh;)Z
    .locals 8

    iget-object v0, p0, Lg/brh;->ch:[Lg/fol;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iget-object v4, p0, Lg/brh;->bj:Lg/brh;

    if-eqz v4, :cond_0

    check-cast v4, Lg/aep;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    iget-object v5, v4, Lg/brh;->ch:[Lg/fol;

    aget-object v5, v5, v1

    sget-object v6, Lg/fol;->FIXED:Lg/fol;

    :cond_1
    if-eqz v4, :cond_2

    iget-object v4, v4, Lg/brh;->ch:[Lg/fol;

    aget-object v4, v4, v3

    sget-object v5, Lg/fol;->FIXED:Lg/fol;

    :cond_2
    sget-object v4, Lg/fol;->FIXED:Lg/fol;

    const/4 v5, 0x0

    if-eq v2, v4, :cond_5

    invoke-virtual {p0}, Lg/brh;->i()Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-eq v2, v6, :cond_5

    sget-object v6, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v2, v6, :cond_3

    iget v7, p0, Lg/brh;->da:I

    if-nez v7, :cond_3

    iget v7, p0, Lg/brh;->bq:F

    cmpl-float v7, v7, v5

    if-nez v7, :cond_3

    invoke-virtual {p0, v1}, Lg/brh;->ec(I)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_3
    if-ne v2, v6, :cond_4

    iget v2, p0, Lg/brh;->da:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lg/brh;->eb()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lg/brh;->dq(II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eq v0, v4, :cond_8

    invoke-virtual {p0}, Lg/brh;->e()Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-eq v0, v4, :cond_8

    sget-object v4, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v0, v4, :cond_6

    iget v6, p0, Lg/brh;->by:I

    if-nez v6, :cond_6

    iget v6, p0, Lg/brh;->bq:F

    cmpl-float v6, v6, v5

    if-nez v6, :cond_6

    invoke-virtual {p0, v3}, Lg/brh;->ec(I)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_6
    if-ne v0, v4, :cond_7

    iget v0, p0, Lg/brh;->by:I

    if-ne v0, v3, :cond_7

    invoke-virtual {p0}, Lg/brh;->di()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lg/brh;->dq(II)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v0, 0x1

    :goto_4
    iget p0, p0, Lg/brh;->bq:F

    cmpl-float p0, p0, v5

    if-lez p0, :cond_9

    if-nez v2, :cond_a

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    :cond_a
    :goto_5
    return v3

    :cond_b
    return v1
.end method

.method public static ay(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lg/aml;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    sget-object v0, Lg/dlo;->b:Lg/dlo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lg/dlo;->i:Landroid/view/View;

    if-ne v0, p0, :cond_1

    invoke-static {v1}, Lg/dlo;->m(Lg/dlo;)V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lg/dlo;->a:Lg/dlo;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lg/dlo;->i:Landroid/view/View;

    if-ne v0, p0, :cond_2

    invoke-virtual {p1}, Lg/dlo;->n()V

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void

    :cond_3
    new-instance v0, Lg/dlo;

    invoke-direct {v0, p0, p1}, Lg/dlo;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static az(Lg/fza;Ljava/lang/Boolean;Z)Lg/fza;
    .locals 2

    iget-object v0, p0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_5

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lg/fza;->e:Ljava/util/List;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object p0, p0, Lg/fza;->z:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lg/fza;->d:Ljava/util/List;

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-eq p1, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/fza;

    return-object p0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ba(Lg/fza;Ljava/lang/Boolean;Z)Lg/fza;
    .locals 1

    :goto_0
    invoke-static {p0, p1, p2}, Lg/ffb;->az(Lg/fza;Ljava/lang/Boolean;Z)Lg/fza;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static bb([Ljava/lang/String;ZJ)Lg/dsg;
    .locals 9

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance p0, Lg/dsg;

    invoke-direct {p0, v2, v1, v1}, Lg/dsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    if-eqz p1, :cond_1

    const-string p1, "su"

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object p1, v1

    move-object p3, p1

    :goto_0
    move-object v4, p3

    goto/16 :goto_18

    :catch_0
    move-exception p0

    move-object p1, v1

    move-object p2, p1

    move-object p3, p2

    :goto_1
    move-object v3, p3

    move-object v4, v3

    goto/16 :goto_d

    :catch_1
    move-exception p0

    move-object p1, v1

    move-object p2, p1

    move-object p3, p2

    :goto_2
    move-object v3, p3

    move-object v4, v3

    goto/16 :goto_12

    :cond_1
    const-string p1, "sh"

    :goto_3
    invoke-virtual {v3, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    array-length v4, p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v5, 0x0

    :goto_4
    const-string v6, "\n"

    if-ge v5, v4, :cond_3

    :try_start_3
    aget-object v7, p0, v5

    if-nez v7, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object p3, v1

    move-object v4, p3

    :goto_6
    move-object v1, v3

    goto/16 :goto_18

    :catch_2
    move-exception p0

    move-object p2, p1

    move-object p1, v1

    move-object p3, p1

    :goto_7
    move-object v4, p3

    goto/16 :goto_d

    :catch_3
    move-exception p0

    move-object p2, p1

    move-object p1, v1

    move-object p3, p1

    :goto_8
    move-object v4, p3

    goto/16 :goto_12

    :cond_3
    const-string p0, "exit\n"

    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    const-wide/16 v4, 0x0

    cmp-long p0, p2, v4

    if-gtz p0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    goto :goto_9

    :cond_4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt p0, v4, :cond_6

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, p3}, Lg/cnh;->ab(Ljava/lang/Process;J)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result v2

    goto :goto_9

    :cond_5
    const/4 v0, 0x1

    :cond_6
    :goto_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_a
    :try_start_6
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :catchall_2
    move-exception p0

    goto :goto_6

    :catch_4
    move-exception p2

    move-object v8, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v8

    goto/16 :goto_d

    :catch_5
    move-exception p2

    move-object v8, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v8

    goto/16 :goto_12

    :cond_7
    :goto_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_b

    :cond_8
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_c

    :catch_6
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_16

    :catchall_3
    move-exception p0

    move-object v4, v1

    goto/16 :goto_6

    :catch_7
    move-exception p2

    move-object v4, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v4

    move-object v4, v1

    goto :goto_d

    :catch_8
    move-exception p2

    move-object v4, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v4

    move-object v4, v1

    goto/16 :goto_12

    :catch_9
    move-exception p2

    move-object p3, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, p3

    move-object p3, v1

    goto/16 :goto_7

    :catch_a
    move-exception p2

    move-object p3, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, p3

    move-object p3, v1

    goto/16 :goto_8

    :catchall_4
    move-exception p0

    move-object p3, v1

    goto/16 :goto_0

    :catch_b
    move-exception p0

    move-object p2, p1

    move-object p1, v1

    move-object p3, p1

    goto/16 :goto_1

    :catch_c
    move-exception p0

    move-object p2, p1

    move-object p1, v1

    move-object p3, p1

    goto/16 :goto_2

    :goto_d
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v3, :cond_9

    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_e

    :catch_d
    move-exception p0

    goto :goto_f

    :cond_9
    :goto_e
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    goto :goto_10

    :goto_f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_10
    if-eqz p2, :cond_c

    :goto_11
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    :cond_c
    move-object p0, p1

    move-object p2, v5

    goto :goto_16

    :catchall_5
    move-exception p0

    move-object p1, p2

    goto/16 :goto_6

    :goto_12
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v3, :cond_d

    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_13

    :catch_e
    move-exception p0

    goto :goto_14

    :cond_d
    :goto_13
    if-eqz p3, :cond_e

    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V

    :cond_e
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e

    goto :goto_15

    :goto_14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_15
    if-eqz p2, :cond_c

    goto :goto_11

    :goto_16
    if-eqz v0, :cond_10

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_10

    const-string p1, "Timeout, possibly due to lack of permissions."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    new-instance p1, Lg/dsg;

    if-nez p0, :cond_11

    goto :goto_17

    :cond_11
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_17
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, v1, p0}, Lg/dsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1

    :goto_18
    if-eqz v1, :cond_12

    :try_start_c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_19

    :catch_f
    move-exception p2

    goto :goto_1a

    :cond_12
    :goto_19
    if-eqz p3, :cond_13

    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V

    :cond_13
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f

    goto :goto_1b

    :goto_1a
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_14
    :goto_1b
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_15
    throw p0
.end method

.method public static bc(Landroid/util/JsonReader;Lg/cgf;FLg/cce;Z)Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_0

    const-string p0, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, p0}, Lg/cgf;->t(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "k"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_2

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v8, p4

    invoke-static/range {v3 .. v8}, Lg/ht;->c(Landroid/util/JsonReader;Lg/cgf;FLg/cce;ZZ)Lg/flj;

    move-result-object p0

    move-object v1, v3

    move-object v2, v4

    move v3, v5

    move-object v4, v6

    move v6, v8

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    :goto_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v5, 0x1

    invoke-static/range {v1 .. v6}, Lg/ht;->c(Landroid/util/JsonReader;Lg/cgf;FLg/cce;ZZ)Lg/flj;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    move-object p0, v1

    move-object p1, v2

    move p2, v3

    move-object p3, v4

    move p4, v6

    goto :goto_0

    :cond_4
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lg/ht;->c(Landroid/util/JsonReader;Lg/cgf;FLg/cce;ZZ)Lg/flj;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v1

    goto :goto_0

    :cond_5
    move-object v1, p0

    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    invoke-static {v0}, Lg/ffb;->ae(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static bd(Lg/fza;)Z
    .locals 4

    sget-object v0, Lg/acq;->bh:Lg/acq;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->j(Lg/fky;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    sget-object v1, Lg/csv;->EXC_BOTTOM_SPLITTER:Lg/csv;

    iget-object v3, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lg/csv;->REMOVE:Lg/csv;

    iget-object v3, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lg/csv;->SYNTHETIC:Lg/csv;

    iget-object v3, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lg/fza;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/fza;

    iget-object p0, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {p0, v0}, Lg/sm;->j(Lg/fky;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v2
.end method

.method public static be(Lg/fza;)Lg/fza;
    .locals 3

    iget-object v0, p0, Lg/fza;->e:Ljava/util/List;

    sget-object v1, Lg/csv;->EXC_TOP_SPLITTER:Lg/csv;

    invoke-static {v0, v1}, Lg/ffb;->ag(Ljava/util/List;Lg/csv;)Lg/fza;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find top splitter block for handler:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final bf(III)I
    .locals 1

    if-lez p2, :cond_4

    if-lt p0, p1, :cond_0

    goto :goto_3

    :cond_0
    rem-int v0, p1, p2

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v0, p2

    :goto_0
    rem-int/2addr p0, p2

    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr p0, p2

    :goto_1
    sub-int/2addr v0, p0

    rem-int/2addr v0, p2

    if-ltz v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v0, p2

    :goto_2
    sub-int/2addr p1, v0

    return p1

    :cond_4
    if-gez p2, :cond_9

    if-gt p0, p1, :cond_5

    :goto_3
    return p1

    :cond_5
    neg-int p2, p2

    rem-int/2addr p0, p2

    if-ltz p0, :cond_6

    goto :goto_4

    :cond_6
    add-int/2addr p0, p2

    :goto_4
    rem-int v0, p1, p2

    if-ltz v0, :cond_7

    goto :goto_5

    :cond_7
    add-int/2addr v0, p2

    :goto_5
    sub-int/2addr p0, v0

    rem-int/2addr p0, p2

    if-ltz p0, :cond_8

    goto :goto_6

    :cond_8
    add-int/2addr p0, p2

    :goto_6
    add-int/2addr p0, p1

    return p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bg(Lg/hed;Lg/fza;Z)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p2, :cond_0

    new-instance p2, Lg/fov;

    const/16 v1, 0x8

    invoke-direct {p2, v1}, Lg/fov;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p2, Lg/gpn;

    const/16 v1, 0x13

    invoke-direct {p2, v1}, Lg/gpn;-><init>(I)V

    :goto_0
    new-instance v1, Lg/efe;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lg/efe;-><init>(ILjava/util/ArrayList;)V

    invoke-static {p0, p1, p2, v1}, Lg/ffb;->ce(Lg/hed;Lg/fza;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static bh(ILg/brh;Lg/gri;Lg/brh;Z)V
    .locals 7

    iget v0, p3, Lg/brh;->cp:F

    iget-object v1, p3, Lg/brh;->cw:Lg/hac;

    iget-object v2, v1, Lg/hac;->e:Lg/hac;

    invoke-virtual {v2}, Lg/hac;->l()I

    move-result v2

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p3, Lg/brh;->br:Lg/hac;

    iget-object v3, v2, Lg/hac;->e:Lg/hac;

    invoke-virtual {v3}, Lg/hac;->l()I

    move-result v3

    invoke-virtual {v2}, Lg/hac;->n()I

    move-result v2

    sub-int/2addr v3, v2

    if-lt v3, v1, :cond_4

    invoke-virtual {p3}, Lg/brh;->eb()I

    move-result v2

    iget v4, p3, Lg/brh;->aq:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p3, Lg/brh;->da:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v2, p1, Lg/aep;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lg/brh;->eb()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lg/brh;->bj:Lg/brh;

    invoke-virtual {p1}, Lg/brh;->eb()I

    move-result p1

    :goto_0
    iget v2, p3, Lg/brh;->cp:F

    mul-float v2, v2, v6

    int-to-float p1, p1

    mul-float v2, v2, p1

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v2, v3, v1

    :cond_2
    :goto_1
    iget p1, p3, Lg/brh;->bl:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p1, p3, Lg/brh;->bs:I

    if-lez p1, :cond_3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    int-to-float p1, v3

    mul-float v0, v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v1, p1

    add-int/2addr v2, v1

    invoke-virtual {p3, v1, v2}, Lg/brh;->dx(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p2, p3, p4}, Lg/ffb;->bk(ILg/gri;Lg/brh;Z)V

    :cond_4
    return-void
.end method

.method public static bi(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lg/dzz;->c:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbej;->zza:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    sget-object v0, Lg/dzz;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget-boolean v1, Lg/dzz;->d:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    new-instance v0, Lg/bbu;

    invoke-direct {v0, p0}, Lg/bbu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lg/bgf;->zzb()Lg/dcy;

    move-result-object p0

    const-string v0, "Updating ad debug logging enablement."

    invoke-static {v0}, Lg/agd;->k(Ljava/lang/String;)V

    const-string v0, "AdDebugLogUpdater.updateEnablement"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzcam;->zza(Lg/dcy;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void

    :catch_0
    sget-object p0, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    return-void
.end method

.method public static bj(Lg/hed;Ljava/util/BitSet;)Ljava/util/List;
    .locals 3

    if-eqz p1, :cond_3

    sget-object v0, Lg/giu;->a:Lg/giu;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v2, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static bk(ILg/gri;Lg/brh;Z)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    iget-boolean v3, v1, Lg/brh;->ca:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    instance-of v3, v1, Lg/aep;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lg/brh;->dg()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lg/ffb;->ax(Lg/brh;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lg/dcu;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v0, v3}, Lg/aep;->ac(Lg/brh;Lg/gri;Lg/dcu;)V

    :cond_1
    sget-object v3, Lg/dih;->LEFT:Lg/dih;

    invoke-virtual {v1, v3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v3

    sget-object v4, Lg/dih;->RIGHT:Lg/dih;

    invoke-virtual {v1, v4}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v4

    invoke-virtual {v3}, Lg/hac;->l()I

    move-result v5

    invoke-virtual {v4}, Lg/hac;->l()I

    move-result v6

    iget-object v7, v3, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v7, :cond_d

    iget-boolean v3, v3, Lg/hac;->h:Z

    if-eqz v3, :cond_d

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/hac;

    iget-object v12, v7, Lg/hac;->b:Lg/brh;

    add-int/lit8 v13, p0, 0x1

    invoke-static {v12}, Lg/ffb;->ax(Lg/brh;)Z

    move-result v14

    iget-object v15, v12, Lg/brh;->cw:Lg/hac;

    const/16 v16, 0x0

    iget-object v8, v12, Lg/brh;->br:Lg/hac;

    invoke-virtual {v12}, Lg/brh;->dg()Z

    move-result v17

    if-eqz v17, :cond_3

    if-eqz v14, :cond_3

    const/16 v17, 0x0

    new-instance v10, Lg/dcu;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-static {v12, v0, v10}, Lg/aep;->ac(Lg/brh;Lg/gri;Lg/dcu;)V

    goto :goto_1

    :cond_3
    const/16 v17, 0x0

    :goto_1
    if-ne v7, v15, :cond_4

    iget-object v10, v8, Lg/hac;->e:Lg/hac;

    if-eqz v10, :cond_4

    iget-boolean v10, v10, Lg/hac;->h:Z

    if-nez v10, :cond_5

    :cond_4
    if-ne v7, v8, :cond_6

    iget-object v10, v15, Lg/hac;->e:Lg/hac;

    if-eqz v10, :cond_6

    iget-boolean v10, v10, Lg/hac;->h:Z

    if-eqz v10, :cond_6

    :cond_5
    const/4 v10, 0x1

    :goto_2
    const/16 v18, 0x1

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    :goto_3
    iget-object v11, v12, Lg/brh;->ch:[Lg/fol;

    aget-object v11, v11, v17

    sget-object v9, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v11, v9, :cond_9

    if-eqz v14, :cond_7

    goto :goto_4

    :cond_7
    if-ne v11, v9, :cond_2

    iget v7, v12, Lg/brh;->bs:I

    if-ltz v7, :cond_2

    iget v7, v12, Lg/brh;->bl:I

    if-ltz v7, :cond_2

    iget v7, v12, Lg/brh;->aq:I

    const/16 v8, 0x8

    if-eq v7, v8, :cond_8

    iget v7, v12, Lg/brh;->da:I

    if-nez v7, :cond_2

    iget v7, v12, Lg/brh;->bq:F

    cmpl-float v7, v7, v16

    if-nez v7, :cond_2

    :cond_8
    invoke-virtual {v12}, Lg/brh;->eg()Z

    move-result v7

    if-nez v7, :cond_2

    iget-boolean v7, v12, Lg/brh;->cn:Z

    if-nez v7, :cond_2

    if-eqz v10, :cond_2

    invoke-virtual {v12}, Lg/brh;->eg()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v13, v1, v0, v12, v2}, Lg/ffb;->bh(ILg/brh;Lg/gri;Lg/brh;Z)V

    goto/16 :goto_0

    :cond_9
    :goto_4
    invoke-virtual {v12}, Lg/brh;->dg()Z

    move-result v9

    if-eqz v9, :cond_a

    goto/16 :goto_0

    :cond_a
    if-ne v7, v15, :cond_b

    iget-object v9, v8, Lg/hac;->e:Lg/hac;

    if-nez v9, :cond_b

    invoke-virtual {v15}, Lg/hac;->n()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v12}, Lg/brh;->eb()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v12, v7, v8}, Lg/brh;->dx(II)V

    invoke-static {v13, v0, v12, v2}, Lg/ffb;->bk(ILg/gri;Lg/brh;Z)V

    goto/16 :goto_0

    :cond_b
    if-ne v7, v8, :cond_c

    iget-object v7, v15, Lg/hac;->e:Lg/hac;

    if-nez v7, :cond_c

    invoke-virtual {v8}, Lg/hac;->n()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v12}, Lg/brh;->eb()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {v12, v8, v7}, Lg/brh;->dx(II)V

    invoke-static {v13, v0, v12, v2}, Lg/ffb;->bk(ILg/gri;Lg/brh;Z)V

    goto/16 :goto_0

    :cond_c
    if-eqz v10, :cond_2

    invoke-virtual {v12}, Lg/brh;->eg()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v13, v0, v12, v2}, Lg/ffb;->u(ILg/gri;Lg/brh;Z)V

    goto/16 :goto_0

    :cond_d
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    instance-of v3, v1, Lg/aar;

    if-eqz v3, :cond_e

    return-void

    :cond_e
    iget-object v3, v4, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v3, :cond_1b

    iget-boolean v4, v4, Lg/hac;->h:Z

    if-eqz v4, :cond_1b

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/hac;

    iget-object v5, v4, Lg/hac;->b:Lg/brh;

    add-int/lit8 v11, p0, 0x1

    invoke-static {v5}, Lg/ffb;->ax(Lg/brh;)Z

    move-result v7

    iget-object v8, v5, Lg/brh;->cw:Lg/hac;

    iget-object v9, v5, Lg/brh;->br:Lg/hac;

    invoke-virtual {v5}, Lg/brh;->dg()Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v7, :cond_10

    new-instance v10, Lg/dcu;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-static {v5, v0, v10}, Lg/aep;->ac(Lg/brh;Lg/gri;Lg/dcu;)V

    :cond_10
    if-ne v4, v8, :cond_11

    iget-object v10, v9, Lg/hac;->e:Lg/hac;

    if-eqz v10, :cond_11

    iget-boolean v10, v10, Lg/hac;->h:Z

    if-nez v10, :cond_12

    :cond_11
    if-ne v4, v9, :cond_13

    iget-object v10, v8, Lg/hac;->e:Lg/hac;

    if-eqz v10, :cond_13

    iget-boolean v10, v10, Lg/hac;->h:Z

    if-eqz v10, :cond_13

    :cond_12
    const/4 v10, 0x1

    goto :goto_6

    :cond_13
    const/4 v10, 0x0

    :goto_6
    iget-object v12, v5, Lg/brh;->ch:[Lg/fol;

    aget-object v12, v12, v17

    sget-object v13, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v12, v13, :cond_14

    if-eqz v7, :cond_15

    :cond_14
    const/16 v7, 0x8

    goto :goto_7

    :cond_15
    if-ne v12, v13, :cond_17

    iget v4, v5, Lg/brh;->bs:I

    if-ltz v4, :cond_17

    iget v4, v5, Lg/brh;->bl:I

    if-ltz v4, :cond_17

    iget v4, v5, Lg/brh;->aq:I

    const/16 v7, 0x8

    if-eq v4, v7, :cond_16

    iget v4, v5, Lg/brh;->da:I

    if-nez v4, :cond_f

    iget v4, v5, Lg/brh;->bq:F

    cmpl-float v4, v4, v16

    if-nez v4, :cond_f

    :cond_16
    invoke-virtual {v5}, Lg/brh;->eg()Z

    move-result v4

    if-nez v4, :cond_f

    iget-boolean v4, v5, Lg/brh;->cn:Z

    if-nez v4, :cond_f

    if-eqz v10, :cond_f

    invoke-virtual {v5}, Lg/brh;->eg()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v11, v1, v0, v5, v2}, Lg/ffb;->bh(ILg/brh;Lg/gri;Lg/brh;Z)V

    goto :goto_5

    :cond_17
    const/16 v7, 0x8

    goto :goto_5

    :goto_7
    invoke-virtual {v5}, Lg/brh;->dg()Z

    move-result v12

    if-eqz v12, :cond_18

    goto/16 :goto_5

    :cond_18
    if-ne v4, v8, :cond_19

    iget-object v12, v9, Lg/hac;->e:Lg/hac;

    if-nez v12, :cond_19

    invoke-virtual {v8}, Lg/hac;->n()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v5, v4, v8}, Lg/brh;->dx(II)V

    invoke-static {v11, v0, v5, v2}, Lg/ffb;->bk(ILg/gri;Lg/brh;Z)V

    goto/16 :goto_5

    :cond_19
    if-ne v4, v9, :cond_1a

    iget-object v4, v8, Lg/hac;->e:Lg/hac;

    if-nez v4, :cond_1a

    invoke-virtual {v9}, Lg/hac;->n()I

    move-result v4

    sub-int v4, v6, v4

    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v5, v8, v4}, Lg/brh;->dx(II)V

    invoke-static {v11, v0, v5, v2}, Lg/ffb;->bk(ILg/gri;Lg/brh;Z)V

    goto/16 :goto_5

    :cond_1a
    if-eqz v10, :cond_f

    invoke-virtual {v5}, Lg/brh;->eg()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v11, v0, v5, v2}, Lg/ffb;->u(ILg/gri;Lg/brh;Z)V

    goto/16 :goto_5

    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, v1, Lg/brh;->ca:Z

    return-void
.end method

.method public static bl(ILg/brh;Lg/gri;Lg/brh;)V
    .locals 7

    iget v0, p3, Lg/brh;->ct:F

    iget-object v1, p3, Lg/brh;->bx:Lg/hac;

    iget-object v2, v1, Lg/hac;->e:Lg/hac;

    invoke-virtual {v2}, Lg/hac;->l()I

    move-result v2

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p3, Lg/brh;->as:Lg/hac;

    iget-object v3, v2, Lg/hac;->e:Lg/hac;

    invoke-virtual {v3}, Lg/hac;->l()I

    move-result v3

    invoke-virtual {v2}, Lg/hac;->n()I

    move-result v2

    sub-int/2addr v3, v2

    if-lt v3, v1, :cond_4

    invoke-virtual {p3}, Lg/brh;->di()I

    move-result v2

    iget v4, p3, Lg/brh;->aq:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p3, Lg/brh;->by:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v2, p1, Lg/aep;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lg/brh;->di()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lg/brh;->bj:Lg/brh;

    invoke-virtual {p1}, Lg/brh;->di()I

    move-result p1

    :goto_0
    mul-float v2, v0, v6

    int-to-float p1, p1

    mul-float v2, v2, p1

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v2, v3, v1

    :cond_2
    :goto_1
    iget p1, p3, Lg/brh;->cy:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p1, p3, Lg/brh;->aw:I

    if-lez p1, :cond_3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    int-to-float p1, v3

    mul-float v0, v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v1, p1

    add-int/2addr v2, v1

    invoke-virtual {p3, v1, v2}, Lg/brh;->dt(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p2, p3}, Lg/ffb;->bt(ILg/gri;Lg/brh;)V

    :cond_4
    return-void
.end method

.method public static bm(Ljava/util/ArrayList;Lg/fza;ZLjava/util/function/Predicate;)V
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p1, Lg/fza;->z:Ljava/util/List;

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lg/fza;->d:Ljava/util/List;

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    invoke-static {p0, v0, p2, p3}, Lg/ffb;->bm(Ljava/util/ArrayList;Lg/fza;ZLjava/util/function/Predicate;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public static bn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, " tt-/"

    invoke-static {}, Lg/byh;->bc()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "datetrinea"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "tt-"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lg/acw;->af(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/footprint.txt"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lg/dlb;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lg/buj;->ag(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static bo(ILjava/lang/Iterable;)Lg/fza;
    .locals 3

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    iget v2, v1, Lg/fza;->y:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find block by offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in list "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bp(Ljava/util/LinkedList;Lg/fza;Ljava/util/List;Ljava/util/HashSet;)V
    .locals 3

    iget-object v0, p1, Lg/fza;->e:Ljava/util/List;

    new-instance v1, Lg/btn;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lg/btn;-><init>(ILjava/util/List;)V

    invoke-static {v0, v1}, Lg/acw;->bn(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0, p1, p2, p3}, Lg/ffb;->bp(Ljava/util/LinkedList;Lg/fza;Ljava/util/List;Ljava/util/HashSet;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object p1, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static bq(Lg/cih;)Lg/eek;
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lg/cih;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/eek;

    return-object p0
.end method

.method public static br(Lg/hed;Lg/fza;Lg/fza;)Lg/fza;
    .locals 7

    iget-object p1, p1, Lg/fza;->e:Ljava/util/List;

    new-instance v0, Lg/fon;

    invoke-direct {v0, p0}, Lg/fon;-><init>(Lg/hed;)V

    new-instance v1, Lg/agx;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    iget p1, p2, Lg/fza;->x:I

    iget-object v0, v0, Lg/fon;->b:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v1, Ljava/util/BitSet;

    iget-object p0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v1, p0}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget p0, p2, Lg/fza;->x:I

    invoke-virtual {v1, p0}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/fza;

    const/4 p2, 0x0

    if-nez p0, :cond_2

    move-object p0, p2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    iget v5, v4, Lg/fza;->x:I

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    if-nez v6, :cond_3

    invoke-virtual {p1, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-nez p0, :cond_5

    return-object p2

    :cond_5
    iget p2, p0, Lg/fza;->x:I

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p0
.end method

.method public static bs(Lg/hed;Lg/fza;ILg/eek;)V
    .locals 2

    iget-object v0, p1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eek;

    invoke-virtual {p3, v0}, Lg/lh;->s(Lg/lh;)V

    invoke-virtual {p3, v0}, Lg/ccm;->br(Lg/eek;)V

    invoke-virtual {p3, v0}, Lg/eek;->au(Lg/eek;)V

    iget v1, v0, Lg/eek;->ag:I

    iput v1, p3, Lg/eek;->ag:I

    iget-object p1, p1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p3, Lg/eek;->ai:Lg/gks;

    iget-object p2, v0, Lg/eek;->ai:Lg/gks;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lg/gks;->x(Lg/gsh;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, v0}, Lg/fpd;->q(Lg/hed;Lg/eek;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    :goto_0
    invoke-virtual {p3}, Lg/eek;->_bs()V

    return-void
.end method

.method public static bt(ILg/gri;Lg/brh;)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-boolean v2, v1, Lg/brh;->bd:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    instance-of v2, v1, Lg/aep;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lg/brh;->dg()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lg/ffb;->ax(Lg/brh;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lg/dcu;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v0, v2}, Lg/aep;->ac(Lg/brh;Lg/gri;Lg/dcu;)V

    :cond_1
    sget-object v2, Lg/dih;->TOP:Lg/dih;

    invoke-virtual {v1, v2}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v2

    sget-object v3, Lg/dih;->BOTTOM:Lg/dih;

    invoke-virtual {v1, v3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v3

    invoke-virtual {v2}, Lg/hac;->l()I

    move-result v4

    invoke-virtual {v3}, Lg/hac;->l()I

    move-result v5

    iget-object v6, v2, Lg/hac;->d:Ljava/util/HashSet;

    const/16 v8, 0x8

    const/4 v10, 0x1

    if-eqz v6, :cond_d

    iget-boolean v2, v2, Lg/hac;->h:Z

    if-eqz v2, :cond_d

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/hac;

    iget-object v11, v6, Lg/hac;->b:Lg/brh;

    add-int/lit8 v12, p0, 0x1

    invoke-static {v11}, Lg/ffb;->ax(Lg/brh;)Z

    move-result v13

    iget-object v14, v11, Lg/brh;->bx:Lg/hac;

    iget-object v15, v11, Lg/brh;->as:Lg/hac;

    invoke-virtual {v11}, Lg/brh;->dg()Z

    move-result v16

    if-eqz v16, :cond_2

    if-eqz v13, :cond_2

    const/16 v16, 0x0

    new-instance v7, Lg/dcu;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-static {v11, v0, v7}, Lg/aep;->ac(Lg/brh;Lg/gri;Lg/dcu;)V

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    :goto_1
    if-ne v6, v14, :cond_3

    iget-object v7, v15, Lg/hac;->e:Lg/hac;

    if-eqz v7, :cond_3

    iget-boolean v7, v7, Lg/hac;->h:Z

    if-nez v7, :cond_4

    :cond_3
    if-ne v6, v15, :cond_5

    iget-object v7, v14, Lg/hac;->e:Lg/hac;

    if-eqz v7, :cond_5

    iget-boolean v7, v7, Lg/hac;->h:Z

    if-eqz v7, :cond_5

    :cond_4
    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    iget-object v9, v11, Lg/brh;->ch:[Lg/fol;

    aget-object v9, v9, v10

    const/16 v17, 0x1

    sget-object v10, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v9, v10, :cond_8

    if-eqz v13, :cond_6

    goto :goto_3

    :cond_6
    if-ne v9, v10, :cond_9

    iget v6, v11, Lg/brh;->aw:I

    if-ltz v6, :cond_9

    iget v6, v11, Lg/brh;->cy:I

    if-ltz v6, :cond_9

    iget v6, v11, Lg/brh;->aq:I

    if-eq v6, v8, :cond_7

    iget v6, v11, Lg/brh;->by:I

    if-nez v6, :cond_9

    iget v6, v11, Lg/brh;->bq:F

    cmpl-float v6, v6, v16

    if-nez v6, :cond_9

    :cond_7
    invoke-virtual {v11}, Lg/brh;->dk()Z

    move-result v6

    if-nez v6, :cond_9

    iget-boolean v6, v11, Lg/brh;->cn:Z

    if-nez v6, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v11}, Lg/brh;->dk()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {v12, v1, v0, v11}, Lg/ffb;->bl(ILg/brh;Lg/gri;Lg/brh;)V

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {v11}, Lg/brh;->dg()Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    :goto_4
    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_a
    if-ne v6, v14, :cond_b

    iget-object v9, v15, Lg/hac;->e:Lg/hac;

    if-nez v9, :cond_b

    invoke-virtual {v14}, Lg/hac;->n()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v11}, Lg/brh;->di()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v11, v6, v7}, Lg/brh;->dt(II)V

    invoke-static {v12, v0, v11}, Lg/ffb;->bt(ILg/gri;Lg/brh;)V

    goto :goto_4

    :cond_b
    if-ne v6, v15, :cond_c

    iget-object v6, v14, Lg/hac;->e:Lg/hac;

    if-nez v6, :cond_c

    invoke-virtual {v15}, Lg/hac;->n()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {v11}, Lg/brh;->di()I

    move-result v7

    sub-int v7, v6, v7

    invoke-virtual {v11, v7, v6}, Lg/brh;->dt(II)V

    invoke-static {v12, v0, v11}, Lg/ffb;->bt(ILg/gri;Lg/brh;)V

    goto :goto_4

    :cond_c
    if-eqz v7, :cond_9

    invoke-virtual {v11}, Lg/brh;->dk()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {v12, v0, v11}, Lg/ffb;->aa(ILg/gri;Lg/brh;)V

    goto :goto_4

    :cond_d
    const/16 v16, 0x0

    const/16 v17, 0x1

    instance-of v2, v1, Lg/aar;

    if-eqz v2, :cond_e

    return-void

    :cond_e
    iget-object v2, v3, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v2, :cond_1a

    iget-boolean v3, v3, Lg/hac;->h:Z

    if-eqz v3, :cond_1a

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/hac;

    iget-object v4, v3, Lg/hac;->b:Lg/brh;

    add-int/lit8 v6, p0, 0x1

    invoke-static {v4}, Lg/ffb;->ax(Lg/brh;)Z

    move-result v7

    iget-object v9, v4, Lg/brh;->bx:Lg/hac;

    iget-object v10, v4, Lg/brh;->as:Lg/hac;

    invoke-virtual {v4}, Lg/brh;->dg()Z

    move-result v11

    if-eqz v11, :cond_10

    if-eqz v7, :cond_10

    new-instance v11, Lg/dcu;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-static {v4, v0, v11}, Lg/aep;->ac(Lg/brh;Lg/gri;Lg/dcu;)V

    :cond_10
    if-ne v3, v9, :cond_11

    iget-object v11, v10, Lg/hac;->e:Lg/hac;

    if-eqz v11, :cond_11

    iget-boolean v11, v11, Lg/hac;->h:Z

    if-nez v11, :cond_12

    :cond_11
    if-ne v3, v10, :cond_13

    iget-object v11, v9, Lg/hac;->e:Lg/hac;

    if-eqz v11, :cond_13

    iget-boolean v11, v11, Lg/hac;->h:Z

    if-eqz v11, :cond_13

    :cond_12
    const/4 v11, 0x1

    goto :goto_6

    :cond_13
    const/4 v11, 0x0

    :goto_6
    iget-object v12, v4, Lg/brh;->ch:[Lg/fol;

    aget-object v12, v12, v17

    sget-object v13, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v12, v13, :cond_16

    if-eqz v7, :cond_14

    goto :goto_7

    :cond_14
    if-ne v12, v13, :cond_f

    iget v3, v4, Lg/brh;->aw:I

    if-ltz v3, :cond_f

    iget v3, v4, Lg/brh;->cy:I

    if-ltz v3, :cond_f

    iget v3, v4, Lg/brh;->aq:I

    if-eq v3, v8, :cond_15

    iget v3, v4, Lg/brh;->by:I

    if-nez v3, :cond_f

    iget v3, v4, Lg/brh;->bq:F

    cmpl-float v3, v3, v16

    if-nez v3, :cond_f

    :cond_15
    invoke-virtual {v4}, Lg/brh;->dk()Z

    move-result v3

    if-nez v3, :cond_f

    iget-boolean v3, v4, Lg/brh;->cn:Z

    if-nez v3, :cond_f

    if-eqz v11, :cond_f

    invoke-virtual {v4}, Lg/brh;->dk()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {v6, v1, v0, v4}, Lg/ffb;->bl(ILg/brh;Lg/gri;Lg/brh;)V

    goto :goto_5

    :cond_16
    :goto_7
    invoke-virtual {v4}, Lg/brh;->dg()Z

    move-result v7

    if-eqz v7, :cond_17

    goto :goto_5

    :cond_17
    if-ne v3, v9, :cond_18

    iget-object v7, v10, Lg/hac;->e:Lg/hac;

    if-nez v7, :cond_18

    invoke-virtual {v9}, Lg/hac;->n()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v4}, Lg/brh;->di()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v4, v3, v7}, Lg/brh;->dt(II)V

    invoke-static {v6, v0, v4}, Lg/ffb;->bt(ILg/gri;Lg/brh;)V

    goto/16 :goto_5

    :cond_18
    if-ne v3, v10, :cond_19

    iget-object v3, v9, Lg/hac;->e:Lg/hac;

    if-nez v3, :cond_19

    invoke-virtual {v10}, Lg/hac;->n()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {v4}, Lg/brh;->di()I

    move-result v7

    sub-int v7, v3, v7

    invoke-virtual {v4, v7, v3}, Lg/brh;->dt(II)V

    invoke-static {v6, v0, v4}, Lg/ffb;->bt(ILg/gri;Lg/brh;)V

    goto/16 :goto_5

    :cond_19
    if-eqz v11, :cond_f

    invoke-virtual {v4}, Lg/brh;->dk()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {v6, v0, v4}, Lg/ffb;->aa(ILg/gri;Lg/brh;)V

    goto/16 :goto_5

    :cond_1a
    sget-object v2, Lg/dih;->BASELINE:Lg/dih;

    invoke-virtual {v1, v2}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v2

    iget-object v3, v2, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v3, :cond_20

    iget-boolean v3, v2, Lg/hac;->h:Z

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Lg/hac;->l()I

    move-result v3

    iget-object v2, v2, Lg/hac;->d:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/hac;

    iget-object v5, v4, Lg/hac;->b:Lg/brh;

    add-int/lit8 v10, p0, 0x1

    invoke-static {v5}, Lg/ffb;->ax(Lg/brh;)Z

    move-result v6

    iget-object v7, v5, Lg/brh;->bp:Lg/hac;

    invoke-virtual {v5}, Lg/brh;->dg()Z

    move-result v8

    if-eqz v8, :cond_1b

    if-eqz v6, :cond_1b

    new-instance v8, Lg/dcu;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-static {v5, v0, v8}, Lg/aep;->ac(Lg/brh;Lg/gri;Lg/dcu;)V

    :cond_1b
    iget-object v8, v5, Lg/brh;->ch:[Lg/fol;

    aget-object v8, v8, v17

    sget-object v9, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v8, v9, :cond_1c

    if-eqz v6, :cond_1f

    :cond_1c
    invoke-virtual {v5}, Lg/brh;->dg()Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_8

    :cond_1d
    if-ne v4, v7, :cond_1f

    invoke-virtual {v4}, Lg/hac;->n()I

    move-result v4

    add-int/2addr v4, v3

    iget-boolean v6, v5, Lg/brh;->cx:Z

    if-nez v6, :cond_1e

    goto :goto_9

    :cond_1e
    iget v6, v5, Lg/brh;->bn:I

    sub-int v6, v4, v6

    iget v8, v5, Lg/brh;->bt:I

    add-int/2addr v8, v6

    iput v6, v5, Lg/brh;->cb:I

    iget-object v9, v5, Lg/brh;->bx:Lg/hac;

    invoke-virtual {v9, v6}, Lg/hac;->m(I)V

    iget-object v6, v5, Lg/brh;->as:Lg/hac;

    invoke-virtual {v6, v8}, Lg/hac;->m(I)V

    invoke-virtual {v7, v4}, Lg/hac;->m(I)V

    const/4 v4, 0x1

    iput-boolean v4, v5, Lg/brh;->bg:Z

    :goto_9
    :try_start_0
    invoke-static {v10, v0, v5}, Lg/ffb;->bt(ILg/gri;Lg/brh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    throw v0

    :cond_1f
    :goto_a
    const/16 v17, 0x1

    goto :goto_8

    :cond_20
    const/4 v4, 0x1

    iput-boolean v4, v1, Lg/brh;->bd:Z

    return-void
.end method

.method public static bu(Lg/hed;Lg/aea;)Lg/fza;
    .locals 9

    iget-object v0, p1, Lg/aea;->i:Lg/fza;

    invoke-static {v0}, Lg/ffb;->be(Lg/fza;)Lg/fza;

    move-result-object v1

    iget-object p1, p1, Lg/aea;->j:Lg/guv;

    iget-object p1, p1, Lg/guv;->i:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v0, Lg/fza;->i:Ljava/util/BitSet;

    invoke-static {p0, v0}, Lg/ffb;->bj(Lg/hed;Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    iget v4, v3, Lg/fza;->x:I

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget v4, v3, Lg/fza;->x:I

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v4, v3, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/fza;

    invoke-static {p1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lg/dxx;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8}, Lg/dxx;-><init>(Lg/fza;I)V

    invoke-interface {v6, v7}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v1, v5}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lg/hed;->ad:Lg/fza;

    if-eq v3, v5, :cond_1

    return-object v3

    :cond_2
    iget-object v3, v3, Lg/fza;->i:Ljava/util/BitSet;

    invoke-static {p0, v3}, Lg/ffb;->bj(Lg/hed;Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bv(Lg/hed;Ljava/util/BitSet;)Lg/fza;
    .locals 2

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lg/hed;->ak:Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/fza;

    return-object p0
.end method

.method public static bw(Lg/hed;Lg/fza;Lg/eek;Lg/eek;)Z
    .locals 5

    iget-object v0, p1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/eek;

    if-ne v4, p2, :cond_0

    invoke-static {p0, p1, v3, p3}, Lg/ffb;->bs(Lg/hed;Lg/fza;ILg/eek;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static bx(Lg/fza;)Lg/fza;
    .locals 2

    sget-object v0, Lg/csv;->SYNTHETIC:Lg/csv;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lg/fza;->e:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/fza;

    :cond_0
    return-object p0
.end method

.method public static by(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v1, 0x64

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v4

    add-float/2addr v4, v1

    add-float/2addr v4, v3

    float-to-int v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method public static bz(Lg/fza;Lg/fza;)Z
    .locals 5

    sget-object v0, Lg/csv;->RETURN:Lg/csv;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lg/fza;->ac:Ljava/util/ArrayList;

    iget-object p1, p1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/eek;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/eek;

    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p1, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {p1, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    invoke-virtual {v0}, Lg/gsh;->am()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lg/gsh;->am()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_5

    :goto_1
    return v1

    :cond_5
    iget p0, p0, Lg/ccm;->bp:I

    iget p1, p1, Lg/ccm;->bp:I

    if-eq p0, p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    :goto_2
    return v2
.end method

.method public static ca(Lg/fza;)Lg/fza;
    .locals 1

    iget-object p0, p0, Lg/fza;->z:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/fza;

    return-object p0
.end method

.method public static cb(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lg/id;->w(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    sget-boolean v0, Lg/ffb;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/widget/CompoundButton;

    const-string v2, "mButtonDrawable"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lg/ffb;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-boolean v0, Lg/ffb;->h:Z

    :cond_1
    sget-object v0, Lg/ffb;->g:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    sput-object v1, Lg/ffb;->g:Ljava/lang/reflect/Field;

    :cond_2
    return-object v1
.end method

.method public static final cc(Ljava/util/concurrent/Executor;)Lg/cpk;
    .locals 1

    instance-of v0, p0, Lg/gsm;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lg/gsm;

    :cond_0
    new-instance v0, Lg/cxj;

    invoke-direct {v0, p0}, Lg/cxj;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static cd(Lg/cih;Lg/hay;)Z
    .locals 0

    invoke-static {p0}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lg/eek;->ah:Lg/hay;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ce(Lg/hed;Lg/fza;Ljava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v1, Ljava/util/BitSet;

    iget-object p0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v1, p0}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget p0, p1, Lg/fza;->x:I

    invoke-virtual {v1, p0}, Ljava/util/BitSet;->set(I)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/fza;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_2

    :cond_0
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    iget v4, v3, Lg/fza;->x:I

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    if-nez v5, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static cf(Lg/fza;)Lg/fza;
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lg/ffb;->ba(Lg/fza;Ljava/lang/Boolean;Z)Lg/fza;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic cg(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, p1, :cond_1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public static ch(Lg/fza;Lg/fza;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Lg/ffb;->bz(Lg/fza;Lg/fza;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Lg/ffb;->cf(Lg/fza;)Lg/fza;

    move-result-object v2

    invoke-static {p1}, Lg/ffb;->cf(Lg/fza;)Lg/fza;

    move-result-object v3

    if-eq v2, v3, :cond_4

    invoke-static {v2, v3}, Lg/ffb;->bz(Lg/fza;Lg/fza;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lg/ffb;->ar(Lg/fza;Lg/fza;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public static ci(Lg/hed;Lg/fza;Ljava/util/function/Predicate;)V
    .locals 4

    invoke-static {p0}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fza;

    if-eqz p1, :cond_3

    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lg/fza;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    iget v2, v1, Lg/fza;->x:I

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static n(Lg/fza;Lg/fza;Ljava/util/BitSet;ZLg/bev;)Z
    .locals 4

    if-eqz p3, :cond_0

    iget-object v0, p0, Lg/fza;->z:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/fza;->d:Ljava/util/List;

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    if-ne v1, p1, :cond_2

    goto :goto_2

    :cond_2
    if-ne v1, p0, :cond_3

    goto :goto_1

    :cond_3
    iget v2, v1, Lg/fza;->x:I

    invoke-virtual {p2, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v2, p1, Lg/fza;->g:Ljava/util/BitSet;

    iget v3, v1, Lg/fza;->x:I

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v1, p1, p2, p3, p4}, Lg/ffb;->n(Lg/fza;Lg/fza;Ljava/util/BitSet;ZLg/bev;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;
    .locals 2

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lg/abi;

    if-eqz v0, :cond_3

    check-cast p1, Lg/abi;

    iget-object p0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/fza;

    sget-object v0, Lg/acq;->am:Lg/acq;

    iget-object v1, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/czc;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lg/czc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/abi;

    if-ne v1, p1, :cond_2

    return-object p2

    :cond_3
    sget-object v0, Lg/csv;->WRAPPED:Lg/csv;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/fza;

    iget-object v0, p2, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eek;

    if-eq v1, p1, :cond_6

    invoke-static {v1, p1}, Lg/ffb;->au(Lg/eek;Lg/eek;)Lg/gsh;

    move-result-object v1

    if-eqz v1, :cond_5

    :cond_6
    return-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/fza;

    invoke-static {p2, p1}, Lg/ffb;->af(Lg/fza;Lg/eek;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object p2

    :cond_9
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p(III)V
    .locals 4

    const-string v0, "fromIndex: "

    if-ltz p0, :cond_1

    if-gt p1, p2, :cond_1

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v1, " > toIndex: "

    invoke-static {p0, p1, v0, v1}, Lg/tn;->t(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, ", toIndex: "

    const-string v3, ", size: "

    invoke-static {p0, p1, v0, v2, v3}, Lg/awf;->z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static q(Lg/fza;Lg/fza;Ljava/util/AbstractCollection;Ljava/util/BitSet;Z)V
    .locals 3

    iget v0, p1, Lg/fza;->x:I

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p1, Lg/fza;->x:I

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->set(I)V

    if-eqz p4, :cond_1

    iget-object p1, p1, Lg/fza;->d:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lg/fza;->z:Ljava/util/List;

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    iget-object v1, v0, Lg/fza;->g:Ljava/util/BitSet;

    iget v2, p0, Lg/fza;->x:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0, p2, p3, p4}, Lg/ffb;->q(Lg/fza;Lg/fza;Ljava/util/AbstractCollection;Ljava/util/BitSet;Z)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public static r(Ljava/util/List;Lg/fza;)Lg/fza;
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    invoke-static {v2}, Lg/ffb;->bd(Lg/fza;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p0, v0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    if-eq v0, p1, :cond_3

    return-object v0

    :cond_3
    const/4 p1, 0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/fza;

    return-object p0

    :cond_4
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect nodes count for selectOther: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static s(Lg/cih;)Lg/eek;
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lg/cih;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lg/awf;->q(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/eek;

    return-object p0
.end method

.method public static t(Lg/hed;)Lg/eek;
    .locals 5

    iget-boolean v0, p0, Lg/hed;->ar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v0, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fza;

    iget-object v2, v2, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    :goto_1
    return-object v1

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eek;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static u(ILg/gri;Lg/brh;Z)V
    .locals 6

    iget v0, p2, Lg/brh;->cp:F

    iget-object v1, p2, Lg/brh;->cw:Lg/hac;

    iget-object v2, v1, Lg/hac;->e:Lg/hac;

    invoke-virtual {v2}, Lg/hac;->l()I

    move-result v2

    iget-object v3, p2, Lg/brh;->br:Lg/hac;

    iget-object v4, v3, Lg/hac;->e:Lg/hac;

    invoke-virtual {v4}, Lg/hac;->l()I

    move-result v4

    invoke-virtual {v1}, Lg/hac;->n()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3}, Lg/hac;->n()I

    move-result v3

    sub-int v3, v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v2, v4, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    move v2, v1

    move v4, v3

    :goto_0
    invoke-virtual {p2}, Lg/brh;->eb()I

    move-result v1

    sub-int v3, v4, v2

    sub-int/2addr v3, v1

    if-le v2, v4, :cond_1

    sub-int v3, v2, v4

    sub-int/2addr v3, v1

    :cond_1
    if-lez v3, :cond_2

    int-to-float v3, v3

    mul-float v0, v0, v3

    add-float/2addr v0, v5

    :goto_1
    float-to-int v0, v0

    goto :goto_2

    :cond_2
    int-to-float v3, v3

    mul-float v0, v0, v3

    goto :goto_1

    :goto_2
    add-int/2addr v0, v2

    add-int v3, v0, v1

    if-le v2, v4, :cond_3

    sub-int v3, v0, v1

    :cond_3
    invoke-virtual {p2, v0, v3}, Lg/brh;->dx(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1, p2, p3}, Lg/ffb;->bk(ILg/gri;Lg/brh;Z)V

    return-void
.end method

.method public static v(Lg/hed;)Ljava/util/BitSet;
    .locals 1

    new-instance v0, Ljava/util/BitSet;

    iget-object p0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/BitSet;-><init>(I)V

    return-object v0
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, p1, :cond_1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public static x(Lg/fza;Lg/fza;)Ljava/util/HashSet;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eq p0, p1, :cond_0

    invoke-static {v0, p1, p0}, Lg/ffb;->al(Ljava/util/HashSet;Lg/fza;Lg/fza;)V

    :cond_0
    return-object v0
.end method

.method public static y(Ljava/util/List;)Lg/fza;
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/fza;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    if-eq v1, v3, :cond_1

    invoke-static {v1, v3}, Lg/ffb;->av(Lg/fza;Lg/fza;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static z(Lg/hed;Lg/fza;Lg/fza;)Lg/fza;
    .locals 2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Lg/fza;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lg/ffb;->aq(Lg/hed;Ljava/util/List;)Lg/fza;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

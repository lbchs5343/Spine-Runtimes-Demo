.class public abstract Lg/lh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/epk;


# static fields
.field public static final k:Lg/gxb;


# instance fields
.field public l:Lg/sm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lg/gxb;->m:Lg/gxb;

    sput-object v0, Lg/lh;->k:Lg/gxb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg/lh;->k:Lg/gxb;

    iput-object v0, p0, Lg/lh;->l:Lg/sm;

    return-void
.end method


# virtual methods
.method public final m(Lg/eue;)V
    .locals 3

    invoke-virtual {p0}, Lg/lh;->r()Lg/sm;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg/agx;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lg/sm;->i(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0}, Lg/sm;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/lh;->l:Lg/sm;

    sget-object v1, Lg/lh;->k:Lg/gxb;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lg/lh;->l:Lg/sm;

    :cond_0
    return-void
.end method

.method public final o(Lg/acq;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lg/lh;->r()Lg/sm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v1

    check-cast v1, Lg/frs;

    if-nez v1, :cond_0

    new-instance v1, Lg/frs;

    invoke-direct {v1, p1}, Lg/frs;-><init>(Lg/acq;)V

    new-instance p1, Lg/agx;

    const/4 v2, 0x2

    invoke-direct {p1, v2, v1}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Lg/sm;->i(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object p1, v1, Lg/frs;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lg/lh;->l:Lg/sm;

    sget-object v1, Lg/lh;->k:Lg/gxb;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lg/sm;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lg/esk;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lg/esk;-><init>(I)V

    invoke-virtual {v0, v1}, Lg/sm;->i(Ljava/util/function/Consumer;)V

    :goto_0
    iget-object v0, p0, Lg/lh;->l:Lg/sm;

    iget-object v0, v0, Lg/sm;->b:Ljava/util/EnumSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Lg/lh;->n()V

    return-void
.end method

.method public final q(Lg/ccm;Lg/acq;)V
    .locals 0

    iget-object p1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p1, p2}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lg/lh;->m(Lg/eue;)V

    :cond_0
    return-void
.end method

.method public final r()Lg/sm;
    .locals 2

    iget-object v0, p0, Lg/lh;->l:Lg/sm;

    sget-object v1, Lg/lh;->k:Lg/gxb;

    if-ne v0, v1, :cond_0

    new-instance v0, Lg/sm;

    invoke-direct {v0}, Lg/sm;-><init>()V

    iput-object v0, p0, Lg/lh;->l:Lg/sm;

    :cond_0
    return-object v0
.end method

.method public final s(Lg/lh;)V
    .locals 3

    iget-object p1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p1}, Lg/sm;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg/lh;->r()Lg/sm;

    move-result-object v0

    iget-object v1, v0, Lg/sm;->b:Ljava/util/EnumSet;

    iget-object v2, p1, Lg/sm;->b:Ljava/util/EnumSet;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p1, Lg/sm;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lg/ean;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lg/ean;-><init>(Lg/sm;I)V

    invoke-virtual {v0, v1}, Lg/sm;->i(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final t(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/lh;->r()Lg/sm;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg/agx;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lg/sm;->i(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final u(Lg/fky;)V
    .locals 1

    iget-object v0, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, p1}, Lg/sm;->d(Lg/fky;)V

    invoke-virtual {p0}, Lg/lh;->n()V

    return-void
.end method

.method public final v(Lg/csv;)V
    .locals 1

    iget-object v0, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, p1}, Lg/sm;->l(Lg/csv;)V

    invoke-virtual {p0}, Lg/lh;->n()V

    return-void
.end method

.method public final w(Lg/csv;)V
    .locals 1

    invoke-virtual {p0}, Lg/lh;->r()Lg/sm;

    move-result-object v0

    iget-object v0, v0, Lg/sm;->b:Ljava/util/EnumSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

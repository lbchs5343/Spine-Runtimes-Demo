.class public final Lg/dxk;
.super Lg/fdk;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final f:Lg/dpa;


# direct methods
.method public constructor <init>(Lg/dxk;)V
    .locals 2

    iget-object v0, p1, Lg/fdk;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lg/fdk;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lg/dxk;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/dxk;->c:Ljava/util/ArrayList;

    iget-object v1, p1, Lg/dxk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lg/dxk;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/dxk;->d:Ljava/util/ArrayList;

    iget-object v1, p1, Lg/dxk;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lg/dxk;->f:Lg/dpa;

    iput-object p1, p0, Lg/dxk;->f:Lg/dpa;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Lg/dpa;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/fdk;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/dxk;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lg/dxk;->f:Lg/dpa;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/gey;

    iget-object p4, p0, Lg/dxk;->c:Ljava/util/ArrayList;

    invoke-interface {p2}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lg/dxk;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final e(Lg/dpa;Ljava/util/List;)Lg/gey;
    .locals 6

    iget-object v0, p0, Lg/dxk;->f:Lg/dpa;

    invoke-virtual {v0}, Lg/dpa;->u()Lg/dpa;

    move-result-object v0

    iget-object v1, v0, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lg/dxk;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget-object v5, Lg/gey;->o:Lg/gdz;

    if-ge v2, v4, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gey;

    iget-object v5, p1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v5, Lg/ffr;

    invoke-virtual {v5, p1, v4}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lg/dpa;->m(Ljava/lang/String;Lg/gey;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lg/dpa;->m(Ljava/lang/String;Lg/gey;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lg/dxk;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/gey;

    invoke-virtual {v1, v0, p2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v2

    instance-of v3, v2, Lg/fud;

    if-eqz v3, :cond_3

    invoke-virtual {v1, v0, p2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v2

    :cond_3
    instance-of p2, v2, Lg/enl;

    if-eqz p2, :cond_2

    check-cast v2, Lg/enl;

    iget-object p1, v2, Lg/enl;->a:Lg/gey;

    return-object p1

    :cond_4
    return-object v5
.end method

.method public final zzd()Lg/gey;
    .locals 1

    new-instance v0, Lg/dxk;

    invoke-direct {v0, p0}, Lg/dxk;-><init>(Lg/dxk;)V

    return-object v0
.end method

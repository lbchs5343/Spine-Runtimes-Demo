.class public final Lg/ayu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/util/List;

.field public final d:Lg/ve;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lg/cwx;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg/ve;Ljava/lang/String;Ljava/util/List;Lg/cwx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/ayu;->f:Ljava/lang/String;

    iput-object p2, p0, Lg/ayu;->a:Ljava/lang/String;

    iput-object p1, p0, Lg/ayu;->d:Lg/ve;

    iput-object p3, p0, Lg/ayu;->c:Ljava/util/List;

    iput-object p4, p0, Lg/ayu;->g:Lg/cwx;

    invoke-static {p2, p3, p4}, Lg/ayu;->i(Ljava/lang/String;Ljava/util/List;Lg/cwx;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lg/ayu;->e:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lg/ve;->l()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x2e

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lg/ayu;->h:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    iget-object p1, p1, Lg/ve;->d:Lg/cwx;

    iget p1, p1, Lg/cwx;->az:I

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, p2

    iput p1, p0, Lg/ayu;->b:I

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/util/List;Lg/cwx;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x28

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/cwx;

    invoke-static {p1}, Lg/pp;->c(Lg/cwx;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lg/pp;->c(Lg/cwx;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lg/dwg;Lg/ful;)Lg/ayu;
    .locals 6

    iget-object v0, p0, Lg/dwg;->h:Lg/fzn;

    invoke-interface {p1}, Lg/ful;->j()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ayu;

    monitor-exit v2

    if-eqz v3, :cond_0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    invoke-interface {p1}, Lg/ful;->m()V

    invoke-interface {p1}, Lg/ful;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/cwx;->ba(Ljava/lang/String;)Lg/cwx;

    move-result-object v2

    invoke-static {p0, v2}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object p0

    invoke-interface {p1}, Lg/fw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/cwx;->ba(Ljava/lang/String;)Lg/cwx;

    move-result-object v2

    invoke-interface {p1}, Lg/fw;->a()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lg/gpn;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Lg/gpn;-><init>(I)V

    invoke-static {v3, v4}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lg/ayu;

    invoke-interface {p1}, Lg/ful;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p0, p1, v3, v2}, Lg/ayu;-><init>(Lg/ve;Ljava/lang/String;Ljava/util/List;Lg/cwx;)V

    invoke-virtual {v0, v4}, Lg/fzn;->o(Lg/ayu;)Lg/ayu;

    move-result-object p0

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1, p0}, Lg/fzn;->y(ILg/ayu;)V

    :cond_1
    return-object p0
.end method

.method public static k(Lg/dwg;Lg/ve;Ljava/lang/String;Ljava/util/List;Lg/cwx;)Lg/ayu;
    .locals 1

    new-instance v0, Lg/ayu;

    invoke-direct {v0, p1, p2, p3, p4}, Lg/ayu;-><init>(Lg/ve;Ljava/lang/String;Ljava/util/List;Lg/cwx;)V

    iget-object p0, p0, Lg/dwg;->h:Lg/fzn;

    invoke-virtual {p0, v0}, Lg/fzn;->o(Lg/ayu;)Lg/ayu;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lg/dwg;Lg/ve;Ljava/lang/String;Lg/fw;)Lg/ayu;
    .locals 3

    invoke-interface {p3}, Lg/fw;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lg/gpn;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lg/gpn;-><init>(I)V

    invoke-static {v0, v1}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3}, Lg/fw;->b()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lg/cwx;->ba(Ljava/lang/String;)Lg/cwx;

    move-result-object p3

    invoke-static {p0, p1, p2, v0, p3}, Lg/ayu;->k(Lg/dwg;Lg/ve;Ljava/lang/String;Ljava/util/List;Lg/cwx;)Lg/ayu;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lg/ayu;

    invoke-virtual {p0, p1}, Lg/ayu;->n(Lg/ayu;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/ayu;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg/ayu;

    iget-object v1, p0, Lg/ayu;->e:Ljava/lang/String;

    iget-object v3, p1, Lg/ayu;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/ayu;->d:Lg/ve;

    iget-object p1, p1, Lg/ayu;->d:Lg/ve;

    invoke-virtual {v1, p1}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lg/ayu;->b:I

    return v0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lg/ayu;->f:Ljava/lang/String;

    const-string v1, "<clinit>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final n(Lg/ayu;)I
    .locals 2

    iget-object v0, p0, Lg/ayu;->d:Lg/ve;

    iget-object v1, p1, Lg/ayu;->d:Lg/ve;

    invoke-virtual {v0, v1}, Lg/ve;->p(Lg/ve;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lg/ayu;->e:Ljava/lang/String;

    iget-object p1, p1, Lg/ayu;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final o()Z
    .locals 2

    iget-object v0, p0, Lg/ayu;->f:Ljava/lang/String;

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final p(ZZ)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/ayu;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/ayu;->f:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lg/ayu;->g:Lg/cwx;

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iget-object v0, p0, Lg/ayu;->c:Ljava/util/List;

    invoke-static {p1, v0, p2}, Lg/ayu;->i(Ljava/lang/String;Ljava/util/List;Lg/cwx;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lg/ayu;)Z
    .locals 2

    iget-object v0, p0, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/ayu;->f:Ljava/lang/String;

    iget-object v1, p1, Lg/ayu;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ayu;->e:Ljava/lang/String;

    iget-object p1, p1, Lg/ayu;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/ayu;->d:Lg/ve;

    iget-object v1, v1, Lg/ve;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ayu;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ayu;->c:Ljava/util/List;

    const-string v2, ", "

    invoke-static {v2, v1}, Lg/evh;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ayu;->g:Lg/cwx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

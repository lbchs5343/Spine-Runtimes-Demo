.class public final Lg/mo;
.super Lg/pj;
.source "SourceFile"


# instance fields
.field public a:Lg/dwg;

.field public b:Lg/cag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/mo;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    return-void
.end method

.method public static c(Lg/ffr;Lg/fog;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lg/dhc;

    if-nez v0, :cond_2

    invoke-interface {p1}, Lg/fog;->getType()Lg/cwx;

    move-result-object v0

    sget-object v1, Lg/cwx;->ad:Lg/gnh;

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-object p0, p0, Lg/ffr;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static d(Lg/hed;)V
    .locals 5

    iget-object p0, p0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/vm;

    iget-object v1, v0, Lg/vm;->c:Lg/gks;

    sget-object v2, Lg/csv;->IMMUTABLE_TYPE:Lg/csv;

    iget-object v1, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lg/vm;->c:Lg/gks;

    iget-object v1, v1, Lg/flv;->h:Lg/cwx;

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gks;

    sget-object v3, Lg/csv;->IMMUTABLE_TYPE:Lg/csv;

    iget-object v4, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v2, Lg/flv;->h:Lg/cwx;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, v0, Lg/vm;->c:Lg/gks;

    sget-object v3, Lg/csv;->IMMUTABLE_TYPE:Lg/csv;

    invoke-virtual {v2, v3}, Lg/lh;->w(Lg/csv;)V

    iget-object v2, v0, Lg/vm;->c:Lg/gks;

    iget-object v2, v2, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v2, v1}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lg/vm;->c:Lg/gks;

    iput-object v1, v0, Lg/flv;->h:Lg/cwx;

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final e(Lg/hed;Lg/vm;)V
    .locals 3

    iget-object v0, p2, Lg/vm;->h:Lg/ffr;

    iget-object v0, v0, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lg/fov;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Lg/fov;-><init>(I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lg/bev;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lg/bev;-><init>(I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lg/mo;->b:Lg/cag;

    iget-object v1, v1, Lg/cag;->e:Lg/cwm;

    iget-object v1, v1, Lg/cwm;->c:Lg/ens;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->max(Ljava/util/Comparator;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cwx;

    iget-object v1, p0, Lg/mo;->b:Lg/cag;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lg/zf;->c:Lg/zf;

    invoke-virtual {v1, p1, p2, v0, v2}, Lg/cag;->p(Lg/hed;Lg/vm;Lg/cwx;Lg/zf;)Lg/dgr;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "TypeInferenceVisitor"

    return-object v0
.end method

.method public final g(Lg/hed;)V
    .locals 2

    iget-object p1, p1, Lg/hed;->at:Ljava/util/List;

    new-instance v0, Lg/agx;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    new-instance v0, Lg/abs;

    invoke-direct {v0, p0}, Lg/abs;-><init>(Lg/mo;)V

    invoke-static {p1, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final h(Lg/dwg;)V
    .locals 0

    iput-object p1, p0, Lg/mo;->a:Lg/dwg;

    iget-object p1, p1, Lg/dwg;->u:Lg/cag;

    iput-object p1, p0, Lg/mo;->b:Lg/cag;

    return-void
.end method

.method public final i(Lg/hed;)V
    .locals 3

    iget-object v0, p1, Lg/hed;->at:Ljava/util/List;

    new-instance v1, Lg/aty;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lg/aty;-><init>(Lg/mo;Lg/hed;I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    new-instance v1, Lg/aty;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lg/aty;-><init>(Lg/mo;Lg/hed;I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final j(Lg/hed;)V
    .locals 2

    iget-boolean v0, p1, Lg/hed;->ar:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {p1}, Lg/mo;->d(Lg/hed;)V

    invoke-virtual {p0, p1}, Lg/mo;->g(Lg/hed;)V

    invoke-virtual {p0, p1}, Lg/mo;->i(Lg/hed;)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/BootstrapMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :goto_0
    const-string v1, "Type inference failed"

    invoke-static {p1, v1, v0}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    new-instance v1, Lg/blf;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v0, "Type inference failed with stack overflow"

    invoke-static {p1, v0, v1}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

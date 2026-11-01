.class public final synthetic Lg/gpy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/gpy;->a:I

    iput-object p2, p0, Lg/gpy;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/util/ArrayList;)Lg/iu;
    .locals 7

    iget v0, p0, Lg/gpy;->a:I

    sget-object v1, Lg/ftq;->b:Lg/ftq;

    const/4 v2, 0x5

    iget-object v3, p0, Lg/gpy;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v3, Lg/gay;

    new-instance v0, Lg/bmg;

    iget-object v4, v3, Lg/gay;->f:Lg/cqc;

    iget-object v4, v4, Lg/cqc;->i:Lg/eie;

    iget-object v5, v3, Lg/gay;->c:Lg/dpa;

    iget-object v3, v3, Lg/gay;->e:Lg/evf;

    iget-object v3, v3, Lg/evf;->f:Ljava/lang/Object;

    check-cast v3, Lg/ao;

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lg/fvm;->a:Ljava/nio/file/Path;

    invoke-static {v3}, Lg/cnh;->u(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v3

    sget-object v6, Lg/bqu;->c:Lg/dba;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lg/cnh;->q(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lg/bqu;->f(Ljava/io/File;)V

    :cond_0
    invoke-static {v3}, Lg/bnl;->w(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v3

    iget-object v5, v5, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lg/cnf;->f(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lg/cnh;->q(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lg/bqu;->f(Ljava/io/File;)V

    :cond_1
    invoke-direct {v0, v4, v3}, Lg/bmg;-><init>(Lg/eie;Ljava/nio/file/Path;)V

    invoke-static {p1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lg/hel;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lg/eug;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Lg/eug;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lg/brj;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Lg/brj;-><init>(I)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lg/gpn;

    invoke-direct {v0, v2}, Lg/gpn;-><init>(I)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lg/fgy;

    invoke-direct {v1, p1}, Lg/fgy;-><init>(Ljava/util/List;)V

    :goto_0
    return-object v1

    :pswitch_0
    check-cast v3, Lg/bqb;

    iget-object v0, v3, Lg/bqb;->d:Lg/cqv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lg/hel;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lg/eug;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Lg/eug;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lg/bev;

    const/16 v3, 0xf

    invoke-direct {v0, v3}, Lg/bev;-><init>(I)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lg/gpn;

    invoke-direct {v0, v2}, Lg/gpn;-><init>(I)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lg/esk;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Lg/esk;-><init>(I)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lg/cnv;

    invoke-direct {v1, p1}, Lg/cnv;-><init>(Ljava/util/List;)V

    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

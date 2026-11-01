.class public abstract Lg/bzu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\R"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lg/bzu;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static b(Lg/eos;Lg/afa;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lg/grs;

    invoke-virtual {v0}, Lg/grs;->ag()V

    sget-object v0, Lg/gmc;->BLOCK_CONDENSED:Lg/gmc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lg/gmc;->d()Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    invoke-static {p0, v1, p2}, Lg/bzu;->e(Lg/eos;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/gmc;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lg/bzu;->e(Lg/eos;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/gmc;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lg/bzu;->e(Lg/eos;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Lg/eos;Lg/ebh;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lg/afa;->INFO:Lg/afa;

    invoke-virtual {p1, v0}, Lg/ebh;->bx(Lg/afa;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lg/grs;

    invoke-virtual {v1}, Lg/grs;->ag()V

    sget-object v1, Lg/gmc;->BLOCK_CONDENSED:Lg/gmc;

    invoke-virtual {v1}, Lg/gmc;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {p0, v3, v2}, Lg/bzu;->e(Lg/eos;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v0

    const-string v2, ": "

    invoke-interface {v0, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    const-string v0, "renamed from: "

    invoke-interface {p0, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v0

    invoke-interface {v0, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    sget-object p2, Lg/acq;->ad:Lg/acq;

    iget-object p1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p1, p2}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p1

    check-cast p1, Lg/awl;

    if-eqz p1, :cond_0

    const-string p2, ", reason: "

    invoke-interface {p0, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p2

    iget-object p1, p1, Lg/awl;->a:Ljava/lang/String;

    invoke-interface {p2, p1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_0
    invoke-virtual {v1}, Lg/gmc;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3, p1}, Lg/bzu;->e(Lg/eos;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static d(Lg/eos;Lg/ebh;Lg/epk;)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lg/afa;->USER_ONLY:Lg/afa;

    invoke-virtual {p1, v0}, Lg/ebh;->bx(Lg/afa;)Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, p2, Lg/gut;

    sget-object v0, Lg/acq;->u:Lg/acq;

    check-cast p2, Lg/lh;

    iget-object p2, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {p2, v0}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/gsx;

    if-eqz p1, :cond_1

    check-cast p0, Lg/grs;

    invoke-virtual {p0}, Lg/grs;->ag()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x20

    invoke-interface {p0, p1}, Lg/eos;->a(C)Lg/eos;

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public static e(Lg/eos;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lg/bzu;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-interface {p0, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    move-object v2, p0

    check-cast v2, Lg/grs;

    invoke-virtual {v2, p1}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    aget-object v2, p2, v1

    invoke-interface {p0, v2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static f(Lg/eos;Lg/ebh;)V
    .locals 4

    sget-object v0, Lg/acq;->bk:Lg/acq;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/bnz;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lg/awj;->a()Lg/dwg;

    move-result-object v1

    iget-object v1, v1, Lg/dwg;->i:Lg/ur;

    iget-object v1, v1, Lg/ur;->aq:Lg/afa;

    sget-object v2, Lg/afa;->NONE:Lg/afa;

    if-eq v1, v2, :cond_1

    sget-object v2, Lg/afa;->USER_ONLY:Lg/afa;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lg/bnz;->a:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lg/egl;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v1}, Lg/egl;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lg/gpn;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lg/gpn;-><init>(I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Stream;->sorted()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    new-instance v1, Lg/hf;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lg/hf;-><init>(Lg/eos;I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :cond_2
    invoke-static {p0, p1, p1}, Lg/bzu;->d(Lg/eos;Lg/ebh;Lg/epk;)V

    return-void
.end method

.method public static g(Lg/eos;Lg/ebh;)V
    .locals 2

    sget-object v0, Lg/afa;->ERROR:Lg/afa;

    invoke-virtual {p1, v0}, Lg/ebh;->bx(Lg/afa;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lg/acq;->af:Lg/acq;

    iget-object p1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {p1, v0}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Stream;->distinct()Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Stream;->sorted()Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lg/hf;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/hf;-><init>(Lg/eos;I)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

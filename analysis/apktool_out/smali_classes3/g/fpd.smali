.class public final Lg/fpd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ayv;
.implements Lg/btp;
.implements Lg/bol;
.implements Lg/ebz;
.implements Lcom/google/android/gms/internal/ads/zzcas;
.implements Lcom/google/android/gms/internal/ads/zzbdn;


# static fields
.field public static b:Lg/fpd;


# instance fields
.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public final synthetic e:I

.field public f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/fpd;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lg/fpd;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lg/fpd;->c:Ljava/lang/Object;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lg/fpd;->d:Ljava/lang/Object;

    iput-object p1, p0, Lg/fpd;->f:Ljava/lang/Object;

    new-instance v2, Lg/aku;

    const/16 p1, 0xf

    invoke-direct {v2, p1, p0}, Lg/aku;-><init>(ILjava/lang/Object;)V

    const-wide/32 v5, 0x15180

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public constructor <init>(Lg/hed;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lg/fpd;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fpd;->f:Ljava/lang/Object;

    invoke-static {p1}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lg/fpd;->c:Ljava/lang/Object;

    invoke-static {p1}, Lg/ffb;->v(Lg/hed;)Ljava/util/BitSet;

    move-result-object p1

    iput-object p1, p0, Lg/fpd;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/hed;I)V
    .locals 0

    const/4 p2, 0x6

    iput p2, p0, Lg/fpd;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fpd;->f:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/fpd;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/wg;Lg/dqr;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lg/fpd;->e:I

    const-string v0, "store"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/aje;->a:Lg/aje;

    invoke-direct {p0, p1, p2, v0}, Lg/fpd;-><init>(Lg/wg;Lg/dqr;Lg/bin;)V

    return-void
.end method

.method public constructor <init>(Lg/wg;Lg/dqr;Lg/bin;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lg/fpd;->e:I

    const-string v0, "store"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fpd;->f:Ljava/lang/Object;

    iput-object p2, p0, Lg/fpd;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/fpd;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lg/fpd;->e:I

    iput-object p1, p0, Lg/fpd;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg/fpd;->f:Ljava/lang/Object;

    iput-object p3, p0, Lg/fpd;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IB)V
    .locals 0

    iput p4, p0, Lg/fpd;->e:I

    iput-object p1, p0, Lg/fpd;->c:Ljava/lang/Object;

    iput-object p2, p0, Lg/fpd;->f:Ljava/lang/Object;

    iput-object p3, p0, Lg/fpd;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    iput p4, p0, Lg/fpd;->e:I

    iput-object p1, p0, Lg/fpd;->f:Ljava/lang/Object;

    iput-object p2, p0, Lg/fpd;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/fpd;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x12

    iput v0, p0, Lg/fpd;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/akj;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lg/akj;-><init>(I)V

    iput-object v0, p0, Lg/fpd;->c:Ljava/lang/Object;

    iput-object v0, p0, Lg/fpd;->d:Ljava/lang/Object;

    iput-object p1, p0, Lg/fpd;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4

    const/16 v0, 0x10

    iput v0, p0, Lg/fpd;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fpd;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/fpd;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/fpd;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fiz;

    iget-object v2, v2, Lg/fiz;->c:Lg/dlz;

    new-instance v3, Lg/fdn;

    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-direct {v3, v2}, Lg/fdn;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fiz;

    iget-object v1, v1, Lg/fiz;->d:Lg/dlz;

    iget-object v2, p0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lg/dlz;->dq()Lg/cej;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static g(Lg/hed;)V
    .locals 6

    new-instance v0, Lg/fpd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/fpd;-><init>(Lg/hed;I)V

    iget-object p0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    iget-object v2, v1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/eek;

    sget-object v4, Lg/csv;->REMOVE:Lg/csv;

    iget-object v5, v3, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v4}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lg/fza;->ac:Ljava/util/ArrayList;

    iput-object v1, v0, Lg/fpd;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/fpd;->u()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static h(Lg/hed;Lg/gsh;)V
    .locals 1

    instance-of v0, p1, Lg/gks;

    if-eqz v0, :cond_0

    check-cast p1, Lg/gks;

    iget-object p0, p1, Lg/gks;->a:Lg/vm;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lg/vm;->v(Lg/gks;)V

    return-void

    :cond_0
    instance-of v0, p1, Lg/cly;

    if-eqz v0, :cond_1

    check-cast p1, Lg/cly;

    iget-object p1, p1, Lg/cly;->a:Lg/eek;

    invoke-static {p0, p1}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    :cond_1
    return-void
.end method

.method public static j(Lg/hed;Lg/eek;)V
    .locals 6

    iget-object v0, p1, Lg/eek;->ai:Lg/gks;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_7

    iget-object v0, v0, Lg/gks;->a:Lg/vm;

    if-eqz v0, :cond_7

    iget-object v2, v0, Lg/vm;->d:Ljava/util/ArrayList;

    iget-object v3, v0, Lg/vm;->c:Lg/gks;

    iget-object v3, v3, Lg/gsh;->ae:Lg/eek;

    if-ne v3, p1, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object p0, p0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1
    new-instance v4, Lg/brj;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lg/brj;-><init>(I)V

    invoke-static {v2, v4}, Lg/acw;->bh(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gks;

    iget-object v4, v3, Lg/gsh;->ae:Lg/eek;

    if-eqz v4, :cond_2

    check-cast v4, Lg/abi;

    invoke-virtual {v4, v3}, Lg/abi;->_ax(Lg/gks;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v4, Lg/brj;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lg/brj;-><init>(I)V

    invoke-static {v2, v4}, Lg/acw;->bh(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gks;

    iput-object v1, v3, Lg/gks;->a:Lg/vm;

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance p0, Lg/gck;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t remove SSA var: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", still in use, count: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", list:\n  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lg/gpn;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lg/gpn;-><init>(I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    const-string v1, "\n  "

    invoke-static {v1}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    iput-object v1, p1, Lg/eek;->ai:Lg/gks;

    return-void
.end method

.method public static k(Lg/hed;Lg/eek;)V
    .locals 0

    invoke-static {p0, p1}, Lg/fpd;->q(Lg/hed;Lg/eek;)V

    invoke-static {p0, p1}, Lg/fpd;->j(Lg/hed;Lg/eek;)V

    sget-object p0, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p1, p0}, Lg/lh;->w(Lg/csv;)V

    return-void
.end method

.method public static l(Lg/hed;Lg/eek;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lg/csv;->WRAPPED:Lg/csv;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    return-void

    :cond_1
    iget-object v0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-static {p0, p1, v0}, Lg/ffb;->o(Lg/hed;Lg/eek;Ljava/util/List;)Lg/fza;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    invoke-static {p0, v0, p1}, Lg/fpd;->p(Lg/hed;Lg/fza;Lg/eek;)Z

    return-void

    :cond_2
    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p1, v0}, Lg/lh;->w(Lg/csv;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not found block with instruction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ebh;->bu(Ljava/lang/String;)V

    return-void
.end method

.method public static final m(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "app_set_id_storage"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lg/hed;Ljava/util/List;)V
    .locals 2

    new-instance v0, Lg/bra;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lg/bra;-><init>(Lg/hed;I)V

    invoke-static {p1, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    new-instance v0, Lg/bra;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lg/bra;-><init>(Lg/hed;I)V

    invoke-static {p1, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static p(Lg/hed;Lg/fza;Lg/eek;)Z
    .locals 2

    iget-object v0, p1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eek;

    if-ne v1, p2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object v0, Lg/csv;->WRAPPED:Lg/csv;

    iget-object v1, p2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to remove instruction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " from block: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/ebh;->bu(Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static q(Lg/hed;Lg/eek;)V
    .locals 2

    iget-object v0, p1, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gsh;

    invoke-static {p0, v1}, Lg/fpd;->h(Lg/hed;Lg/gsh;)V

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lg/eek;->ah:Lg/hay;

    sget-object v0, Lg/hay;->PHI:Lg/hay;

    if-ne p0, v0, :cond_2

    iget-object p0, p1, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gsh;

    instance-of v1, v0, Lg/gks;

    if-eqz v1, :cond_1

    check-cast v0, Lg/gks;

    iget-object v0, v0, Lg/gks;->a:Lg/vm;

    invoke-virtual {v0}, Lg/vm;->k()V

    goto :goto_1

    :cond_2
    sget-object p0, Lg/csv;->REMOVE:Lg/csv;

    invoke-virtual {p1, p0}, Lg/lh;->w(Lg/csv;)V

    sget-object p0, Lg/csv;->DONT_GENERATE:Lg/csv;

    invoke-virtual {p1, p0}, Lg/lh;->w(Lg/csv;)V

    return-void
.end method

.method public static final r(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lg/fpd;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "app_set_id_last_used_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Failed to store app set ID last used time for App "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "AppSet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lg/auq;

    const-string v0, "Failed to store the app set ID last used time."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static s(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eek;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public a()Lg/chw;
    .locals 4

    new-instance v0, Lg/eeo;

    invoke-direct {v0}, Lg/eeo;-><init>()V

    iget-object v1, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lg/fuy;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3, v0}, Lg/fuy;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lg/eeo;->a:Lg/chw;

    return-object v0
.end method

.method public dq(Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v0, Lg/hcl;

    iget v1, v0, Lg/hcl;->e:I

    iget v0, v0, Lg/hcl;->h:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v0, Lg/fnq;

    iget-object v0, v0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lg/akg;

    iget-object v0, v0, Lg/fzx;->ab:Ljava/util/HashMap;

    iget-object v1, p0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lg/efr;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1}, Lg/efr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v0}, Lg/dxo;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lg/fpd;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance v2, Lg/cuf;

    const/16 v0, 0xd

    invoke-direct {v2, v0}, Lg/cuf;-><init>(I)V

    new-instance v3, Lg/fbc;

    invoke-direct {v3, v0}, Lg/fbc;-><init>(I)V

    iget-object v0, p0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v0, Lg/fzn;

    invoke-virtual {v0}, Lg/fzn;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lg/ekr;

    iget-object v0, p0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v0, Lg/fzm;

    invoke-virtual {v0}, Lg/fzm;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lg/dwp;

    iget-object v0, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v0, Lg/duw;

    invoke-virtual {v0}, Lg/duw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lg/efs;

    new-instance v1, Lg/crh;

    invoke-direct/range {v1 .. v6}, Lg/crh;-><init>(Lg/cqi;Lg/cqi;Lg/ekr;Lg/dwp;Lg/efs;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v0, Lg/fcc;

    invoke-interface {v0}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v1, Lg/fcc;

    invoke-interface {v1}, Lg/fcc;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ahy;

    iget-object v2, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v2, Lg/fbc;

    invoke-virtual {v2}, Lg/fbc;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/hau;

    new-instance v3, Lg/ahe;

    invoke-direct {v3, v0, v1, v2}, Lg/ahe;-><init>(Landroid/content/Context;Lg/ahy;Lg/hau;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public i(Lg/x;)V
    .locals 1

    iget p1, p0, Lg/fpd;->e:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast p1, Lg/cdy;

    iget-object v0, p0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v0, Lg/fnq;

    invoke-static {p1, v0}, Lg/cdy;->i(Lg/cdy;Lg/btp;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast p1, Lg/fyl;

    iget-object v0, p0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v0, Lg/vg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lg/fyl;->f(Lg/btp;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public o(I)V
    .locals 7

    iget v0, p0, Lg/fpd;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v0, Lg/cdy;

    iget-object v0, v0, Lg/cdy;->e:Lg/cdy;

    invoke-static {v0}, Lg/dyd;->bi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v0, Lg/fnq;

    invoke-virtual {v0, p1}, Lg/fnq;->o(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v0, Lg/elf;

    new-instance v1, Lg/dj;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, v2}, Lg/dj;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v0, Lg/vg;

    iget-object v1, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v1, Lg/fyl;

    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_1

    iget-object v2, v1, Lg/fyl;->b:Lg/cdy;

    invoke-static {v1, v2, v0, p1}, Lg/fyl;->d(Lg/fyl;Lg/cdy;Lg/vg;I)V

    goto :goto_1

    :cond_1
    sget-object v2, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v4, Lg/edm;

    iget-wide v4, v4, Lg/edm;->b:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xa4cb800

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lg/fyl;->e(Lg/btp;ILjava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lg/fyl;->b:Lg/cdy;

    invoke-static {v2}, Lg/acr;->bc(Lg/cdy;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lg/fyl;->f(Lg/btp;)V

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lg/fyl;->b:Lg/cdy;

    invoke-static {v1, v2, v0, p1}, Lg/fyl;->d(Lg/fyl;Lg/cdy;Lg/vg;I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public t(Ljava/lang/Class;Ljava/lang/String;)Lg/blj;
    .locals 5

    iget-object v0, p0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v0, Lg/dqr;

    const-string v1, "key"

    invoke-static {p2, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v1, Lg/wg;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lg/wg;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/blj;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of p1, v0, Lg/ecl;

    if-eqz p1, :cond_0

    check-cast v0, Lg/ecl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v2}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object p1, v0, Lg/ecl;->b:Lg/euu;

    if-eqz p1, :cond_1

    iget-object p2, v0, Lg/ecl;->c:Lg/hbu;

    invoke-static {p2}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-static {v2, p2, p1}, Lg/fso;->u(Lg/blj;Lg/hbu;Lg/euu;)V

    :cond_1
    const-string p1, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-static {v2, p1}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_2
    new-instance v2, Lg/ewp;

    iget-object v3, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v3, Lg/bin;

    invoke-direct {v2, v3}, Lg/ewp;-><init>(Lg/bin;)V

    sget-object v3, Lg/bmr;->y:Lg/bmr;

    iget-object v4, v2, Lg/bin;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v4, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-interface {v0, p1, v2}, Lg/dqr;->l(Ljava/lang/Class;Lg/ewp;)Lg/blj;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-interface {v0, p1}, Lg/dqr;->m(Ljava/lang/Class;)Lg/blj;

    move-result-object p1

    :goto_1
    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/blj;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lg/blj;->j()V

    :cond_3
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lg/fpd;->e:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v1, Lg/akj;

    iget-object v1, v1, Lg/akj;->f:Ljava/lang/Object;

    check-cast v1, Lg/akj;

    const-string v2, ""

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Lg/akj;->h:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v1, v1, Lg/akj;->f:Ljava/lang/Object;

    check-cast v1, Lg/akj;

    const-string v2, ", "

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1
    iget-object v0, p0, Lg/fpd;->d:Ljava/lang/Object;

    iget-object v1, p0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v1, Lg/fpd;

    if-nez v1, :cond_2

    const-string v0, "$"

    goto :goto_2

    :cond_2
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lg/fpd;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lg/fpd;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public u()V
    .locals 4

    iget-object v0, p0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v0, Lg/hed;

    iget-object v1, p0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/eek;

    invoke-static {v0, v3}, Lg/fpd;->l(Lg/hed;Lg/eek;)V

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lg/fpd;->n(Lg/hed;Ljava/util/List;)V

    iget-object v0, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v0, v1}, Lg/fpd;->s(Ljava/util/List;Ljava/util/List;)V

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public v(Lg/eek;)V
    .locals 1

    iget-object v0, p0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v0, Lg/hed;

    invoke-static {v0, p1}, Lg/fpd;->k(Lg/hed;Lg/eek;)V

    return-void
.end method

.method public w()Lg/ku;
    .locals 4

    iget-object v0, p0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " backendName"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v1, Lg/cq;

    if-nez v1, :cond_1

    const-string v1, " priority"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lg/ku;

    iget-object v1, p0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v3, Lg/cq;

    invoke-direct {v0, v1, v2, v3}, Lg/ku;-><init>(Ljava/lang/String;[BLg/cq;)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public zza()V
    .locals 5

    iget-object v0, p0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdo;->zza()Lg/bpr;

    move-result-object v1

    new-instance v2, Lg/dxb;

    invoke-direct {v2, v1}, Lg/dxb;-><init>(Lg/bpr;)V

    invoke-virtual {v2}, Lg/dxb;->h()Lg/fdy;

    move-result-object v1

    iget-object v2, v1, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget-object v3, p0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhgq;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, v1, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbdo;->zzf(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic zza(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbmp;

    const-string p1, "loadNewJavascriptEngine (success): Trying to acquire lock"

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnu;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbnu;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string v0, "loadNewJavascriptEngine (success): Lock acquired"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbnu;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzbnu;->a:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbnu;->h:Lcom/google/android/gms/internal/ads/zzbnt;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbnt;

    if-eq v1, v0, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbnu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbnu;->h:Lcom/google/android/gms/internal/ads/zzbnt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzb()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbnu;

    iget-object v1, p0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbnt;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbnu;->h:Lcom/google/android/gms/internal/ads/zzbnt;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeg;->zzd:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbnu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbnu;->c:Lcom/google/android/gms/internal/ads/zzfko;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfka;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfka;->zzm()Lcom/google/android/gms/internal/ads/zzfke;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfko;->zzb(Lcom/google/android/gms/internal/ads/zzfke;)V

    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "loadNewJavascriptEngine (success): Lock released"

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

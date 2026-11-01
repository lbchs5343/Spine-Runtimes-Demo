.class public final Lg/emr;
.super Ljava/lang/Object;

# interfaces
.implements Lg/dry;
.implements Lg/caf;
.implements Lg/ghx;
.implements Lg/bwb;
.implements Lg/atd;
.implements Lg/fsz;
.implements Lg/btp;
.implements Lg/eya;
.implements Lg/bsh;
.implements Lg/dad;
.implements Lg/cwb;
.implements Lg/fsj;
.implements Lg/cra;
.implements Lg/lb;
.implements Lcom/google/android/gms/internal/ads/zzcaq;
.implements Lg/bez;
.implements Lcom/google/android/gms/internal/ads/zzgee;
.implements Lcom/google/android/gms/internal/ads/zzenh;


# static fields
.field public static volatile b:Lg/emr;


# instance fields
.field public final synthetic c:I

.field public n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/emr;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/emr;->c:I

    iput-object p2, p0, Lg/emr;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lg/emr;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lg/dgd;->t(Landroid/content/ClipData;I)Landroid/view/ContentInfo$Builder;

    move-result-object p1

    iput-object p1, p0, Lg/emr;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/emr;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/cei;

    invoke-direct {v0, p1}, Lg/cei;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    return-void
.end method

.method private final ag(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method private final ah(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static p(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cwx;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cwx;

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cwx;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cwx;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cwx;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static q(Lg/hed;Lg/cwx;)V
    .locals 1

    invoke-virtual {p1}, Lg/cwx;->bn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lg/emr;->w(Lg/hed;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lg/emr;->u(Lg/ebh;Lg/cwx;Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public static t(Landroid/content/Context;Lg/bme;Lg/awn;Lg/emg;)V
    .locals 8

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbel;->zzj:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzkP:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    goto :goto_0

    :cond_1
    sget-object v0, Lg/ga;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lg/chq;

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lg/chq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbtx;

    iget-object p1, v4, Lg/awn;->a:Lg/qo;

    const/4 p2, 0x0

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/google/android/gms/internal/ads/zzbtx;-><init>(Landroid/content/Context;Lg/bme;Lg/qo;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzbtx;->zzb(Lg/emg;)V

    return-void
.end method

.method public static u(Lg/ebh;Lg/cwx;Ljava/util/Collection;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cwx;

    invoke-virtual {v1}, Lg/cwx;->q()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lg/evh;->e(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lg/oe;

    const/4 v1, 0x2

    invoke-direct {v0, p2, p0, p1, v1}, Lg/oe;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lg/cwx;->bh(Ljava/util/function/Function;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static w(Lg/hed;)Ljava/util/Set;
    .locals 5

    sget-object v0, Lg/acq;->z:Lg/acq;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/dik;

    if-eqz v0, :cond_0

    iget-object p0, v0, Lg/dik;->b:Ljava/util/Set;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lg/hed;->am:Lg/cci;

    invoke-virtual {v1}, Lg/cci;->bk()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v1, Lg/cci;->y:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, v1, Lg/cci;->ai:Lg/cci;

    :goto_0
    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    if-eq v1, v3, :cond_2

    iget-object v3, v1, Lg/cci;->y:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v1, Lg/cci;->ai:Lg/cci;

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lg/cci;->y:Ljava/util/List;

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lg/hed;->ae:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_3
    sget-object v1, Lg/dik;->a:Lg/dik;

    invoke-static {v0}, Lg/evh;->m(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lg/dik;->a:Lg/dik;

    goto :goto_1

    :cond_4
    new-instance v1, Lg/dik;

    invoke-direct {v1, v0}, Lg/dik;-><init>(Ljava/util/Set;)V

    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lg/lh;->m(Lg/eue;)V

    iget-object p0, v0, Lg/dik;->b:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo$Builder;

    invoke-static {v0, p1}, Lg/dgd;->p(Landroid/view/ContentInfo$Builder;I)V

    return-void
.end method

.method public aa(I)V
    .locals 3

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lg/dlv;

    invoke-static {v0}, Lg/dlv;->p(Lg/dlv;)Lg/gii;

    move-result-object v1

    invoke-interface {v1}, Lg/gii;->d()V

    iget-object v1, v0, Lg/dlv;->ia:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lg/dlv;->tl:Lg/cyx;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    iget-object p1, v0, Lg/dlv;->bf:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fzc;

    invoke-interface {v1, p1, v0, v0}, Lg/cyx;->dq(Lg/fzc;Lg/dvh;Lg/eho;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public ab(Lg/cwx;Lg/jb;)V
    .locals 5

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lg/dwg;

    invoke-virtual {v0, p1}, Lg/dwg;->w(Lg/cwx;)Lg/cci;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lg/cci;->bm(Lg/jb;)V

    return-void

    :cond_0
    iget-object v0, v0, Lg/dwg;->l:Lg/cut;

    invoke-virtual {v0, p1}, Lg/cut;->l(Lg/cwx;)Lg/aht;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lg/aht;->e:[Lg/cwx;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    sget-object v4, Lg/cwx;->t:Lg/aog;

    invoke-virtual {v3, v4}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2, p1, v3}, Lg/jb;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, p2}, Lg/emr;->ab(Lg/cwx;Lg/jb;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public ac(Lg/cwx;Ljava/util/Map;)Lg/cwx;
    .locals 3

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lg/btl;

    if-eqz v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/cwx;

    return-object p1

    :cond_1
    instance-of v0, p1, Lg/aoe;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lg/cwx;->k()Lg/cwx;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lg/emr;->ac(Lg/cwx;Ljava/util/Map;)Lg/cwx;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Lg/aoe;

    invoke-direct {p2, p1}, Lg/aoe;-><init>(Lg/cwx;)V

    return-object p2

    :cond_3
    invoke-virtual {p1}, Lg/cwx;->bo()Lg/cwx;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lg/cwx;->bn()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0, p2}, Lg/emr;->ac(Lg/cwx;Ljava/util/Map;)Lg/cwx;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lg/cwx;->bl()Lg/be;

    move-result-object p1

    new-instance v0, Lg/gzg;

    invoke-direct {v0, p2, p1}, Lg/gzg;-><init>(Lg/cwx;Lg/be;)V

    return-object v0

    :cond_5
    invoke-virtual {p1}, Lg/cwx;->bm()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lg/cwx;->bj()Lg/cwx;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0, p2}, Lg/emr;->ac(Lg/cwx;Ljava/util/Map;)Lg/cwx;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lg/cwx;->bg()Lg/cwx;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lg/emr;->ac(Lg/cwx;Ljava/util/Map;)Lg/cwx;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    move-object p1, p2

    :goto_0
    new-instance p2, Lg/gvo;

    check-cast v0, Lg/aog;

    check-cast p1, Lg/aog;

    invoke-direct {p2, v0, p1}, Lg/gvo;-><init>(Lg/aog;Lg/aog;)V

    return-object p2

    :cond_8
    invoke-virtual {p1}, Lg/cwx;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/evh;->e(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lg/fss;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p2}, Lg/fss;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lg/cwx;->bd(Lg/cwx;Ljava/util/List;)Lg/aaw;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public ad(Lg/cwx;)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lg/dwg;

    invoke-virtual {v0, p1}, Lg/dwg;->w(Lg/cwx;)Lg/cci;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lg/cci;->y:Ljava/util/List;

    return-object p1

    :cond_0
    iget-object v0, v0, Lg/dwg;->l:Lg/cut;

    invoke-virtual {v0, p1}, Lg/cut;->l(Lg/cwx;)Lg/aht;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p1, Lg/aht;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lg/aht;->b:Ljava/util/List;

    if-nez p1, :cond_2

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public ae(JJLjava/lang/String;)V
    .locals 13

    move-object/from16 v0, p5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v3, Lb/b/b;

    iget-object v4, v3, Lb/b/b;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide/16 v6, 0xc8

    cmp-long v8, v4, v6

    if-ltz v8, :cond_6

    iget-object v4, v3, Lb/b/b;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0x0

    if-eqz v0, :cond_1

    const-string v10, "SOURCE:"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    cmp-long v12, p3, v8

    if-lez v12, :cond_0

    mul-long p1, p1, v6

    div-long v8, p1, p3

    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Object;

    aput-object v10, p2, v4

    aput-object v11, p2, v2

    aput-object p1, p2, v1

    const p1, 0x7f1201b7

    invoke-virtual {v3, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    const-string v10, "RES:"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    cmp-long v12, p3, v8

    if-lez v12, :cond_2

    mul-long p1, p1, v6

    div-long v8, p1, p3

    :cond_2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Object;

    aput-object v10, p2, v4

    aput-object v11, p2, v2

    aput-object p1, p2, v1

    const p1, 0x7f1201b6

    invoke-virtual {v3, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    cmp-long v12, p3, v8

    if-lez v12, :cond_4

    mul-long p1, p1, v6

    div-long v8, p1, p3

    :cond_4
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Object;

    aput-object v10, p2, v4

    aput-object v11, p2, v2

    aput-object p1, p2, v1

    const p1, 0x7f1201b5

    invoke-virtual {v3, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v3, v0}, Lb/b/b;->o(Lb/b/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "\n"

    invoke-static {p1, v0, p2}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    iget-object p2, v3, Lg/doq;->ah:Lg/eqi;

    const/4 v0, 0x5

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    return-void
.end method

.method public af(Z)V
    .locals 9

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v1, "history_time"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "npth"

    invoke-static {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v3, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v8, v6, v4

    if-lez v8, :cond_2

    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Lg/afo;->as(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "crash_history"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    if-eqz p1, :cond_f

    iget-object p1, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lg/afo;->as(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CrashLogJava"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ".npth"

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    goto :goto_2

    :cond_4
    new-instance p1, Lg/foo;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_5

    goto/16 :goto_a

    :cond_5
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_f

    const/16 v1, 0x32

    if-ge v0, v1, :cond_f

    aget-object v1, p1, v0

    :try_start_1
    invoke-static {}, Lg/akj;->j()Lg/akj;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v5, v3, Lg/akj;->h:Ljava/lang/Object;

    check-cast v5, Lg/fdc;

    if-eqz v5, :cond_6

    iget-object v6, v3, Lg/akj;->f:Ljava/lang/Object;

    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v6, v4}, Lg/fdc;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception v1

    goto/16 :goto_8

    :cond_6
    monitor-exit v3

    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    goto/16 :goto_9

    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lg/cro;->ag(Ljava/lang/String;)Lg/ja;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v4, v3, Lg/ja;->b:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_e

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "launch_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    const-string v6, "anr_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_5

    :cond_9
    const-string v6, "java_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "is_dart"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_a

    goto :goto_5

    :cond_a
    const-string v5, "isJava"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    :cond_b
    :goto_5
    iget-object v5, v3, Lg/ja;->b:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    const-string v6, "upload_scene"

    const-string v8, "launch_scan"

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v3, Lg/ja;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v3, v3, Lg/ja;->d:Z

    invoke-static {v5, v4, v3}, Lg/eg;->y(Ljava/lang/String;Ljava/lang/String;Z)Lg/cyl;

    move-result-object v3

    iget v3, v3, Lg/cyl;->e:I

    if-nez v3, :cond_c

    const/4 v3, 0x1

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    :goto_7
    if-nez v7, :cond_e

    invoke-static {}, Lg/akj;->j()Lg/akj;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lg/aak;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v1, v4, Lg/aak;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lg/aak;->b:J

    invoke-virtual {v3, v4}, Lg/akj;->p(Lg/aak;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :goto_8
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    sget-object v1, Lg/eca;->c:Landroid/content/Context;

    :cond_e
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_f
    :goto_a
    return-void
.end method

.method public ak(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lg/ehi;

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lg/eya;

    invoke-interface {v0, p1}, Lg/eya;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public build()Lg/dui;
    .locals 3

    new-instance v0, Lg/dui;

    new-instance v1, Lg/fnq;

    iget-object v2, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v2, Landroid/view/ContentInfo$Builder;

    invoke-static {v2}, Lg/dgd;->f(Landroid/view/ContentInfo$Builder;)Landroid/view/ContentInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lg/fnq;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, Lg/dui;-><init>(Lg/adi;)V

    return-object v0
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 11

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lg/gwf;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-nez v2, :cond_1

    new-instance v2, Lg/ajr;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v5, v0, Lg/gwf;->j:Lg/cwq;

    iget-object v6, v5, Lg/haz;->v:Landroid/content/Context;

    iget-object v5, v5, Lg/cwq;->c:Ljava/lang/String;

    invoke-static {v6, v5}, Lg/ern;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, v0, Lg/gwf;->d:Z

    if-eqz v5, :cond_0

    iget-object v5, v0, Lg/gwf;->j:Lg/cwq;

    new-instance v6, Lg/eie;

    invoke-direct {v6, v3, v2}, Lg/eie;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v4, v4, v6}, Lg/haz;->ad(Lg/bsx;Lg/byq;Lg/bwb;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lg/edn;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, v0, Lg/gwf;->e:Lg/efx;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lg/dms;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v0, p1, Lg/efx;->an:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lg/efx;->au:Lg/gwf;

    iget-object v2, v2, Lg/gwf;->f:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-boolean v0, p1, Lg/efx;->aw:Z

    const/4 v2, 0x0

    const/16 v5, 0x8

    if-nez v0, :cond_5

    iget-object v0, p1, Lg/efx;->as:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lg/efx;->bj:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lg/efx;->bd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p1, Lg/efx;->ak:Landroid/widget/TextView;

    const/4 v6, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v7, 0x0

    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/cng;

    instance-of v8, v8, Lg/auj;

    if-eqz v8, :cond_6

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    iget-object v0, p1, Lg/efx;->ak:Landroid/widget/TextView;

    iget-object v8, p1, Lg/efx;->au:Lg/gwf;

    iget-object v8, v8, Lg/gwf;->f:Ljava/lang/String;

    invoke-static {v8}, Lg/eyt;->bq(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const v8, 0x7f1200b6

    goto :goto_1

    :cond_8
    const v8, 0x7f1200b7

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v9, v10, v2

    invoke-virtual {p1, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lg/efx;->ak:Landroid/widget/TextView;

    if-nez v7, :cond_9

    iget-object v7, p1, Lg/efx;->au:Lg/gwf;

    iget-object v7, v7, Lg/gwf;->f:Ljava/lang/String;

    invoke-static {v7}, Lg/eyt;->bq(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    const/16 v7, 0x8

    goto :goto_2

    :cond_9
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v6, :cond_b

    iget-object v0, p1, Lg/efx;->au:Lg/gwf;

    iget-object v0, v0, Lg/gwf;->f:Ljava/lang/String;

    invoke-static {v0}, Lg/eyt;->bq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p1, Lg/efx;->bb:Lg/efx;

    invoke-static {v0}, Lg/efx;->bk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    iget-object v0, p1, Lg/efx;->ar:Lg/sd;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v3}, Lg/cle;->ak(I)V

    iput-object v4, p1, Lg/efx;->ar:Lg/sd;

    :cond_c
    invoke-static {v1}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f12047a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    iget-object v0, p1, Lg/efx;->bd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lg/efx;->as:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lg/efx;->ay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0902a1

    invoke-virtual {p1, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lg/efx;->ay:Landroid/widget/TextView;

    const v1, 0x7f1203fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1}, Lg/efx;->bq()V

    return-void

    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v6, :cond_f

    iget-object v0, p1, Lg/efx;->au:Lg/gwf;

    iget-object v0, v0, Lg/gwf;->f:Ljava/lang/String;

    invoke-static {v0}, Lg/eyt;->bq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lg/efx;->bb:Lg/efx;

    const v3, 0x7f1200e8

    invoke-static {v0, v3}, Lg/gm;->c(Landroid/content/Context;I)V

    goto :goto_3

    :cond_e
    invoke-virtual {p1}, Lg/efx;->bq()V

    :cond_f
    :goto_3
    iget-object v0, p1, Lg/efx;->at:Lg/dfi;

    if-nez v0, :cond_11

    iget-boolean v0, p1, Lg/efx;->ba:Z

    invoke-virtual {p1, p1, v0}, Lg/efx;->e(Lg/efx;Z)Lg/csm;

    move-result-object v0

    new-instance v3, Lg/dfi;

    iget-object v4, p1, Lg/efx;->bb:Lg/efx;

    invoke-direct {v3, v4, v1}, Lg/dbv;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p1, Lg/efx;->at:Lg/dfi;

    iget-boolean v1, p1, Lg/efx;->ax:Z

    if-eqz v1, :cond_10

    new-instance v1, Lg/ccd;

    invoke-virtual {p1}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-direct {v1, p1, v4, v0}, Lg/ccd;-><init>(Lg/efx;ILg/csm;)V

    const-class v0, Lg/ajr;

    invoke-virtual {v3, v0, v1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v0, p1, Lg/efx;->at:Lg/dfi;

    new-instance v1, Lg/fsk;

    invoke-direct {v1, v2}, Lg/fsk;-><init>(I)V

    const-class v2, Lg/edn;

    invoke-virtual {v0, v2, v1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    :cond_10
    iget-object v0, p1, Lg/efx;->at:Lg/dfi;

    iget-boolean v1, p1, Lg/efx;->ba:Z

    invoke-virtual {p1, p1, v1}, Lg/efx;->e(Lg/efx;Z)Lg/csm;

    move-result-object v1

    const-class v2, Lg/auj;

    invoke-virtual {v0, v2, v1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v0, p1, Lg/efx;->bd:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lg/efx;->at:Lg/dfi;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    return-void

    :cond_11
    invoke-virtual {v0, v1}, Lg/dbv;->h(Ljava/util/ArrayList;)V

    iget-object p1, p1, Lg/efx;->at:Lg/dfi;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    :cond_12
    :goto_4
    return-void
.end method

.method public dq(Lg/hcl;)Landroid/graphics/Bitmap;
    .locals 6

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lg/fzx;

    iget-object v1, p1, Lg/hcl;->d:Ljava/lang/String;

    iget-object v2, p1, Lg/hcl;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v0, Lg/dlv;->mn:Lorg/json/JSONObject;

    invoke-static {v1, v2}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v0, Lg/dlv;->mn:Lorg/json/JSONObject;

    invoke-static {v2, v1}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lg/dlv;->mn:Lorg/json/JSONObject;

    invoke-static {v1, v5}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lg/dlv;->mn:Lorg/json/JSONObject;

    invoke-static {v2, v1}, Lg/dzm;->ae(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v4

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v4

    :cond_3
    iget-object v2, v0, Lg/fzx;->ab:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    invoke-static {}, Lg/fzn;->j()Lg/fzn;

    move-result-object v2

    iget-object v2, v2, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/p;

    iget-object v3, v0, Lg/dlv;->ig:Lg/dmm;

    new-instance v4, Lg/dzh;

    const/16 v5, 0xf

    invoke-direct {v4, p0, p1, v1, v5}, Lg/dzh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v3, v1, v4}, Lg/ayp;->dq(Lg/dmm;Ljava/lang/String;Lg/ebz;)V

    iget-object p1, v0, Lg/fzx;->ab:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public e(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo$Builder;

    invoke-static {v0, p1}, Lg/dgd;->ab(Landroid/view/ContentInfo$Builder;Landroid/net/Uri;)V

    return-void
.end method

.method public f(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/yx;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lg/yx;

    iget-object p1, p1, Lg/yx;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, p1

    return v1
.end method

.method public g(I)Z
    .locals 3

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lg/ka;

    iget-object v1, v0, Lg/ka;->u:Lg/dbv;

    invoke-virtual {v1, p1}, Lg/dbv;->f(I)Lg/cng;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lg/bfr;

    if-eqz v1, :cond_1

    check-cast p1, Lg/bfr;

    iget-object p1, p1, Lg/bfr;->c:Ljava/lang/String;

    iget-object v0, v0, Lg/ka;->p:Lg/ka;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    return v2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public h(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public i(Lg/x;)V
    .locals 2

    iget-object p1, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast p1, Lg/aco;

    iget-object p1, p1, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lg/dmr;

    iget-object p1, p1, Lg/dmr;->a:Lf/a/e;

    new-instance v0, Lg/eie;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lg/eie;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lg/cdy;->l(Lg/btp;)V

    return-void
.end method

.method public j()I
    .locals 2

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/b;

    iget v1, v0, Landroidx/recyclerview/widget/b;->dn:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->er()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public k(Landroid/view/View;Lg/anp;)Lg/anp;
    .locals 17

    invoke-virtual/range {p2 .. p2}, Lg/anp;->e()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v2, v1, Lg/emr;->n:Ljava/lang/Object;

    check-cast v2, Lg/dre;

    iget-object v3, v2, Lg/dre;->aw:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lg/anp;->e()I

    move-result v4

    iget-object v5, v2, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_11

    iget-object v5, v2, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v8, v2, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v8}, Landroid/view/View;->isShown()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_f

    iget-object v8, v2, Lg/dre;->by:Landroid/graphics/Rect;

    if-nez v8, :cond_0

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v2, Lg/dre;->by:Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v2, Lg/dre;->cb:Landroid/graphics/Rect;

    :cond_0
    iget-object v8, v2, Lg/dre;->by:Landroid/graphics/Rect;

    iget-object v10, v2, Lg/dre;->cb:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Lg/anp;->h()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lg/anp;->e()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lg/anp;->i()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lg/anp;->f()I

    move-result v14

    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v11, v2, Lg/dre;->bq:Landroid/view/ViewGroup;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1d

    if-lt v12, v13, :cond_1

    sget-boolean v12, Lg/dnh;->a:Z

    invoke-static {v11, v8, v10}, Lg/can;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    sget-boolean v12, Lg/dnh;->a:Z

    const/4 v13, 0x2

    if-nez v12, :cond_2

    sput-boolean v9, Lg/dnh;->a:Z

    :try_start_0
    const-class v12, Landroid/view/View;

    const-string v14, "computeFitSystemWindows"

    new-array v15, v13, [Ljava/lang/Class;

    const-class v16, Landroid/graphics/Rect;

    aput-object v16, v15, v7

    aput-object v16, v15, v9

    invoke-virtual {v12, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Lg/dnh;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v12}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v12

    if-nez v12, :cond_2

    sget-object v12, Lg/dnh;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v12, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_2
    :goto_0
    sget-object v12, Lg/dnh;->b:Ljava/lang/reflect/Method;

    if-eqz v12, :cond_3

    :try_start_1
    new-array v13, v13, [Ljava/lang/Object;

    aput-object v8, v13, v7

    aput-object v10, v13, v9

    invoke-virtual {v12, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :cond_3
    :goto_1
    iget v10, v8, Landroid/graphics/Rect;->top:I

    iget v11, v8, Landroid/graphics/Rect;->left:I

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v12, v2, Lg/dre;->bq:Landroid/view/ViewGroup;

    invoke-static {v12}, Lg/goi;->u(Landroid/view/View;)Lg/anp;

    move-result-object v12

    if-nez v12, :cond_4

    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v12}, Lg/anp;->h()I

    move-result v13

    :goto_2
    if-nez v12, :cond_5

    const/4 v12, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v12}, Lg/anp;->i()I

    move-result v12

    :goto_3
    iget v14, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v14, v10, :cond_7

    iget v14, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v14, v11, :cond_7

    iget v14, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v14, v8, :cond_6

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    iput v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v8, 0x1

    :goto_5
    if-lez v10, :cond_8

    iget-object v10, v2, Lg/dre;->at:Landroid/view/View;

    if-nez v10, :cond_8

    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v10, v2, Lg/dre;->at:Landroid/view/View;

    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v14, 0x33

    const/4 v15, -0x1

    invoke-direct {v10, v15, v11, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v13, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v11, v2, Lg/dre;->bq:Landroid/view/ViewGroup;

    iget-object v12, v2, Lg/dre;->at:Landroid/view/View;

    invoke-virtual {v11, v12, v15, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_8
    iget-object v10, v2, Lg/dre;->at:Landroid/view/View;

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v14, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v11, v14, :cond_9

    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v11, v13, :cond_9

    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v11, v12, :cond_a

    :cond_9
    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v11, v2, Lg/dre;->at:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_6
    iget-object v10, v2, Lg/dre;->at:Landroid/view/View;

    if-eqz v10, :cond_b

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    :goto_7
    if-eqz v9, :cond_d

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, v2, Lg/dre;->at:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v11

    and-int/lit16 v11, v11, 0x2000

    if-eqz v11, :cond_c

    const v11, 0x7f060006

    invoke-static {v3, v11}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result v3

    goto :goto_8

    :cond_c
    const v11, 0x7f060005

    invoke-static {v3, v11}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result v3

    :goto_8
    invoke-virtual {v10, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_d
    iget-boolean v3, v2, Lg/dre;->bv:Z

    if-nez v3, :cond_e

    if-eqz v9, :cond_e

    const/4 v4, 0x0

    :cond_e
    move v3, v9

    move v9, v8

    goto :goto_9

    :cond_f
    iget v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v3, :cond_10

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v3, 0x0

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_12

    iget-object v8, v2, Lg/dre;->am:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_11
    const/4 v3, 0x0

    :cond_12
    :goto_a
    iget-object v2, v2, Lg/dre;->at:Landroid/view/View;

    if-eqz v2, :cond_14

    if-eqz v3, :cond_13

    const/4 v6, 0x0

    :cond_13
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    if-eq v0, v4, :cond_15

    invoke-virtual/range {p2 .. p2}, Lg/anp;->h()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lg/anp;->i()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lg/anp;->f()I

    move-result v3

    move-object/from16 v5, p2

    invoke-virtual {v5, v0, v4, v2, v3}, Lg/anp;->g(IIII)Lg/anp;

    move-result-object v0

    :goto_b
    move-object/from16 v2, p1

    goto :goto_c

    :cond_15
    move-object/from16 v5, p2

    move-object v0, v5

    goto :goto_b

    :goto_c
    invoke-static {v2, v0}, Lg/goi;->t(Landroid/view/View;Lg/anp;)Lg/anp;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->fd()I

    move-result v0

    return v0
.end method

.method public m(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/yx;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lg/yx;

    iget-object p1, p1, Lg/yx;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p1

    return v1
.end method

.method public o(I)V
    .locals 2

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lg/aco;

    iget-object v0, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v0, Lg/dmr;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lg/dmr;->l(IZ)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/a;

    invoke-virtual {v0}, Landroidx/fragment/app/a;->j()V

    return-void
.end method

.method public onConnectionFailed(Lg/nk;)V
    .locals 3

    iget v0, p0, Lg/emr;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbat;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbat;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbat;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzbat;->d:Lcom/google/android/gms/internal/ads/zzbaz;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbat;->a:Lcom/google/android/gms/internal/ads/zzbaw;

    if-eqz v2, :cond_0

    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzbat;->a:Lcom/google/android/gms/internal/ads/zzbaw;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbat;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_0
    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lg/dko;

    invoke-interface {v0, p1}, Lg/dko;->onConnectionFailed(Lg/nk;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public r(Lg/ftn;)Z
    .locals 3

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lg/esf;

    iget-object v1, v0, Lg/esf;->p:Lg/ftn;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return v2

    :cond_0
    move-object v1, p1

    check-cast v1, Lg/gyg;

    iget-object v1, v1, Lg/gyg;->ax:Lg/far;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lg/esf;->v:Lg/caf;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lg/caf;->r(Lg/ftn;)Z

    move-result p1

    return p1

    :cond_1
    return v2
.end method

.method public s(Landroidx/recyclerview/widget/p;I)V
    .locals 0

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo$Builder;

    invoke-static {v0, p1}, Lg/dgd;->e(Landroid/view/ContentInfo$Builder;Landroid/os/Bundle;)V

    return-void
.end method

.method public v(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lcom/android/billingclient/api/ProxyBillingActivityV2;

    check-cast p1, Lg/etm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lg/etm;->getData()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ProxyBillingActivityV2"

    invoke-static {v1, v2}, Lg/gbs;->d(Landroid/content/Intent;Ljava/lang/String;)Lg/ejd;

    move-result-object v2

    iget v2, v2, Lg/ejd;->a:I

    iget-object v3, v0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->d:Landroid/os/ResultReceiver;

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p1}, Lg/etm;->getResultCode()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lg/etm;->getResultCode()I

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public x(Lg/ftn;Z)V
    .locals 2

    instance-of v0, p1, Lg/gyg;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lg/gyg;

    iget-object v0, v0, Lg/gyg;->aw:Lg/ftn;

    invoke-virtual {v0}, Lg/ftn;->aa()Lg/ftn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/ftn;->at(Z)V

    :cond_0
    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lg/esf;

    iget-object v0, v0, Lg/esf;->v:Lg/caf;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lg/caf;->x(Lg/ftn;Z)V

    :cond_1
    return-void
.end method

.method public y(Lg/cwx;)Ljava/util/Map;
    .locals 8

    invoke-virtual {p1}, Lg/cwx;->bm()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1

    :cond_0
    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lg/dwg;

    iget-object v0, v0, Lg/dwg;->o:Lg/emr;

    invoke-virtual {v0, p1}, Lg/emr;->ad(Lg/cwx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lg/cwx;->c()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lg/evh;->m(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1

    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cwx;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/cwx;

    invoke-virtual {v5}, Lg/cwx;->q()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lg/btl;

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v6, v5, v7}, Lg/btl;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v5, v6

    :cond_4
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method public z(Lg/cwx;Lg/cwx;Lg/cwx;)Lg/cwx;
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object v2, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v2, Lg/dwg;

    invoke-virtual {v2, p1}, Lg/dwg;->w(Lg/cwx;)Lg/cci;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lg/acq;->av:Lg/acq;

    iget-object v3, v2, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/by;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v2, Lg/cci;->ak:Lg/ve;

    iget-object v3, v3, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v3}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lg/emr;->y(Lg/cwx;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lg/jb;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4, v0}, Lg/jb;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lg/cci;->bm(Lg/jb;)V

    iget-object v3, v2, Lg/cci;->y:Ljava/util/List;

    new-instance v4, Lg/by;

    invoke-direct {v4, v3, v0}, Lg/by;-><init>(Ljava/util/List;Ljava/util/HashMap;)V

    invoke-virtual {v2, v4}, Lg/lh;->m(Lg/eue;)V

    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, v0, Lg/by;->b:Ljava/util/HashMap;

    invoke-virtual {p2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_3

    move-object p2, v1

    :cond_3
    invoke-static {v1, p2}, Lg/emr;->p(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :cond_4
    invoke-virtual {p0, p1}, Lg/emr;->y(Lg/cwx;)Ljava/util/Map;

    move-result-object p2

    invoke-static {v1, p2}, Lg/emr;->p(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1}, Lg/cwx;->bj()Lg/cwx;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lg/emr;->y(Lg/cwx;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, v0}, Lg/emr;->p(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1}, Lg/cwx;->bj()Lg/cwx;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p3, p2}, Lg/emr;->ac(Lg/cwx;Ljava/util/Map;)Lg/cwx;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_2
    return-object v0
.end method

.method public zza()V
    .locals 3

    iget v0, p0, Lg/emr;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzena;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzena;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzena;->c:Lcom/google/android/gms/internal/ads/zzdfj;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_0
    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbno;

    const-string v1, "Rejecting reference for JS Engine."

    invoke-static {v1}, Lg/agd;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzhq:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to create JS engine reference."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "SdkJavascriptFactory.createNewReference.FailureCallback"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcav;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcav;->zzg()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 0

    iget p1, p0, Lg/emr;->c:I

    return-void
.end method

.method public bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lg/emr;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzena;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdfj;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzena;

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzena;->c:Lcom/google/android/gms/internal/ads/zzdfj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzk()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_0
    iget-object v0, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeag;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeag;->d:Lcom/google/android/gms/internal/ads/zzczh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzczh;->zzdo(Lcom/google/android/gms/internal/ads/zzfff;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    const-string v0, "sendMessageToNativeJs"

    iget-object v1, p0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbmm;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

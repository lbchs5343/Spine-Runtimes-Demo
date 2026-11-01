.class public final Lg/der;
.super Lcom/google/android/gms/internal/ads/zzbzg;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/ArrayList;

.field public static final b:Ljava/util/ArrayList;

.field public static final c:Ljava/util/ArrayList;

.field public static final d:Ljava/util/ArrayList;


# instance fields
.field public final aa:Ljava/util/ArrayList;

.field public final ab:Ljava/util/ArrayList;

.field public final ac:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ad:Landroid/graphics/Point;

.field public ae:Landroid/content/Context;

.field public final af:Z

.field public final ag:Ljava/util/ArrayList;

.field public final ah:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ai:Ljava/lang/String;

.field public final aj:Z

.field public final ak:Lcom/google/android/gms/internal/ads/zzges;

.field public e:Lcom/google/android/gms/internal/ads/zzbue;

.field public final f:Z

.field public final g:Lg/akx;

.field public final h:Ljava/util/concurrent/ScheduledExecutorService;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/lang/String;

.field public final k:Z

.field public final m:Lcom/google/android/gms/internal/ads/zzbds;

.field public n:Landroid/graphics/Point;

.field public final o:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final p:Lcom/google/android/gms/internal/ads/zzavc;

.field public final q:Lcom/google/android/gms/internal/ads/zzflr;

.field public final r:Lcom/google/android/gms/internal/ads/zzdsr;

.field public s:Ljava/lang/String;

.field public final t:Lg/bsn;

.field public final u:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final v:Lcom/google/android/gms/internal/ads/zzffs;

.field public final w:Lg/sq;

.field public final x:Lcom/google/android/gms/internal/ads/zzfgn;

.field public final y:Ljava/lang/String;

.field public final z:Lcom/google/android/gms/internal/ads/zzchk;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "/pcs/click"

    const-string v2, "/dbm/clk"

    const-string v3, "/aclk"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lg/der;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ".doubleclick.net"

    const-string v2, ".googleadservices.com"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lg/der;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v3, "/pagead/conversion"

    const-string v4, "/dbm/ad"

    const-string v5, "/pagead/adview"

    const-string v6, "/pcs/view"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lg/der;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v3, ".googlesyndication.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lg/der;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzchk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavc;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzges;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzdsr;Lcom/google/android/gms/internal/ads/zzflr;Lg/akx;Lcom/google/android/gms/internal/ads/zzbds;Lcom/google/android/gms/internal/ads/zzffs;Lg/sq;Lg/bsn;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbzg;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lg/der;->ad:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lg/der;->n:Landroid/graphics/Point;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lg/der;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lg/der;->ah:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lg/der;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lg/der;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lg/der;->z:Lcom/google/android/gms/internal/ads/zzchk;

    iput-object p2, p0, Lg/der;->ae:Landroid/content/Context;

    iput-object p3, p0, Lg/der;->p:Lcom/google/android/gms/internal/ads/zzavc;

    iput-object p11, p0, Lg/der;->v:Lcom/google/android/gms/internal/ads/zzffs;

    iput-object p4, p0, Lg/der;->x:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p5, p0, Lg/der;->ak:Lcom/google/android/gms/internal/ads/zzges;

    iput-object p6, p0, Lg/der;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p7, p0, Lg/der;->r:Lcom/google/android/gms/internal/ads/zzdsr;

    iput-object p8, p0, Lg/der;->q:Lcom/google/android/gms/internal/ads/zzflr;

    iput-object p9, p0, Lg/der;->g:Lg/akx;

    iput-object p10, p0, Lg/der;->m:Lcom/google/android/gms/internal/ads/zzbds;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzgV:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object p2, Lg/edt;->a:Lg/edt;

    iget-object p3, p2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lg/der;->aj:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzgU:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object p2, p2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lg/der;->af:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzgX:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lg/der;->k:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzgZ:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lg/der;->f:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzgY:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lg/der;->ai:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzha:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lg/der;->y:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzhb:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lg/der;->j:Ljava/lang/String;

    iput-object p12, p0, Lg/der;->w:Lg/sq;

    iput-object p13, p0, Lg/der;->t:Lg/bsn;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzhc:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzhd:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lg/der;->al(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lg/der;->ag:Ljava/util/ArrayList;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzhe:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lg/der;->al(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lg/der;->ab:Ljava/util/ArrayList;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzhf:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lg/der;->al(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lg/der;->i:Ljava/util/ArrayList;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzhg:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lg/der;->al(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lg/der;->aa:Ljava/util/ArrayList;

    return-void

    :cond_0
    sget-object p1, Lg/der;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lg/der;->ag:Ljava/util/ArrayList;

    sget-object p1, Lg/der;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lg/der;->ab:Ljava/util/ArrayList;

    sget-object p1, Lg/der;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lg/der;->i:Ljava/util/ArrayList;

    sget-object p1, Lg/der;->a:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static final al(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    const-string v0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfxf;->zzd(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final am(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&adurl="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "?adurl="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_0
    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    new-instance p0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    const-string v3, "&"

    invoke-static {p0, p1, v2, p2, v3}, Lg/awf;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static an(Lg/dcy;Lcom/google/android/gms/internal/ads/zzbzl;)Lcom/google/android/gms/internal/ads/zzfkl;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfko;->zza()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeg;->zze:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgei;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/pq;

    check-cast p0, Lcom/google/android/gms/internal/ads/g;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/g;->af:Lcom/google/android/gms/internal/ads/zzhgg;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfkl;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbzl;->zzb:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfkl;->zzd(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfkl;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbzl;->zzd:Lg/aeh;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lg/aeh;->zzp:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfkl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbzl;->zzd:Lg/aeh;

    iget-object p1, p1, Lg/aeh;->zzm:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfkl;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v0, "SignalGeneratorImpl.getConfiguredCriticalUserJourney"

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzbzz;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-object v1
.end method

.method public static ao(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public final ap()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzjg:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v2, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzjj:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v2, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzjn:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/der;->ah:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lg/der;->as()V

    :cond_1
    return-void
.end method

.method public final aq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lg/eno;Lg/aeh;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/g;
    .locals 40

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    new-instance v2, Lcom/google/android/gms/internal/ads/zzffm;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzffm;-><init>()V

    const-string v3, "REWARDED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "REWARDED_INTERSTITIAL"

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzffm;->zzp()Lcom/google/android/gms/internal/ads/zzfez;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzfez;->zza(I)Lcom/google/android/gms/internal/ads/zzfez;

    :cond_0
    :goto_0
    move-object/from16 v4, p0

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzffm;->zzp()Lcom/google/android/gms/internal/ads/zzfez;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzfez;->zza(I)Lcom/google/android/gms/internal/ads/zzfez;

    goto :goto_0

    :goto_1
    iget-object v8, v4, Lg/der;->z:Lcom/google/android/gms/internal/ads/zzchk;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzchk;->zzp()Lg/my;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzcvu;-><init>()V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzcvu;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcvu;

    if-nez p2, :cond_2

    const-string v10, "adUnitId"

    goto :goto_2

    :cond_2
    move-object/from16 v10, p2

    :goto_2
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzffm;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffm;

    if-nez p5, :cond_3

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v25, Landroid/os/Bundle;

    invoke-direct/range {v25 .. v25}, Landroid/os/Bundle;-><init>()V

    new-instance v26, Landroid/os/Bundle;

    invoke-direct/range {v26 .. v26}, Landroid/os/Bundle;-><init>()V

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lg/ddh;->DEFAULT:Lg/ddh;

    invoke-virtual {v10}, Lg/ddh;->b()I

    move-result v37

    new-instance v11, Lg/aeh;

    const/16 v31, 0x0

    const/16 v36, 0x0

    const/16 v12, 0x8

    const-wide/16 v13, -0x1

    const/16 v16, -0x1

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v33, 0x0

    const v35, 0xea60

    const-wide/16 v38, 0x0

    move/from16 v32, v19

    invoke-direct/range {v11 .. v39}, Lg/aeh;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lg/ela;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLg/acl;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJ)V

    goto :goto_3

    :cond_3
    move-object/from16 v11, p5

    :goto_3
    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzffm;->zzH(Lg/aeh;)Lcom/google/android/gms/internal/ads/zzffm;

    const/4 v10, 0x1

    if-nez p4, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, 0x4

    sparse-switch v11, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v3, "BANNER"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_5

    :sswitch_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    goto :goto_5

    :sswitch_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    :sswitch_3
    const-string v3, "APP_OPEN_AD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    goto :goto_5

    :sswitch_4
    const-string v3, "NATIVE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v3, -0x1

    :goto_5
    if-eqz v3, :cond_8

    if-eq v3, v10, :cond_7

    if-eq v3, v7, :cond_7

    if-eq v3, v6, :cond_6

    if-eq v3, v12, :cond_5

    new-instance v0, Lg/eno;

    invoke-direct {v0}, Lg/eno;-><init>()V

    goto :goto_6

    :cond_5
    invoke-static {}, Lg/eno;->zzb()Lg/eno;

    move-result-object v0

    goto :goto_6

    :cond_6
    invoke-static {}, Lg/eno;->zzc()Lg/eno;

    move-result-object v0

    goto :goto_6

    :cond_7
    invoke-static {}, Lg/eno;->zzd()Lg/eno;

    move-result-object v0

    goto :goto_6

    :cond_8
    new-instance v3, Lg/eno;

    sget-object v5, Lg/gin;->a:Lg/gin;

    invoke-direct {v3, v0, v5}, Lg/eno;-><init>(Landroid/content/Context;Lg/gin;)V

    move-object v0, v3

    goto :goto_6

    :cond_9
    move-object/from16 v0, p4

    :goto_6
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzffm;->zzs(Lg/eno;)Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzffm;->zzz(Z)Lcom/google/android/gms/internal/ads/zzffm;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzffm;->zzA(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzffm;->zzJ()Lcom/google/android/gms/internal/ads/zzffo;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzcvu;->zzi(Lcom/google/android/gms/internal/ads/zzffo;)Lcom/google/android/gms/internal/ads/zzcvu;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzcvu;->zzj()Lcom/google/android/gms/internal/ads/zzcvw;

    move-result-object v0

    check-cast v8, Lg/dzh;

    iput-object v0, v8, Lg/dzh;->f:Ljava/lang/Object;

    new-instance v0, Lg/hy;

    invoke-direct {v0}, Lg/hy;-><init>()V

    iput-object v1, v0, Lg/hy;->b:Ljava/lang/String;

    new-instance v1, Lg/dup;

    invoke-direct {v1, v0}, Lg/dup;-><init>(Lg/hy;)V

    iput-object v1, v8, Lg/dzh;->g:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdcd;-><init>()V

    iget-object v0, v8, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcvw;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcvw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, v8, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v0, Lg/dup;

    const-class v1, Lg/dup;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/g;

    iget-object v1, v8, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v1, Lg/dup;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcta;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzcta;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcuz;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzcuz;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdta;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzdta;-><init>()V

    iget-object v5, v8, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzcvw;

    iget-object v6, v8, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v6, Lg/bxr;

    move-object/from16 p1, v0

    move-object/from16 p3, v1

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v5

    move-object/from16 p2, v6

    invoke-direct/range {p1 .. p6}, Lcom/google/android/gms/internal/ads/g;-><init>(Lg/bxr;Lg/dup;Lcom/google/android/gms/internal/ads/zzcuz;Lcom/google/android/gms/internal/ads/zzdta;Lcom/google/android/gms/internal/ads/zzcvw;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x772abbe9 -> :sswitch_4
        -0x1987ba06 -> :sswitch_3
        0x205e3c0e -> :sswitch_2
        0x6e8e03bd -> :sswitch_1
        0x7458732c -> :sswitch_0
    .end sparse-switch
.end method

.method public final ar(Ljava/util/List;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbtv;Z)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzhm:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "The updating URL feature is not enabled."

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzbtv;->zze(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v3, p0, Lg/der;->ab:Ljava/util/ArrayList;

    iget-object v4, p0, Lg/der;->ag:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-static {v2, v4, v3}, Lg/der;->ao(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-le v1, v0, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Multiple google urls found: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v1, v4, v3}, Lg/der;->ao(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Not a Google URL: "

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/agd;->b(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v1

    goto :goto_2

    :cond_4
    new-instance v2, Lg/cao;

    const/4 v5, 0x1

    invoke-direct {v2, p0, v1, p2, v5}, Lg/cao;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v1, p0, Lg/der;->ak:Lcom/google/android/gms/internal/ads/zzges;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzges;->zzb(Ljava/util/concurrent/Callable;)Lg/dcy;

    move-result-object v2

    iget-object v5, p0, Lg/der;->e:Lcom/google/android/gms/internal/ads/zzbue;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbue;->zzb:Ljava/util/Map;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lg/acy;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lg/acy;-><init>(Lg/der;I)V

    invoke-static {v2, v5, v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v1

    goto :goto_2

    :cond_5
    const-string v1, "Asset view map is empty."

    invoke-static {v1}, Lg/agd;->k(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzd(Ljava/lang/Iterable;)Lg/dcy;

    move-result-object p1

    new-instance p2, Lg/exn;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p3, p4, v0}, Lg/exn;-><init>(Lg/der;Lcom/google/android/gms/internal/ads/zzbtv;ZI)V

    iget-object p3, p0, Lg/der;->z:Lcom/google/android/gms/internal/ads/zzchk;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzchk;->zzC()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final as()V
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbes;->zzb:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/der;->w:Lg/sq;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, v0}, Lg/sq;->j(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lg/sq;->j(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzkK:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lg/eig;

    invoke-direct {v0, p0}, Lg/eig;-><init>(Lg/der;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzk(Lcom/google/android/gms/internal/ads/zzgdo;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v0

    move-object v1, p0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lg/der;->ae:Landroid/content/Context;

    sget-object v0, Lg/bme;->BANNER:Lg/bme;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lg/der;->aq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lg/eno;Lg/aeh;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/g;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/g;->ai:Lcom/google/android/gms/internal/ads/zzhgg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dcy;

    :goto_0
    new-instance v2, Lg/eig;

    invoke-direct {v2, p0}, Lg/eig;-><init>(Lg/der;)V

    iget-object v3, v1, Lg/der;->z:Lcom/google/android/gms/internal/ads/zzchk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzchk;->zzC()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final at(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgdz;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdoc;

    iget-object v1, p0, Lg/der;->x:Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zza()Lg/dcy;

    move-result-object v1

    new-instance v2, Lg/dlj;

    invoke-direct {v2, p0, v0, p1}, Lg/dlj;-><init>(Lg/der;[Lcom/google/android/gms/internal/ads/zzdoc;Ljava/lang/String;)V

    iget-object p1, p0, Lg/der;->ak:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v1

    new-instance v2, Lg/efr;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v0, v4}, Lg/efr;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-interface {v1, v2, p1}, Lg/dcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdz;->zzu(Lg/dcy;)Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzhn:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lg/der;->h:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgei;->zzo(Lg/dcy;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lg/dcy;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgdz;

    new-instance v1, Lg/eor;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lg/eor;-><init>(I)V

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgdz;

    new-instance v1, Lg/eor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lg/eor;-><init>(I)V

    const-class v2, Ljava/lang/Exception;

    invoke-static {v0, v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zze(Lg/dcy;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdz;

    return-object p1
.end method

.method public final au(Ljava/util/List;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbtv;Z)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzhm:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string p1, "The updating URL feature is not enabled."

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzbtv;->zze(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance v0, Lg/cao;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Lg/cao;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, p0, Lg/der;->ak:Lcom/google/android/gms/internal/ads/zzges;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzges;->zzb(Ljava/util/concurrent/Callable;)Lg/dcy;

    move-result-object p2

    iget-object v0, p0, Lg/der;->e:Lcom/google/android/gms/internal/ads/zzbue;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbue;->zzb:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lg/acy;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/acy;-><init>(Lg/der;I)V

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p1, "Asset view map is empty."

    invoke-static {p1}, Lg/agd;->k(Ljava/lang/String;)V

    :goto_0
    new-instance p1, Lg/exn;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p3, p4, v0}, Lg/exn;-><init>(Lg/der;Lcom/google/android/gms/internal/ads/zzbtv;ZI)V

    iget-object p3, p0, Lg/der;->z:Lcom/google/android/gms/internal/ads/zzchk;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzchk;->zzC()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zze(Lg/bjq;Lg/bjq;Ljava/lang/String;Lg/bjq;)Lg/bjq;
    .locals 3

    iget-object v0, p0, Lg/der;->m:Lcom/google/android/gms/internal/ads/zzbds;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzjt:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Lg/bpp;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p2}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/eab;

    invoke-static {p4}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lg/gwy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbds;->zzg(Landroid/content/Context;Lg/eab;Ljava/lang/String;Lg/gwy;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbes;->zzb:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg/der;->w:Lg/sq;

    monitor-enter p1

    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {p1, p2}, Lg/sq;->j(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lg/sq;->j(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbes;->zza:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lg/der;->t:Lg/bsn;

    invoke-virtual {p1}, Lg/bsn;->h()V

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbds;->zzb()Lg/bpr;

    move-result-object p1

    new-instance p2, Lg/bpp;

    invoke-direct {p2, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final zzf(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbzl;Lcom/google/android/gms/internal/ads/zzbze;)V
    .locals 9

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzci:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v3, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrv;->zza:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzbzl;->zzd:Lg/aeh;

    iget-wide v3, v3, Lg/aeh;->zzz:J

    invoke-virtual {v6, v1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrv;->zzb:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lg/ti;->a:Lg/ti;

    iget-object v3, v3, Lg/ti;->v:Lg/czz;

    invoke-static {v3, v6, v1}, Lg/dub;->m(Lg/czz;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lg/der;->ae:Landroid/content/Context;

    const/16 v3, 0x16

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzfjz;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfka;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzfka;->zzi()Lcom/google/android/gms/internal/ads/zzfka;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzbzl;->zzb:Ljava/lang/String;

    const-string v3, "UNKNOWN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzhl:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_1
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzbzl;->zzd:Lg/aeh;

    invoke-static {v3}, Lg/dzm;->w(Lg/aeh;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown format is no longer supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzg(Ljava/lang/Throwable;)Lg/dcy;

    move-result-object v1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgei;->zzg(Ljava/lang/Throwable;)Lg/dcy;

    move-result-object v2

    move-object v8, v2

    move-object v2, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzkK:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v2, Lg/cao;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p2, v6, v3}, Lg/cao;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzges;->zzb(Ljava/util/concurrent/Callable;)Lg/dcy;

    move-result-object v2

    new-instance v3, Lg/fco;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v1

    move-object v8, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lg/der;->ae:Landroid/content/Context;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzbzl;->zza:Ljava/lang/String;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzbzl;->zzb:Ljava/lang/String;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzbzl;->zzc:Lg/eno;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzbzl;->zzd:Lg/aeh;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lg/der;->aq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lg/eno;Lg/aeh;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/g;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/g;->ai:Lcom/google/android/gms/internal/ads/zzhgg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lg/dcy;

    move-object v8, v2

    move-object v2, v0

    :goto_0
    new-instance v0, Lg/fzn;

    const/16 v6, 0xb

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lg/fzn;-><init>(Ljava/lang/Object;Lg/dcy;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v1, v0

    iget-object v2, p0, Lg/der;->z:Lcom/google/android/gms/internal/ads/zzchk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzchk;->zzC()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbue;)V
    .locals 1

    iput-object p1, p0, Lg/der;->e:Lcom/google/android/gms/internal/ads/zzbue;

    iget-object p1, p0, Lg/der;->x:Lcom/google/android/gms/internal/ads/zzfgn;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfgn;->zzc(I)V

    return-void
.end method

.method public final zzh(Ljava/util/List;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbtv;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lg/der;->ar(Ljava/util/List;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbtv;Z)V

    return-void
.end method

.method public final zzi(Ljava/util/List;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbtv;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lg/der;->au(Ljava/util/List;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbtv;Z)V

    return-void
.end method

.method public final zzj(Lg/bjq;)V
    .locals 12

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzjf:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v2, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzhk:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lg/der;->ap()V

    :cond_1
    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/webkit/WebView;

    if-nez v3, :cond_2

    const-string p1, "The webView cannot be null."

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v10, Lg/ju;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    iget-object v11, p0, Lg/der;->t:Lg/bsn;

    invoke-direct {v10, v3, v11, p1}, Lg/ju;-><init>(Landroid/webkit/WebView;Lg/bsn;Lcom/google/android/gms/internal/ads/zzges;)V

    new-instance v2, Lg/ad;

    iget-object v4, p0, Lg/der;->p:Lcom/google/android/gms/internal/ads/zzavc;

    iget-object v5, p0, Lg/der;->r:Lcom/google/android/gms/internal/ads/zzdsr;

    iget-object v6, p0, Lg/der;->q:Lcom/google/android/gms/internal/ads/zzflr;

    iget-object v7, p0, Lg/der;->v:Lcom/google/android/gms/internal/ads/zzffs;

    iget-object v8, p0, Lg/der;->w:Lg/sq;

    iget-object v9, p0, Lg/der;->t:Lg/bsn;

    invoke-direct/range {v2 .. v10}, Lg/ad;-><init>(Landroid/webkit/WebView;Lcom/google/android/gms/internal/ads/zzavc;Lcom/google/android/gms/internal/ads/zzdsr;Lcom/google/android/gms/internal/ads/zzflr;Lcom/google/android/gms/internal/ads/zzffs;Lg/sq;Lg/bsn;Lg/ju;)V

    const-string p1, "gmaSdk"

    invoke-virtual {v3, v2, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzjp:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzs()V

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbes;->zza:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v11}, Lg/bsn;->h()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzjq:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaj;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lg/dwz;

    const/4 v4, 0x1

    invoke-direct {v3, v10, v4}, Lg/dwz;-><init>(Lg/ju;I)V

    int-to-long v6, p1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lg/der;->ap()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final zzk(Lg/bjq;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzhm:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    iget-object v0, p0, Lg/der;->e:Lcom/google/android/gms/internal/ads/zzbue;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbue;->zza:Landroid/view/View;

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    const/4 v2, 0x0

    aget v2, v1, v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    sub-int/2addr v2, v1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lg/der;->ad:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/der;->ad:Landroid/graphics/Point;

    iput-object v0, p0, Lg/der;->n:Landroid/graphics/Point;

    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object v0, p0, Lg/der;->ad:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lg/der;->p:Lcom/google/android/gms/internal/ads/zzavc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzavc;->zzd(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final zzl(Ljava/util/List;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbtv;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lg/der;->ar(Ljava/util/List;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbtv;Z)V

    return-void
.end method

.method public final zzm(Ljava/util/List;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbtv;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lg/der;->au(Ljava/util/List;Lg/bjq;Lcom/google/android/gms/internal/ads/zzbtv;Z)V

    return-void
.end method

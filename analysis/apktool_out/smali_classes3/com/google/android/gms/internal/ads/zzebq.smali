.class public final Lcom/google/android/gms/internal/ads/zzebq;
.super Lcom/google/android/gms/internal/ads/zzbvi;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzexq;

.field public final b:Lcom/google/android/gms/internal/ads/zzeby;

.field public final c:Lcom/google/android/gms/internal/ads/zzges;

.field public final d:Landroid/content/Context;

.field public final e:Lcom/google/android/gms/internal/ads/zzexs;

.field public final f:Lcom/google/android/gms/internal/ads/zzbwf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzexs;Lcom/google/android/gms/internal/ads/zzexq;Lcom/google/android/gms/internal/ads/zzeby;Lcom/google/android/gms/internal/ads/zzges;Lcom/google/android/gms/internal/ads/zzbwf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbvi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebq;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebq;->e:Lcom/google/android/gms/internal/ads/zzexs;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzebq;->a:Lcom/google/android/gms/internal/ads/zzexq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzebq;->b:Lcom/google/android/gms/internal/ads/zzeby;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzebq;->c:Lcom/google/android/gms/internal/ads/zzges;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzebq;->f:Lcom/google/android/gms/internal/ads/zzbwf;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzbvb;I)Lg/dcy;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzebs;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbvb;->zzc:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzbvb;->zzb:I

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbvb;->zza:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzbvb;->zzd:[B

    iget-boolean v6, p1, Lcom/google/android/gms/internal/ads/zzbvb;->zze:Z

    const-string v5, ""

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzebs;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeyo;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzeyo;-><init>(Lcom/google/android/gms/internal/ads/zzbvb;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebq;->a:Lcom/google/android/gms/internal/ads/zzexq;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzexq;->zza(Lcom/google/android/gms/internal/ads/zzeyo;)Lcom/google/android/gms/internal/ads/zzexq;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzexq;->zzb()Lcom/google/android/gms/internal/ads/zzexr;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzebs;->zzf:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzebq;->c:Lcom/google/android/gms/internal/ads/zzges;

    if-eqz v2, :cond_4

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbvb;->zza:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbeu;->zzb:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x3b

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfwf;->zzc(C)Lcom/google/android/gms/internal/ads/zzfwf;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfxd;->zzb(Lcom/google/android/gms/internal/ads/zzfwf;)Lcom/google/android/gms/internal/ads/zzfxd;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzfxd;->zzc(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzexr;->zza()Lcom/google/android/gms/internal/ads/zzewc;

    move-result-object p1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v2, v4}, Lcom/google/android/gms/internal/ads/zzewc;->zza(Ljava/lang/Object;Landroid/os/Bundle;)Lg/dcy;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzebi;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzebi;-><init>(Lcom/google/android/gms/internal/ads/zzebs;)V

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object p1

    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzexr;->zzb()Lcom/google/android/gms/internal/ads/zzfjr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzebu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebq;->d:Landroid/content/Context;

    const-string v4, ""

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzebq;->f:Lcom/google/android/gms/internal/ads/zzbwf;

    invoke-direct {v1, v2, v4, v5, p2}, Lcom/google/android/gms/internal/ads/zzebu;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbwf;I)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfjl;->zzi:Lcom/google/android/gms/internal/ads/zzfjl;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzfjj;->zzb(Ljava/lang/Object;Lg/dcy;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfjh;->zze(Lcom/google/android/gms/internal/ads/zzfiv;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfjh;->zza()Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzebj;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzebj;-><init>()V

    invoke-static {p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbvb;Lcom/google/android/gms/internal/ads/zzbvm;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzebq;->zzb(Lcom/google/android/gms/internal/ads/zzbvb;I)Lg/dcy;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdz;->zzu(Lg/dcy;)Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzebn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzebn;-><init>(Lcom/google/android/gms/internal/ads/zzebq;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdz;

    new-instance v0, Lg/fnq;

    const/16 v1, 0x1b

    invoke-direct {v0, v1, p2}, Lg/fnq;-><init>(ILjava/lang/Object;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbuv;Lcom/google/android/gms/internal/ads/zzbvm;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzexh;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzexh;-><init>(Lcom/google/android/gms/internal/ads/zzbuv;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzebq;->e:Lcom/google/android/gms/internal/ads/zzexs;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzexs;->zza(Lcom/google/android/gms/internal/ads/zzexh;)Lcom/google/android/gms/internal/ads/zzexs;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzexs;->zzb()Lcom/google/android/gms/internal/ads/zzext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzext;->zzb()Lcom/google/android/gms/internal/ads/zzfjr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzebk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzebk;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzebl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzebl;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfjl;->zze:Lcom/google/android/gms/internal/ads/zzfjl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgei;->zzi()Lg/dcy;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfjj;->zzb(Ljava/lang/Object;Lg/dcy;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzebm;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzebm;-><init>(Lcom/google/android/gms/internal/ads/zzext;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfjh;->zzf(Lcom/google/android/gms/internal/ads/zzgdp;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzfjh;->zze(Lcom/google/android/gms/internal/ads/zzfiv;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfjh;->zzf(Lcom/google/android/gms/internal/ads/zzgdp;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfjh;->zza()Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdz;->zzu(Lg/dcy;)Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzebn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzebn;-><init>(Lcom/google/android/gms/internal/ads/zzebq;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgdz;

    new-instance v1, Lg/fnq;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, p2}, Lg/fnq;-><init>(ILjava/lang/Object;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcaj;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgei;->zzr(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgee;Ljava/util/concurrent/Executor;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzben;->zzf:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzebq;->b:Lcom/google/android/gms/internal/ads/zzeby;

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzebo;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzebo;-><init>(Lcom/google/android/gms/internal/ads/zzeby;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzebq;->c:Lcom/google/android/gms/internal/ads/zzges;

    invoke-interface {p1, v0, p2}, Lg/dcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void
.end method

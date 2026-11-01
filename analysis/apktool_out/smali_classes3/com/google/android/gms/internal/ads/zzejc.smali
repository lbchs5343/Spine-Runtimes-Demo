.class public final Lcom/google/android/gms/internal/ads/zzejc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzeiv;

.field public final b:Lcom/google/android/gms/internal/ads/zzfkl;

.field public final c:Lcom/google/android/gms/internal/ads/zzflr;

.field public final d:Lcom/google/android/gms/internal/ads/zzeif;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/google/android/gms/internal/ads/zzfjr;

.field public final g:Ljava/util/concurrent/ScheduledExecutorService;

.field public final h:Lcom/google/android/gms/internal/ads/zzdsh;

.field public final i:Lcom/google/android/gms/internal/ads/zzefg;

.field public final j:Lcom/google/android/gms/internal/ads/zzcwo;

.field public final k:Landroid/content/Context;

.field public final l:Lcom/google/android/gms/internal/ads/zzfln;

.field public final m:Lcom/google/android/gms/internal/ads/zzcrt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfjr;Lcom/google/android/gms/internal/ads/zzeiv;Lcom/google/android/gms/internal/ads/zzcwo;Lcom/google/android/gms/internal/ads/zzfln;Lcom/google/android/gms/internal/ads/zzflr;Lcom/google/android/gms/internal/ads/zzcrt;Lcom/google/android/gms/internal/ads/zzges;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzefg;Lcom/google/android/gms/internal/ads/zzfkl;Lcom/google/android/gms/internal/ads/zzeif;Lcom/google/android/gms/internal/ads/zzdsh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejc;->k:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejc;->f:Lcom/google/android/gms/internal/ads/zzfjr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzejc;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzejc;->j:Lcom/google/android/gms/internal/ads/zzcwo;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzejc;->l:Lcom/google/android/gms/internal/ads/zzfln;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzejc;->c:Lcom/google/android/gms/internal/ads/zzflr;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzejc;->m:Lcom/google/android/gms/internal/ads/zzcrt;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzejc;->e:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzejc;->g:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzejc;->i:Lcom/google/android/gms/internal/ads/zzefg;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzejc;->b:Lcom/google/android/gms/internal/ads/zzfkl;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzejc;->d:Lcom/google/android/gms/internal/ads/zzeif;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzejc;->h:Lcom/google/android/gms/internal/ads/zzdsh;

    return-void
.end method

.method public static n(Lcom/google/android/gms/internal/ads/zzfff;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzfv:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v2, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "No fill."

    const/4 v3, 0x1

    if-eq v3, v0, :cond_0

    const-string v0, "No ad config."

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzfew;->zzf:I

    if-eqz v3, :cond_3

    const/16 v4, 0xc8

    const/16 v5, 0x12c

    if-lt v3, v4, :cond_1

    if-ge v3, v5, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzfu:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_1
    if-lt v3, v5, :cond_2

    const/16 v0, 0x190

    if-ge v3, v0, :cond_2

    const-string v2, "No location header to follow redirect or too many redirects."

    goto :goto_1

    :cond_2
    const-string v0, "Received error HTTP response code: "

    invoke-static {v3, v0}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfew;->zzj:Lcom/google/android/gms/internal/ads/zzfev;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfev;->zza()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v2
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfff;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzci:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v2, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzejc;->h:Lcom/google/android/gms/internal/ads/zzdsh;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffe;->zzd:Lcom/google/android/gms/internal/ads/zzbvx;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbvx;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzcj:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdsh;->zza()Landroid/os/Bundle;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrv;->zzq:Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdrv;->zza()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lg/ti;->a:Lg/ti;

    iget-object v3, v3, Lg/ti;->v:Lg/czz;

    invoke-static {v3, v0, v2}, Lg/dub;->m(Lg/czz;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzejc;->n(Lcom/google/android/gms/internal/ads/zzfff;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzejc;->i:Lcom/google/android/gms/internal/ads/zzefg;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzefg;->zzi(Lcom/google/android/gms/internal/ads/zzfew;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzhW:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x3

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfew;->zzf:I

    if-eqz v2, :cond_3

    const/16 v5, 0xc8

    if-lt v2, v5, :cond_2

    const/16 v5, 0x12c

    if-lt v2, v5, :cond_3

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-direct {p1, v4, v0}, Lcom/google/android/gms/internal/ads/zzeiz;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzg(Ljava/lang/Throwable;)Lg/dcy;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzdG:Lcom/google/android/gms/internal/ads/zzbce;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzejc;->m:Lcom/google/android/gms/internal/ads/zzcrt;

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfew;->zzq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffe;->zza:Ljava/util/List;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzefg;->zzh(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffe;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfet;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzefg;->zzd(Lcom/google/android/gms/internal/ads/zzfet;)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzfet;->zza:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzfet;->zzb:I

    invoke-interface {v2, v8, v7}, Lcom/google/android/gms/internal/ads/zzcrt;->zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzefb;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7, p1, v1}, Lcom/google/android/gms/internal/ads/zzefb;->zzb(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_0

    :cond_6
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v8, v8}, Lcom/google/android/gms/internal/ads/zzfgq;->zzd(ILjava/lang/String;Lg/abz;)Lg/abz;

    move-result-object v8

    invoke-virtual {v3, v1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzefg;->zzf(Lcom/google/android/gms/internal/ads/zzfet;JLg/abz;)V

    goto :goto_0

    :cond_7
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejc;->c:Lcom/google/android/gms/internal/ads/zzflr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzejc;->l:Lcom/google/android/gms/internal/ads/zzfln;

    invoke-direct {v0, p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzcnf;-><init>(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzflr;Lcom/google/android/gms/internal/ads/zzfln;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejc;->j:Lcom/google/android/gms/internal/ads/zzcwo;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzejc;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzdcc;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfew;->zzr:I

    if-le v0, v5, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejc;->d:Lcom/google/android/gms/internal/ads/zzeif;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeif;->zzb(Lcom/google/android/gms/internal/ads/zzfff;)Lg/dcy;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzejc;->n(Lcom/google/android/gms/internal/ads/zzfff;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfjl;->zzn:Lcom/google/android/gms/internal/ads/zzfjl;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-direct {v5, v4, v0}, Lcom/google/android/gms/internal/ads/zzeiz;-><init>(ILjava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgei;->zzg(Ljava/lang/Throwable;)Lg/dcy;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzejc;->f:Lcom/google/android/gms/internal/ads/zzfjr;

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzfjb;->zzc(Lg/dcy;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfjj;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjh;->zza()Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejc;->a:Lcom/google/android/gms/internal/ads/zzeiv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeiv;->zzl()V

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzffe;->zza:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfet;

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzfet;->zza:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget v10, v7, Lcom/google/android/gms/internal/ads/zzfet;->zzb:I

    invoke-interface {v2, v10, v9}, Lcom/google/android/gms/internal/ads/zzcrt;->zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzefb;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-interface {v10, p1, v7}, Lcom/google/android/gms/internal/ads/zzefb;->zzb(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;)Z

    move-result v11

    if-eqz v11, :cond_9

    sget-object v8, Lcom/google/android/gms/internal/ads/zzfjl;->zzo:Lcom/google/android/gms/internal/ads/zzfjl;

    invoke-virtual {v4, v8, v0}, Lcom/google/android/gms/internal/ads/zzfjj;->zzb(Ljava/lang/Object;Lg/dcy;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "render-config-"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfjh;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/internal/ads/zzeja;

    invoke-direct {v8, p0, v7, p1, v10}, Lcom/google/android/gms/internal/ads/zzeja;-><init>(Lcom/google/android/gms/internal/ads/zzejc;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzefb;)V

    const-class v7, Ljava/lang/Throwable;

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzfjh;->zzc(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdp;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjh;->zza()Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object v0

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejb;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzejb;-><init>(Lcom/google/android/gms/internal/ads/zzeiv;)V

    invoke-interface {v0, p1, v3}, Lg/dcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

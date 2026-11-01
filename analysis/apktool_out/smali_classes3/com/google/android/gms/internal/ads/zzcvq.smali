.class public final Lcom/google/android/gms/internal/ads/zzcvq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/gms/internal/ads/zzffo;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/internal/ads/zzdbx;

.field public final e:Ljava/util/List;

.field public final f:Lcom/google/android/gms/internal/ads/zzfjr;

.field public final g:Landroid/content/pm/PackageInfo;

.field public final h:Lcom/google/android/gms/internal/ads/zzewc;

.field public final i:Lg/akx;

.field public final j:Lg/gil;

.field public final k:Landroid/content/pm/ApplicationInfo;

.field public final l:Lcom/google/android/gms/internal/ads/zzhfr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfjr;Lg/akx;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/zzhfr;Lg/gil;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzewc;Lcom/google/android/gms/internal/ads/zzffo;Lcom/google/android/gms/internal/ads/zzdbx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvq;->f:Lcom/google/android/gms/internal/ads/zzfjr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvq;->i:Lg/akx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvq;->k:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcvq;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcvq;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcvq;->g:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcvq;->l:Lcom/google/android/gms/internal/ads/zzhfr;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcvq;->a:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzcvq;->h:Lcom/google/android/gms/internal/ads/zzewc;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcvq;->j:Lg/gil;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzcvq;->b:Lcom/google/android/gms/internal/ads/zzffo;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzcvq;->d:Lcom/google/android/gms/internal/ads/zzdbx;

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)Lg/dcy;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvq;->d:Lcom/google/android/gms/internal/ads/zzdbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbx;->zza()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfjl;->zza:Lcom/google/android/gms/internal/ads/zzfjl;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcvq;->h:Lcom/google/android/gms/internal/ads/zzewc;

    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzewc;->zza(Ljava/lang/Object;Landroid/os/Bundle;)Lg/dcy;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvq;->f:Lcom/google/android/gms/internal/ads/zzfjr;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjb;->zzc(Lg/dcy;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfjj;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfjh;->zza()Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Lg/dcy;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzci:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvq;->b:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzs:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string v1, "ls"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcvq;->zzb(Landroid/os/Bundle;)Lg/dcy;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfjl;->zzb:Lcom/google/android/gms/internal/ads/zzfjl;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcvq;->l:Lcom/google/android/gms/internal/ads/zzhfr;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhfr;->zzb()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/dcy;

    const/4 v5, 0x2

    new-array v5, v5, [Lg/dcy;

    aput-object v1, v5, v2

    const/4 v2, 0x1

    aput-object v4, v5, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcvq;->f:Lcom/google/android/gms/internal/ads/zzfjr;

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzfjj;->zza(Ljava/lang/Object;[Lg/dcy;)Lcom/google/android/gms/internal/ads/zzfiz;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcvp;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcvp;-><init>(Lcom/google/android/gms/internal/ads/zzcvq;Lg/dcy;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfiz;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfjh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjh;->zza()Lcom/google/android/gms/internal/ads/zzfix;

    move-result-object v0

    return-object v0
.end method

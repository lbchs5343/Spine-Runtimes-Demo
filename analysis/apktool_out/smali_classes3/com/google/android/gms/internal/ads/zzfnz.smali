.class public final Lcom/google/android/gms/internal/ads/zzfnz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfns;


# static fields
.field public static a:Lcom/google/android/gms/internal/ads/zzfnz;


# instance fields
.field public b:F

.field public c:Lcom/google/android/gms/internal/ads/zzfnn;

.field public d:Lcom/google/android/gms/internal/ads/zzfnr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfno;Lcom/google/android/gms/internal/ads/zzfnm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfnz;->b:F

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzfnz;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfnz;->a:Lcom/google/android/gms/internal/ads/zzfnz;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfnm;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfno;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfno;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfnz;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfnz;-><init>(Lcom/google/android/gms/internal/ads/zzfno;Lcom/google/android/gms/internal/ads/zzfnm;)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfnz;->a:Lcom/google/android/gms/internal/ads/zzfnz;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfnz;->a:Lcom/google/android/gms/internal/ads/zzfnz;

    return-object v0
.end method


# virtual methods
.method public final zza()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfnz;->b:F

    return v0
.end method

.method public final zzc(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpb;->zzd()Lcom/google/android/gms/internal/ads/zzfpb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfpb;->zzi()V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpb;->zzd()Lcom/google/android/gms/internal/ads/zzfpb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfpb;->zzh()V

    return-void
.end method

.method public final zzd(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfnl;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfnn;

    invoke-direct {v2, v1, p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzfnn;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfnl;Lcom/google/android/gms/internal/ads/zzfnz;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzfnz;->c:Lcom/google/android/gms/internal/ads/zzfnn;

    return-void
.end method

.method public final zze(F)V
    .locals 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfnz;->b:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnz;->d:Lcom/google/android/gms/internal/ads/zzfnr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnr;->zza()Lcom/google/android/gms/internal/ads/zzfnr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnz;->d:Lcom/google/android/gms/internal/ads/zzfnr;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnz;->d:Lcom/google/android/gms/internal/ads/zzfnr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnr;->zzb()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfna;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfna;->zzg()Lcom/google/android/gms/internal/ads/zzfoh;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzl(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzf()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnq;->zza()Lcom/google/android/gms/internal/ads/zzfnq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfnt;->zze(Lcom/google/android/gms/internal/ads/zzfns;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnq;->zza()Lcom/google/android/gms/internal/ads/zzfnq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnt;->zzf()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpb;->zzd()Lcom/google/android/gms/internal/ads/zzfpb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpb;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnz;->c:Lcom/google/android/gms/internal/ads/zzfnn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnn;->zza()V

    return-void
.end method

.method public final zzg()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpb;->zzd()Lcom/google/android/gms/internal/ads/zzfpb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpb;->zzj()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnq;->zza()Lcom/google/android/gms/internal/ads/zzfnq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnt;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnz;->c:Lcom/google/android/gms/internal/ads/zzfnn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnn;->zzb()V

    return-void
.end method

.class public final Lg/gud;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdtw;


# instance fields
.field public final a:Lg/gud;

.field public final b:Lcom/google/android/gms/internal/ads/zzhfx;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/google/android/gms/internal/ads/zzhfx;

.field public final e:Lcom/google/android/gms/internal/ads/zzbkq;

.field public final f:Lg/bxr;

.field public final g:Lcom/google/android/gms/internal/ads/zzhgg;


# direct methods
.method public synthetic constructor <init>(Lg/bxr;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbkq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lg/gud;->a:Lg/gud;

    iput-object p1, p0, Lg/gud;->f:Lg/bxr;

    iput-object p2, p0, Lg/gud;->c:Landroid/content/Context;

    iput-object p3, p0, Lg/gud;->e:Lcom/google/android/gms/internal/ads/zzbkq;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhfy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfx;

    move-result-object p1

    iput-object p1, p0, Lg/gud;->b:Lcom/google/android/gms/internal/ads/zzhfx;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhfy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfx;

    move-result-object p2

    iput-object p2, p0, Lg/gud;->d:Lcom/google/android/gms/internal/ads/zzhfx;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdts;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzdts;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdtu;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzdtu;-><init>(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzhgp;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Lcom/google/android/gms/internal/ads/zzhgg;)Lcom/google/android/gms/internal/ads/zzhgg;

    move-result-object p1

    iput-object p1, p0, Lg/gud;->g:Lcom/google/android/gms/internal/ads/zzhgg;

    return-void
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzdtn;
    .locals 3

    new-instance v0, Lg/duw;

    iget-object v1, p0, Lg/gud;->f:Lg/bxr;

    iget-object v2, p0, Lg/gud;->a:Lg/gud;

    invoke-direct {v0, v1, v2}, Lg/duw;-><init>(Lg/bxr;Lg/gud;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzdtt;
    .locals 1

    iget-object v0, p0, Lg/gud;->g:Lcom/google/android/gms/internal/ads/zzhgg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdtt;

    return-object v0
.end method

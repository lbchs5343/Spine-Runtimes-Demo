.class public Lcom/google/android/gms/internal/ads/zzcpk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzcfk;

.field public final b:Lcom/google/android/gms/internal/ads/zzcro;

.field public final c:Landroid/view/View;

.field public final d:Lcom/google/android/gms/internal/ads/zzfeu;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzcro;Lcom/google/android/gms/internal/ads/zzfeu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpk;->c:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpk;->a:Lcom/google/android/gms/internal/ads/zzcfk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcpk;->b:Lcom/google/android/gms/internal/ads/zzcro;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcpk;->d:Lcom/google/android/gms/internal/ads/zzfeu;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpk;->c:Landroid/view/View;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzcfk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpk;->a:Lcom/google/android/gms/internal/ads/zzcfk;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcro;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpk;->b:Lcom/google/android/gms/internal/ads/zzcro;

    return-object v0
.end method

.method public zzd(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzcxy;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxy;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzfeu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpk;->d:Lcom/google/android/gms/internal/ads/zzfeu;

    return-object v0
.end method

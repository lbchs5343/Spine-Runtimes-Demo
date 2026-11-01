.class public final Lcom/google/android/gms/internal/ads/zzgzh;
.super Ljava/util/AbstractList;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzgzf;

.field public final b:Lcom/google/android/gms/internal/ads/zzgzg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgzf;Lcom/google/android/gms/internal/ads/zzgzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzh;->a:Lcom/google/android/gms/internal/ads/zzgzf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgzh;->b:Lcom/google/android/gms/internal/ads/zzgzg;

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzh;->b:Lcom/google/android/gms/internal/ads/zzgzg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzh;->a:Lcom/google/android/gms/internal/ads/zzgzf;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzgzf;->zzd(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgzg;->zzb(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzh;->a:Lcom/google/android/gms/internal/ads/zzgzf;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

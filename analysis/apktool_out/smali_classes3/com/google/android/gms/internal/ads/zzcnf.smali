.class public final Lcom/google/android/gms/internal/ads/zzcnf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcwp;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfln;

.field public final b:Lcom/google/android/gms/internal/ads/zzflr;

.field public final c:Lcom/google/android/gms/internal/ads/zzfew;

.field public final d:Lcom/google/android/gms/internal/ads/zzfff;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzflr;Lcom/google/android/gms/internal/ads/zzfln;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnf;->d:Lcom/google/android/gms/internal/ads/zzfff;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnf;->b:Lcom/google/android/gms/internal/ads/zzflr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcnf;->a:Lcom/google/android/gms/internal/ads/zzfln;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfff;->zzb:Lcom/google/android/gms/internal/ads/zzffe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzffe;->zzb:Lcom/google/android/gms/internal/ads/zzfew;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnf;->c:Lcom/google/android/gms/internal/ads/zzfew;

    return-void
.end method


# virtual methods
.method public final zzdB(Lg/abz;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnf;->c:Lcom/google/android/gms/internal/ads/zzfew;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfew;->zza:Ljava/util/List;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnf;->a:Lcom/google/android/gms/internal/ads/zzfln;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcnf;->d:Lcom/google/android/gms/internal/ads/zzfff;

    invoke-virtual {v1, v2, v0, p1}, Lcom/google/android/gms/internal/ads/zzfln;->zzc(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnf;->b:Lcom/google/android/gms/internal/ads/zzflr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzflr;->zzd(Ljava/util/List;)V

    return-void
.end method

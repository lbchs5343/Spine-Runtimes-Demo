.class public final synthetic Lcom/google/android/gms/internal/ads/zzdjv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdjy;

.field public final synthetic zzb:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdjy;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjv;->zza:Lcom/google/android/gms/internal/ads/zzdjy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjv;->zzb:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjv;->zza:Lcom/google/android/gms/internal/ads/zzdjy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjv;->zzb:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdjy;->h:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdjy;->e:Lg/gil;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdjy;->c:Lcom/google/android/gms/internal/ads/zzdiy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzf()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzc()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzc()I

    move-result v5

    if-ne v5, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzc()I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_3

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzffo;->zzf:Ljava/lang/String;

    check-cast v3, Lg/cmo;

    const-string v4, "2"

    invoke-virtual {v3, v0, v4, v1}, Lg/cmo;->an(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzffo;->zzf:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v3, v0, v2, v1}, Lg/cmo;->an(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzffo;->zzf:Ljava/lang/String;

    check-cast v3, Lg/cmo;

    invoke-virtual {v3, v2, v0, v1}, Lg/cmo;->an(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

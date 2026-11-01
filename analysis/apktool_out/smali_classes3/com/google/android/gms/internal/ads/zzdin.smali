.class public final synthetic Lcom/google/android/gms/internal/ads/zzdin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdit;

.field public final synthetic zzb:Landroid/view/View;

.field public final synthetic zzc:Z

.field public final synthetic zzd:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdit;Landroid/view/View;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdin;->zza:Lcom/google/android/gms/internal/ads/zzdit;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdin;->zzb:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzdin;->zzc:Z

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzdin;->zzd:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdin;->zza:Lcom/google/android/gms/internal/ads/zzdit;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdin;->zzb:Landroid/view/View;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzdin;->zzc:Z

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzdin;->zzd:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdit;->h:Lcom/google/android/gms/internal/ads/zzdku;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdku;->zzf()Landroid/view/View;

    move-result-object v3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdit;->h:Lcom/google/android/gms/internal/ads/zzdku;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdku;->zzl()Ljava/util/Map;

    move-result-object v4

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdit;->h:Lcom/google/android/gms/internal/ads/zzdku;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdku;->zzm()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdit;->ai()Landroid/widget/ImageView$ScaleType;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdit;->g:Lcom/google/android/gms/internal/ads/zzdjg;

    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzdjg;->zzo(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;I)V

    return-void
.end method

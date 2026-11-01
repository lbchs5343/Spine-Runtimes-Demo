.class public final synthetic Lcom/google/android/gms/internal/ads/zzbxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbyc;

.field public final synthetic zzb:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbyc;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxy;->zza:Lcom/google/android/gms/internal/ads/zzbyc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxy;->zzb:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxy;->zza:Lcom/google/android/gms/internal/ads/zzbyc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxy;->zzb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxp;->zzt()Lcom/google/android/gms/internal/ads/zzgxn;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbyc;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbyc;->f:Lcom/google/android/gms/internal/ads/zzhct;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhed;->zzc()Lcom/google/android/gms/internal/ads/zzheb;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxn;->zzb()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzheb;->zza(Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzheb;

    const-string v2, "image/png"

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzheb;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzheb;

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzheb;->zzc(I)Lcom/google/android/gms/internal/ads/zzheb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhed;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzhct;->zzi(Lcom/google/android/gms/internal/ads/zzhed;)Lcom/google/android/gms/internal/ads/zzhct;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/zzevc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzevg;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbrf;

.field public final synthetic zzc:Landroid/os/Bundle;

.field public final synthetic zzd:Ljava/util/List;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzelr;

.field public final synthetic zzf:Lcom/google/android/gms/internal/ads/zzcao;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzevg;Lcom/google/android/gms/internal/ads/zzbrf;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzelr;Lcom/google/android/gms/internal/ads/zzcao;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevc;->zza:Lcom/google/android/gms/internal/ads/zzevg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzb:Lcom/google/android/gms/internal/ads/zzbrf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzc:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzd:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzevc;->zze:Lcom/google/android/gms/internal/ads/zzelr;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzf:Lcom/google/android/gms/internal/ads/zzcao;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevc;->zza:Lcom/google/android/gms/internal/ads/zzevg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzb:Lcom/google/android/gms/internal/ads/zzbrf;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzc:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzd:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzevc;->zze:Lcom/google/android/gms/internal/ads/zzelr;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzevc;->zzf:Lcom/google/android/gms/internal/ads/zzcao;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzevg;->b:Landroid/content/Context;

    move-object v5, v2

    new-instance v2, Lg/bpp;

    invoke-direct {v2, v3}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/os/Bundle;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzevg;->f:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzevg;->c:Lcom/google/android/gms/internal/ads/zzffo;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzffo;->zze:Lg/eno;

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbrf;->zzh(Lg/bjq;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lg/eno;Lcom/google/android/gms/internal/ads/zzbri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzcao;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

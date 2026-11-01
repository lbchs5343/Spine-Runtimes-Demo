.class public final synthetic Lcom/google/android/gms/internal/ads/zzcmy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/gym;

.field public final synthetic zzb:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lg/gym;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zza:Lg/gym;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzb:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzjW:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zza:Lg/gym;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzb:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lg/gym;->a:Lcom/google/android/gms/internal/ads/zzcnb;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcnb;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbuj;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbul;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzcnb;->f:Lcom/google/android/gms/internal/ads/zzbul;

    iget-object v0, v1, Lg/gym;->a:Lcom/google/android/gms/internal/ads/zzcnb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcnb;->f:Lcom/google/android/gms/internal/ads/zzbul;

    const-string v3, "AttributionReporting.registerSourceAndPingClickUrl"

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbul;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lg/gym;->a:Lcom/google/android/gms/internal/ads/zzcnb;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcnb;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbuj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbul;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzcnb;->a:Lcom/google/android/gms/internal/ads/zzbul;

    iget-object v0, v1, Lg/gym;->a:Lcom/google/android/gms/internal/ads/zzcnb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcnb;->a:Lcom/google/android/gms/internal/ads/zzbul;

    const-string v3, "AttributionReportingSampled.registerSourceAndPingClickUrl"

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbul;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    iget-object v0, v1, Lg/gym;->b:Lcom/google/android/gms/internal/ads/zzflr;

    iget-object v1, v1, Lg/gym;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzflr;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfkl;)V

    return-void
.end method

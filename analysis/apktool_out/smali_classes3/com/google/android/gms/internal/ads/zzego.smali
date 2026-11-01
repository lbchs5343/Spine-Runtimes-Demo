.class public final synthetic Lcom/google/android/gms/internal/ads/zzego;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzegq;

.field public final synthetic zzb:Landroid/net/Uri;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfff;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfet;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzegq;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzego;->zza:Lcom/google/android/gms/internal/ads/zzegq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzego;->zzb:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfff;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzego;->zzd:Lcom/google/android/gms/internal/ads/zzfet;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 12

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzego;->zza:Lcom/google/android/gms/internal/ads/zzegq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzego;->zzb:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzego;->zzd:Lcom/google/android/gms/internal/ads/zzfet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v3, Lg/dxb;

    invoke-direct {v3}, Lg/dxb;-><init>()V

    invoke-virtual {v3}, Lg/dxb;->h()Lg/fdy;

    move-result-object v3

    iget-object v3, v3, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v5, Lg/etg;

    const/4 v0, 0x0

    invoke-direct {v5, v3, v0}, Lg/etg;-><init>(Landroid/content/Intent;Lg/fre;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzegq;->c:Lcom/google/android/gms/internal/ads/zzdgn;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcsg;

    invoke-direct {v6, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcsg;-><init>(Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfet;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdfn;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzegp;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzegp;-><init>(Lcom/google/android/gms/internal/ads/zzcao;)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdfn;-><init>(Lcom/google/android/gms/internal/ads/zzdgv;Lcom/google/android/gms/internal/ads/zzcfk;)V

    invoke-virtual {v4, v6, v1}, Lcom/google/android/gms/internal/ads/zzdgn;->zze(Lcom/google/android/gms/internal/ads/zzcsg;Lcom/google/android/gms/internal/ads/zzdfn;)Lcom/google/android/gms/internal/ads/zzdfk;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfk;->zza()Lcom/google/android/gms/internal/ads/zzcys;

    move-result-object v7

    new-instance v9, Lg/akx;

    const/4 v1, 0x0

    invoke-direct {v9, v1, v1, v1}, Lg/akx;-><init>(IIZ)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lg/etg;Lg/evo;Lg/fim;Lg/gst;Lg/akx;Lcom/google/android/gms/internal/ads/zzcfk;Lcom/google/android/gms/internal/ads/zzdel;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzegq;->a:Lcom/google/android/gms/internal/ads/zzfes;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfes;->zza()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfk;->zzg()Lcom/google/android/gms/internal/ads/zzdfj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    const-string v0, "Error in CustomTabsAdRenderer"

    invoke-static {v0, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

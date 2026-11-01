.class public final synthetic Lcom/google/android/gms/internal/ads/zzefz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzegc;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcfk;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzegc;Lcom/google/android/gms/internal/ads/zzcfk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefz;->zza:Lcom/google/android/gms/internal/ads/zzegc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefz;->zzb:Lcom/google/android/gms/internal/ads/zzcfk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefz;->zza:Lcom/google/android/gms/internal/ads/zzegc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefz;->zzb:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzab()V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzegc;->a:Lcom/google/android/gms/internal/ads/zzffo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzq()Lcom/google/android/gms/internal/ads/zzcgm;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffo;->zza:Lg/cpm;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgm;->zzs(Lg/cpm;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzbp:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->onPause()V

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzav(Z)V

    :cond_1
    return-void
.end method

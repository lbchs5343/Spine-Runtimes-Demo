.class public final synthetic Lcom/google/android/gms/internal/ads/zzetn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeto;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeto;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzetn;->zza:Lcom/google/android/gms/internal/ads/zzeto;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetn;->zza:Lcom/google/android/gms/internal/ads/zzeto;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeto;->b:Lcom/google/android/gms/internal/ads/zzdvk;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzetp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvk;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvk;->zzr()Z

    move-result v3

    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v4, v4, Lg/ti;->g:Lg/bkm;

    invoke-virtual {v4}, Lg/bkm;->r()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvk;->zzp()Z

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvk;->zzs()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzetp;-><init>(Ljava/lang/String;ZZZZ)V

    return-object v1
.end method

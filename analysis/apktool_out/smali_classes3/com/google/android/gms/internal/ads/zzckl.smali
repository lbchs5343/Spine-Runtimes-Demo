.class public final synthetic Lcom/google/android/gms/internal/ads/zzckl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzckp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzckp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckl;->zza:Lcom/google/android/gms/internal/ads/zzckp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckl;->zza:Lcom/google/android/gms/internal/ads/zzckp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->s:Lcom/google/android/gms/internal/ads/zzbdm;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzckp;->k:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzckp;->o:Lcom/google/android/gms/internal/ads/zzdsm;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdsm;)V

    return-void
.end method

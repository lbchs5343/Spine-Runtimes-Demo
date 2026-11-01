.class public final synthetic Lcom/google/android/gms/internal/ads/zzcnp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/bs;


# direct methods
.method public synthetic constructor <init>(Lg/bs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnp;->zza:Lg/bs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnp;->zza:Lg/bs;

    iget-object v0, v0, Lg/bs;->a:Lcom/google/android/gms/internal/ads/zzcnt;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcnt;->a:Lcom/google/android/gms/internal/ads/zzcny;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcny;->zzg()V

    return-void
.end method

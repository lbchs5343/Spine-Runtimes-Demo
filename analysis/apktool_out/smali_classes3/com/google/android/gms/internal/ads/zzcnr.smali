.class public final synthetic Lcom/google/android/gms/internal/ads/zzcnr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/cjf;


# direct methods
.method public synthetic constructor <init>(Lg/cjf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zza:Lg/cjf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zza:Lg/cjf;

    iget-object v0, v0, Lg/cjf;->a:Lcom/google/android/gms/internal/ads/zzcnt;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcnt;->a:Lcom/google/android/gms/internal/ads/zzcny;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcny;->zzj()V

    return-void
.end method

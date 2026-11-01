.class public final synthetic Lcom/google/android/gms/internal/ads/zzfpo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/eeo;


# direct methods
.method public synthetic constructor <init>(Lg/eeo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpo;->zza:Lg/eeo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpo;->zza:Lg/eeo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrr;->zzc()Lcom/google/android/gms/internal/ads/zzfrr;

    move-result-object v1

    iget-object v0, v0, Lg/eeo;->a:Lg/chw;

    invoke-virtual {v0, v1}, Lg/chw;->m(Ljava/lang/Object;)V

    return-void
.end method

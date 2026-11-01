.class public final synthetic Lcom/google/android/gms/internal/ads/zzvk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/fkd;


# direct methods
.method public synthetic constructor <init>(Lg/fkd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvk;->zza:Lg/fkd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvk;->zza:Lg/fkd;

    iget-boolean v1, v0, Lg/fkd;->k:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lg/fkd;->j:Lcom/google/android/gms/internal/ads/zzuo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzwh;->zzg(Lcom/google/android/gms/internal/ads/zzwi;)V

    :cond_0
    return-void
.end method

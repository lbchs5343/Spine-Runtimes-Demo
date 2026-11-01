.class public final Lg/bwj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fim;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzcfk;

.field public final b:Lg/fim;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcfk;Lg/fim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bwj;->a:Lcom/google/android/gms/internal/ads/zzcfk;

    iput-object p2, p0, Lg/bwj;->b:Lg/fim;

    return-void
.end method


# virtual methods
.method public final zzdH()V
    .locals 0

    return-void
.end method

.method public final zzdk()V
    .locals 0

    return-void
.end method

.method public final zzdq()V
    .locals 1

    iget-object v0, p0, Lg/bwj;->b:Lg/fim;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/fim;->zzdq()V

    :cond_0
    return-void
.end method

.method public final zzdr()V
    .locals 1

    iget-object v0, p0, Lg/bwj;->b:Lg/fim;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/fim;->zzdr()V

    :cond_0
    iget-object v0, p0, Lg/bwj;->a:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaa()V

    return-void
.end method

.method public final zzdt()V
    .locals 1

    iget-object v0, p0, Lg/bwj;->b:Lg/fim;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/fim;->zzdt()V

    :cond_0
    return-void
.end method

.method public final zzdu(I)V
    .locals 1

    iget-object v0, p0, Lg/bwj;->b:Lg/fim;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lg/fim;->zzdu(I)V

    :cond_0
    iget-object p1, p0, Lg/bwj;->a:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzY()V

    return-void
.end method

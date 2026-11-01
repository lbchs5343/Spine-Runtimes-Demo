.class public final Lg/cok;
.super Lcom/google/android/gms/internal/ads/zzcao;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbbh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbh;)V
    .locals 0

    iput-object p1, p0, Lg/cok;->a:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lg/cok;->a:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->d(Lcom/google/android/gms/internal/ads/zzbbh;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzcao;->cancel(Z)Z

    move-result p1

    return p1
.end method

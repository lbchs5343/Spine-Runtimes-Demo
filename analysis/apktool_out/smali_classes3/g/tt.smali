.class public final Lg/tt;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Landroid/net/Uri;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzov;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzov;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lg/tt;->c:Lcom/google/android/gms/internal/ads/zzov;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lg/tt;->a:Landroid/content/ContentResolver;

    iput-object p4, p0, Lg/tt;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lg/tt;->c:Lcom/google/android/gms/internal/ads/zzov;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzov;->d:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzov;->a:Lcom/google/android/gms/internal/ads/zzg;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzov;->j:Lg/fqp;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzop;->e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzg;Lg/fqp;)Lcom/google/android/gms/internal/ads/zzop;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzov;->k(Lcom/google/android/gms/internal/ads/zzop;)V

    return-void
.end method

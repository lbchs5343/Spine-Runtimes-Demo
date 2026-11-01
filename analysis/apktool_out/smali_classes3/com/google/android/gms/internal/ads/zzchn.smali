.class public final Lcom/google/android/gms/internal/ads/zzchn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Lg/akx;

.field public final c:Landroid/content/Context;

.field public final d:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzchl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzchl;->b:Lg/akx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchn;->b:Lg/akx;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzchl;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchn;->c:Landroid/content/Context;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzchl;->a:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchn;->a:Ljava/lang/ref/WeakReference;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzchl;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzchn;->d:J

    return-void
.end method


# virtual methods
.method public final zzc()Lg/gvq;
    .locals 3

    new-instance v0, Lg/gvq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchn;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchn;->b:Lg/akx;

    invoke-direct {v0, v1, v2}, Lg/gvq;-><init>(Landroid/content/Context;Lg/akx;)V

    return-object v0
.end method

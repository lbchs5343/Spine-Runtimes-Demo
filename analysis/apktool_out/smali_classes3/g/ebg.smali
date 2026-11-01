.class public final Lg/ebg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjr;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdoc;

.field public final b:Ljava/lang/ref/WeakReference;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/internal/ads/zzbjr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdoc;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ebg;->a:Lcom/google/android/gms/internal/ads/zzdoc;

    iput-object p2, p0, Lg/ebg;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lg/ebg;->c:Ljava/lang/String;

    iput-object p4, p0, Lg/ebg;->d:Lcom/google/android/gms/internal/ads/zzbjr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lg/ebg;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/ebg;->a:Lcom/google/android/gms/internal/ads/zzdoc;

    iget-object p2, p0, Lg/ebg;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    return-void

    :cond_0
    iget-object v0, p0, Lg/ebg;->d:Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbjr;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

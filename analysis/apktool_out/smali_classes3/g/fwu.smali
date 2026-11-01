.class public final Lg/fwu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfvm;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcom/google/android/gms/internal/ads/zzfxg;

.field public e:Z

.field public f:Lg/crk;

.field public final g:Landroid/content/Context;

.field public h:Lcom/google/android/gms/internal/ads/zzftu;

.field public final i:Lcom/google/android/gms/internal/ads/zzfvv;

.field public final j:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfvv;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/fwu;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lg/fwu;->g:Landroid/content/Context;

    iput-object p2, p0, Lg/fwu;->i:Lcom/google/android/gms/internal/ads/zzfvv;

    const-string p1, "OverlayDisplayService"

    iput-object p1, p0, Lg/fwu;->b:Ljava/lang/String;

    iput-object p3, p0, Lg/fwu;->j:Landroid/content/Intent;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfvl;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfvl;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfxk;->zza(Lcom/google/android/gms/internal/ads/zzfxg;)Lcom/google/android/gms/internal/ads/zzfxg;

    move-result-object p1

    iput-object p1, p0, Lg/fwu;->d:Lcom/google/android/gms/internal/ads/zzfxg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfvm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfvm;-><init>(Lg/fwu;)V

    iput-object p1, p0, Lg/fwu;->a:Lcom/google/android/gms/internal/ads/zzfvm;

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lg/fwu;->d:Lcom/google/android/gms/internal/ads/zzfxg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfxg;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfvn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfvn;-><init>(Lg/fwu;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

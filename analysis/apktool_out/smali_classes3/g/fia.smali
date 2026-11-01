.class public final Lg/fia;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/content/Intent;

.field public static final b:Lcom/google/android/gms/internal/ads/zzfvv;


# instance fields
.field public final c:Lg/fwu;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvv;

    const-string v1, "OverlayDisplayService"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfvv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg/fia;->b:Lcom/google/android/gms/internal/ads/zzfvv;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.lmd.BIND_OVERLAY_DISPLAY_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lg/fia;->a:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfvx;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lg/fwu;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfuz;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzfuz;-><init>()V

    sget-object v2, Lg/fia;->b:Lcom/google/android/gms/internal/ads/zzfvv;

    sget-object v3, Lg/fia;->a:Landroid/content/Intent;

    invoke-direct {v0, v1, v2, v3}, Lg/fwu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfvv;Landroid/content/Intent;)V

    iput-object v0, p0, Lg/fia;->c:Lg/fwu;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lg/fia;->c:Lg/fwu;

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/fia;->d:Ljava/lang/String;

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfxf;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static f(Lcom/google/android/gms/internal/ads/zzfvi;Ljava/lang/String;Ljava/util/List;)Z
    .locals 2

    invoke-static {p2}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfva;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfva;-><init>()V

    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p2, Lg/fia;->b:Lcom/google/android/gms/internal/ads/zzfvv;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzfvv;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvh;->zzc()Lcom/google/android/gms/internal/ads/zzfvg;

    move-result-object p1

    const/16 p2, 0x1fe0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfvg;->zzb(I)Lcom/google/android/gms/internal/ads/zzfvg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvg;->zzc()Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzfvi;->zza(Lcom/google/android/gms/internal/ads/zzfvh;)V

    return v0
.end method


# virtual methods
.method public final g(Lcom/google/android/gms/internal/ads/zzfvk;Lcom/google/android/gms/internal/ads/zzfvi;I)V
    .locals 3

    iget-object v0, p0, Lg/fia;->c:Lg/fwu;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Play Store not found."

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "error: %s"

    sget-object p3, Lg/fia;->b:Lcom/google/android/gms/internal/ads/zzfvv;

    invoke-virtual {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzfvv;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvk;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvk;->zza()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Failed to apply OverlayDisplayUpdateRequest: missing appId and sessionToken."

    invoke-static {p2, v2, v1}, Lg/fia;->f(Lcom/google/android/gms/internal/ads/zzfvi;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfuv;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzfuv;-><init>(Lg/fia;Lcom/google/android/gms/internal/ads/zzfvk;ILcom/google/android/gms/internal/ads/zzfvi;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfvo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfvo;-><init>(Lg/fwu;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Lg/fwu;->k(Ljava/lang/Runnable;)V

    return-void
.end method

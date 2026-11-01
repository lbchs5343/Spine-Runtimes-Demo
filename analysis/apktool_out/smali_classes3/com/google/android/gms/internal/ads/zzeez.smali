.class public final Lcom/google/android/gms/internal/ads/zzeez;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeez;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza(Z)Lg/dcy;
    .locals 1

    :try_start_0
    new-instance v0, Lg/eph;

    invoke-direct {v0, p1}, Lg/eph;-><init>(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeez;->a:Landroid/content/Context;

    invoke-static {p1}, Lg/eb;->b(Landroid/content/Context;)Lg/eb;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lg/eb;->c(Lg/eph;)Lg/dcy;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzg(Ljava/lang/Throwable;)Lg/dcy;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzg(Ljava/lang/Throwable;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/google/android/gms/internal/ads/zzbym;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/cvb;

.field public final b:Lg/dst;


# direct methods
.method public constructor <init>(Lg/cvb;Lg/dst;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbym;->a:Lg/cvb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbym;->b:Lg/dst;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbym;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbyw;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbyw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbyw;->b()Lcom/google/android/gms/internal/ads/zzbym;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zzb(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbym;->b:Lg/dst;

    invoke-virtual {v0, p1, p2, p3}, Lg/dst;->b(IJ)V

    return-void
.end method

.method public final zzc(Lg/pw;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbym;->a:Lg/cvb;

    check-cast p1, Lg/czz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbym;->b:Lg/dst;

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v1}, Lg/dst;->b(IJ)V

    return-void
.end method

.method public final zzd()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbym;->a:Lg/cvb;

    check-cast v0, Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbym;->b:Lg/dst;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0, v1}, Lg/dst;->b(IJ)V

    return-void
.end method

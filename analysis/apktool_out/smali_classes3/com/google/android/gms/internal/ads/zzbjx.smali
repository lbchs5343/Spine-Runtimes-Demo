.class public final Lcom/google/android/gms/internal/ads/zzbjx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjr;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjx;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbjx;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object v0, p1, Lg/ti;->f:Lcom/google/android/gms/internal/ads/zzbyv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjx;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyv;->zzp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "eventName"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "eventId"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x170bf

    const/4 v4, 0x2

    const-string v5, "_ac"

    const/4 v6, 0x1

    const-string v7, "_ai"

    if-eq v2, v3, :cond_3

    const v3, 0x170c1

    if-eq v2, v3, :cond_2

    const v3, 0x170c7

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v2, "_aa"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbjx;->b:Ljava/util/Map;

    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v4, :cond_5

    const-string p1, "logScionEvent gmsg contained unsupported eventName"

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object p1, p1, Lg/ti;->f:Lcom/google/android/gms/internal/ads/zzbyv;

    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzbyv;->zzh(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object p1, p1, Lg/ti;->f:Lcom/google/android/gms/internal/ads/zzbyv;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1, v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbyv;->zzk(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_7
    iget-object p1, p1, Lg/ti;->f:Lcom/google/android/gms/internal/ads/zzbyv;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1, v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbyv;->zzj(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

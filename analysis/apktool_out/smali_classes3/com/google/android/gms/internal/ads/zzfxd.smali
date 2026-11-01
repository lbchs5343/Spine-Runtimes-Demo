.class public final Lcom/google/android/gms/internal/ads/zzfxd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/eco;


# direct methods
.method public constructor <init>(Lg/eco;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxd;->a:Lg/eco;

    return-void
.end method

.method public static zza(I)Lcom/google/android/gms/internal/ads/zzfxd;
    .locals 2

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfxd;

    new-instance v0, Lg/bli;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lg/bli;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfxd;-><init>(Lg/eco;)V

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzfwf;)Lcom/google/android/gms/internal/ads/zzfxd;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxd;

    new-instance v1, Lg/dnb;

    invoke-direct {v1, p0}, Lg/dnb;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxd;-><init>(Lg/eco;)V

    return-object v0
.end method


# virtual methods
.method public final zzc(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg/ehc;

    invoke-direct {v0, p0, p1}, Lg/ehc;-><init>(Lcom/google/android/gms/internal/ads/zzfxd;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final zze(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxd;->a:Lg/eco;

    invoke-interface {v0, p0, p1}, Lg/eco;->y(Lcom/google/android/gms/internal/ads/zzfxd;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v1, p1

    check-cast v1, Lg/bpu;

    invoke-virtual {v1}, Lg/bpu;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lg/bpu;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

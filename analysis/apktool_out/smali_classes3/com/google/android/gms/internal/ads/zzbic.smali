.class public final Lcom/google/android/gms/internal/ads/zzbic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/edz;

.field public final b:Lg/ehx;

.field public c:Lcom/google/android/gms/internal/ads/zzbgt;


# direct methods
.method public constructor <init>(Lg/edz;Lg/ehx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbic;->a:Lg/edz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbic;->b:Lg/ehx;

    return-void
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzbhc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbic;->b:Lg/ehx;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lg/ete;

    invoke-direct {v0, p0}, Lg/ete;-><init>(Lcom/google/android/gms/internal/ads/zzbic;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzbhf;
    .locals 2

    new-instance v0, Lg/cnk;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lg/cnk;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

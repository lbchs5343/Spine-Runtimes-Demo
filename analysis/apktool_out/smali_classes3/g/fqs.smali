.class public final Lg/fqs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexs;


# instance fields
.field public final a:Lg/bxr;

.field public b:Lcom/google/android/gms/internal/ads/zzexh;


# direct methods
.method public synthetic constructor <init>(Lg/bxr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fqs;->a:Lg/bxr;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzexh;)Lcom/google/android/gms/internal/ads/zzexs;
    .locals 0

    iput-object p1, p0, Lg/fqs;->b:Lcom/google/android/gms/internal/ads/zzexh;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzext;
    .locals 3

    iget-object v0, p0, Lg/fqs;->b:Lcom/google/android/gms/internal/ads/zzexh;

    const-class v1, Lcom/google/android/gms/internal/ads/zzexh;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lg/cnx;

    iget-object v1, p0, Lg/fqs;->a:Lg/bxr;

    iget-object v2, p0, Lg/fqs;->b:Lcom/google/android/gms/internal/ads/zzexh;

    invoke-direct {v0, v1, v2}, Lg/cnx;-><init>(Lg/bxr;Lcom/google/android/gms/internal/ads/zzexh;)V

    return-object v0
.end method

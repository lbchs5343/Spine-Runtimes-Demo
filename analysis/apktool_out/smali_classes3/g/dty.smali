.class public final Lg/dty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/elv;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lcom/google/android/gms/internal/ads/zzbv;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzum;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dty;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzum;->zzC()Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object p1

    iput-object p1, p0, Lg/dty;->b:Lcom/google/android/gms/internal/ads/zzbv;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbv;
    .locals 1

    iget-object v0, p0, Lg/dty;->b:Lcom/google/android/gms/internal/ads/zzbv;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/dty;->a:Ljava/lang/Object;

    return-object v0
.end method

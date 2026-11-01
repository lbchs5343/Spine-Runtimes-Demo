.class public final Lcom/google/android/gms/internal/ads/zzblx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/cvi;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Lg/cvi;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblx;->a:Lg/cvi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblx;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzblx;->c:I

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getInitializationState()Lg/cvi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblx;->a:Lg/cvi;

    return-object v0
.end method

.method public final getLatency()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzblx;->c:I

    return v0
.end method

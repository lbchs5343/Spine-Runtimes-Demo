.class public abstract Lg/cbw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final v:I

.field public final w:Lcom/google/android/gms/internal/ads/zzad;

.field public final x:I

.field public final y:Lcom/google/android/gms/internal/ads/zzbw;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzbw;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/cbw;->x:I

    iput-object p2, p0, Lg/cbw;->y:Lcom/google/android/gms/internal/ads/zzbw;

    iput p3, p0, Lg/cbw;->v:I

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzbw;->zzb(I)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object p1

    iput-object p1, p0, Lg/cbw;->w:Lcom/google/android/gms/internal/ads/zzad;

    return-void
.end method


# virtual methods
.method public abstract s()I
.end method

.method public abstract t(Lg/cbw;)Z
.end method

.class public final Lcom/google/android/gms/internal/ads/zzbkn;
.super Lcom/google/android/gms/internal/ads/zzbkp;
.source "SourceFile"


# instance fields
.field public final a:Lg/fnd;


# direct methods
.method public constructor <init>(Lg/fnd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbkp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkn;->a:Lg/fnd;

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkn;->a:Lg/fnd;

    invoke-interface {v0, p1}, Lg/fnd;->onH5AdsEvent(Ljava/lang/String;)V

    return-void
.end method

.class public final Lg/evn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzazf;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbat;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/evn;->a:Lcom/google/android/gms/internal/ads/zzbat;

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 1

    iget-object v0, p0, Lg/evn;->a:Lcom/google/android/gms/internal/ads/zzbat;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbat;->i()V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbat;->g(Lcom/google/android/gms/internal/ads/zzbat;)V

    return-void
.end method

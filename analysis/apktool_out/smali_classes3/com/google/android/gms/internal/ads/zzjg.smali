.class public final synthetic Lcom/google/android/gms/internal/ads/zzjg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdp;


# instance fields
.field public final synthetic zza:Lg/gzx;


# direct methods
.method public synthetic constructor <init>(Lg/gzx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjg;->zza:Lg/gzx;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbm;

    sget v0, Lg/ij;->b:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjg;->zza:Lg/gzx;

    invoke-virtual {v0}, Lg/gzx;->v()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbm;->zzc(Z)V

    return-void
.end method

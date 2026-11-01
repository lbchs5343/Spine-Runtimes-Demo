.class public final Lg/yc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/gtx;
.implements Lcom/google/android/gms/internal/ads/zzgee;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/yc;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ao()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lg/gyr;

    iget-object v1, p0, Lg/yc;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    iget-object v1, p0, Lg/yc;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public zzb(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

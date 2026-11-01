.class public final synthetic Lcom/google/android/gms/internal/ads/zzfvr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/crk;


# direct methods
.method public synthetic constructor <init>(Lg/crk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvr;->zza:Lg/crk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvr;->zza:Lg/crk;

    iget-object v1, v0, Lg/crk;->a:Lg/fwu;

    iget-object v1, v1, Lg/fwu;->i:Lcom/google/android/gms/internal/ads/zzfvv;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "unlinkToDeath"

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzfvv;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v0, Lg/crk;->a:Lg/fwu;

    iget-object v1, v0, Lg/fwu;->h:Lcom/google/android/gms/internal/ads/zzftu;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, v0, Lg/fwu;->a:Lcom/google/android/gms/internal/ads/zzfvm;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iput-object v1, v0, Lg/fwu;->h:Lcom/google/android/gms/internal/ads/zzftu;

    iput-boolean v2, v0, Lg/fwu;->e:Z

    return-void
.end method

.class public final Lg/giz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dhb;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzayd;

.field public final synthetic b:I

.field public final synthetic c:Landroid/os/IInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzayd;Landroid/os/IInterface;I)V
    .locals 0

    iput p3, p0, Lg/giz;->b:I

    iput-object p2, p0, Lg/giz;->c:Landroid/os/IInterface;

    iput-object p1, p0, Lg/giz;->a:Lcom/google/android/gms/internal/ads/zzayd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .locals 3

    iget v0, p0, Lg/giz;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/giz;->a:Lcom/google/android/gms/internal/ads/zzayd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfeq;->b:Lcom/google/android/gms/internal/ads/zzdor;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lg/giz;->c:Landroid/os/IInterface;

    check-cast v0, Lg/gb;

    check-cast v0, Lg/acd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayc;->r()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzayc;->s(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/giz;->a:Lcom/google/android/gms/internal/ads/zzayd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfek;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfek;->h:Lcom/google/android/gms/internal/ads/zzdor;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lg/giz;->c:Landroid/os/IInterface;

    check-cast v0, Lg/gag;

    invoke-interface {v0}, Lg/gag;->zze()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lg/agd;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

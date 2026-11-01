.class public final Lg/amx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzcbj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcbj;I)V
    .locals 0

    iput p2, p0, Lg/amx;->a:I

    iput-object p1, p0, Lg/amx;->b:Lcom/google/android/gms/internal/ads/zzcbj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lg/amx;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/amx;->b:Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcbj;->c:Lcom/google/android/gms/internal/ads/zzcbk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcbk;->zzd()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/amx;->b:Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbj;->c:Lcom/google/android/gms/internal/ads/zzcbk;

    if-eqz v1, :cond_2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzcbj;->o:Z

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcbk;->zzg()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcbj;->o:Z

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcbj;->c:Lcom/google/android/gms/internal/ads/zzcbk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcbk;->zze()V

    :cond_2
    return-void

    :pswitch_1
    iget-object v0, p0, Lg/amx;->b:Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbj;->c:Lcom/google/android/gms/internal/ads/zzcbk;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcbk;->zzd()V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcbj;->c:Lcom/google/android/gms/internal/ads/zzcbk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcbk;->zzi()V

    :cond_3
    return-void

    :pswitch_2
    iget-object v0, p0, Lg/amx;->b:Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcbj;->c:Lcom/google/android/gms/internal/ads/zzcbk;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcbk;->zzh()V

    :cond_4
    return-void

    :pswitch_3
    iget-object v0, p0, Lg/amx;->b:Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcbj;->c:Lcom/google/android/gms/internal/ads/zzcbk;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcbk;->zza()V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lg/dok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzawf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzawf;I)V
    .locals 0

    iput p2, p0, Lg/dok;->a:I

    iput-object p1, p0, Lg/dok;->b:Lcom/google/android/gms/internal/ads/zzawf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lg/dok;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/dok;->b:Lcom/google/android/gms/internal/ads/zzawf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzawf;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/dok;->b:Lcom/google/android/gms/internal/ads/zzawf;

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzawf;->i:Lg/xo;

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzawf;->l:Z

    if-eqz v1, :cond_0

    new-instance v1, Lg/xo;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzawf;->h:Landroid/content/Context;

    const-wide/16 v3, 0x7530

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lg/xo;-><init>(Landroid/content/Context;JZ)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lg/xo;->k(Z)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzawf;->i:Lg/xo;
    :try_end_0
    .catch Lg/ctc; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzawf;->i:Lg/xo;

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

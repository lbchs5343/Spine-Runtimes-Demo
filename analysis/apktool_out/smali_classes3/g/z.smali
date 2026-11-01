.class public final Lg/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field public final synthetic b:I

.field public final c:Lcom/google/android/gms/internal/ads/zzcbt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcbt;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/z;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/z;->a:Z

    iput-object p1, p0, Lg/z;->c:Lcom/google/android/gms/internal/ads/zzcbt;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcbt;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/z;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lg/z;->a:Z

    iput-object p1, p0, Lg/z;->c:Lcom/google/android/gms/internal/ads/zzcbt;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/z;->a:Z

    iget-object v0, p0, Lg/z;->c:Lcom/google/android/gms/internal/ads/zzcbt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbt;->v()V

    return-void
.end method

.method public final run()V
    .locals 3

    iget v0, p0, Lg/z;->b:I

    iget-object v1, p0, Lg/z;->c:Lcom/google/android/gms/internal/ads/zzcbt;

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lg/z;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcbt;->v()V

    sget-object v0, Lg/esy;->a:Lg/gfx;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lg/z;->a:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "isVisible"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/google/android/gms/internal/ads/zzcbt;->a:I

    const-string v2, "windowVisibilityChanged"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcbt;->u(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

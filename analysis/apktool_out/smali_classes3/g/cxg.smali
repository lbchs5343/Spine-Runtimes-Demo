.class public final Lg/cxg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzcbt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcbt;I)V
    .locals 0

    iput p2, p0, Lg/cxg;->a:I

    iput-object p1, p0, Lg/cxg;->b:Lcom/google/android/gms/internal/ads/zzcbt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lg/cxg;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lg/cxg;->b:Lcom/google/android/gms/internal/ads/zzcbt;

    packed-switch v0, :pswitch_data_0

    new-array v0, v1, [Ljava/lang/String;

    sget v1, Lcom/google/android/gms/internal/ads/zzcbt;->a:I

    const-string v1, "surfaceDestroyed"

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzcbt;->u(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :pswitch_0
    new-array v0, v1, [Ljava/lang/String;

    sget v1, Lcom/google/android/gms/internal/ads/zzcbt;->a:I

    const-string v1, "surfaceCreated"

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzcbt;->u(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

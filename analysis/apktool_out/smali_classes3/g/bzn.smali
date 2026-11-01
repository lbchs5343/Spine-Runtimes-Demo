.class public final Lg/bzn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbyh;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzcfs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcfs;Lcom/google/android/gms/internal/ads/zzbyh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/bzn;->a:Lcom/google/android/gms/internal/ads/zzbyh;

    iput-object p1, p0, Lg/bzn;->b:Lcom/google/android/gms/internal/ads/zzcfs;

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/google/android/gms/internal/ads/zzcfs;->zzb:I

    const/16 v0, 0xa

    iget-object v1, p0, Lg/bzn;->b:Lcom/google/android/gms/internal/ads/zzcfs;

    iget-object v2, p0, Lg/bzn;->a:Lcom/google/android/gms/internal/ads/zzbyh;

    invoke-virtual {v1, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcfs;->ai(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbyh;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

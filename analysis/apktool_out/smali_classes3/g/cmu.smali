.class public final Lg/cmu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzcbj;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcbj;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg/cmu;->b:I

    iput p3, p0, Lg/cmu;->c:I

    iput-object p1, p0, Lg/cmu;->a:Lcom/google/android/gms/internal/ads/zzcbj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg/cmu;->a:Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcbj;->c:Lcom/google/android/gms/internal/ads/zzcbk;

    if-eqz v0, :cond_0

    iget v1, p0, Lg/cmu;->b:I

    iget v2, p0, Lg/cmu;->c:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcbk;->zzj(II)V

    :cond_0
    return-void
.end method

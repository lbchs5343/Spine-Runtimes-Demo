.class public final synthetic Lg/bzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lg/gfk;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Lg/gfk;Ljava/util/concurrent/atomic/AtomicInteger;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bzi;->d:Lg/gfk;

    iput-object p2, p0, Lg/bzi;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lg/bzi;->a:I

    iput p4, p0, Lg/bzi;->b:I

    iput p5, p0, Lg/bzi;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lg/bzi;->d:Lg/gfk;

    iget-object p2, p1, Lg/gfk;->i:Lcom/google/android/gms/internal/ads/zzdvk;

    iget-object v0, p0, Lg/bzi;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lg/bzi;->a:I

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lg/bzi;->b:I

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvg;->zzb:Lcom/google/android/gms/internal/ads/zzdvg;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzdvk;->zzm(Lcom/google/android/gms/internal/ads/zzdvg;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lg/bzi;->c:I

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvg;->zzc:Lcom/google/android/gms/internal/ads/zzdvg;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzdvk;->zzm(Lcom/google/android/gms/internal/ads/zzdvg;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvg;->zza:Lcom/google/android/gms/internal/ads/zzdvg;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzdvk;->zzm(Lcom/google/android/gms/internal/ads/zzdvg;)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lg/gfk;->p()V

    return-void
.end method

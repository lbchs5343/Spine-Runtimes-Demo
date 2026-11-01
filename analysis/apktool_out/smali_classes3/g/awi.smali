.class public final Lg/awi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfwh;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/awi;->a:I

    iput-object p2, p0, Lg/awi;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lg/awi;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/awi;->b:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "nas"

    invoke-static {v0, v1, p1}, Lg/der;->am(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    return-object v0

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbvx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfce;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfho;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbvx;->zzj:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfho;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfce;-><init>(Lcom/google/android/gms/internal/ads/zzbvx;Lcom/google/android/gms/internal/ads/zzfhm;)V

    iget-object p1, p0, Lg/awi;->b:Ljava/lang/Object;

    check-cast p1, Lg/dpa;

    iput-object v0, p1, Lg/dpa;->c:Ljava/lang/Object;

    return-object v0

    :pswitch_1
    const-string v0, ""

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdyw;

    invoke-static {v0, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Failed to get a cache key, reverting to legacy flow."

    invoke-static {p1}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lg/awi;->b:Ljava/lang/Object;

    check-cast p1, Lg/dpa;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfce;

    iget-object v1, p1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcvt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcvt;->zzg()Lcom/google/android/gms/internal/ads/zzffo;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzd:Lg/aeh;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzf:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzffo;->zzj:Lg/gby;

    iget-object v4, p1, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfhc;

    invoke-interface {v4, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzfhc;->zzc(Lg/aeh;Ljava/lang/String;Lg/gby;)Lcom/google/android/gms/internal/ads/zzfhm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfce;-><init>(Lcom/google/android/gms/internal/ads/zzbvx;Lcom/google/android/gms/internal/ads/zzfhm;)V

    iput-object v0, p1, Lg/dpa;->c:Ljava/lang/Object;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

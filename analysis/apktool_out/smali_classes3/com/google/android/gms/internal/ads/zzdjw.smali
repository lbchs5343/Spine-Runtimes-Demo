.class public final synthetic Lcom/google/android/gms/internal/ads/zzdjw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdjy;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdku;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdjy;Lcom/google/android/gms/internal/ads/zzdku;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjw;->zza:Lcom/google/android/gms/internal/ads/zzdjy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjw;->zzb:Lcom/google/android/gms/internal/ads/zzdku;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjw;->zza:Lcom/google/android/gms/internal/ads/zzdjy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjw;->zzb:Lcom/google/android/gms/internal/ads/zzdku;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdjy;->c:Lcom/google/android/gms/internal/ads/zzdiy;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdjy;->j:Lcom/google/android/gms/internal/ads/zzdjd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdjd;->zzf()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdjd;->zze()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v6

    goto :goto_2

    :cond_1
    :goto_0
    const-string v3, "1098"

    const-string v4, "3011"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    const/4 v7, 0x2

    if-ge v4, v7, :cond_0

    aget-object v7, v3, v4

    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/zzdku;->zzg(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_2

    check-cast v7, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdku;->zzf()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdiy;->zze()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdjy;->g:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdiy;->zze()Landroid/view/View;

    move-result-object v8

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    if-nez v7, :cond_7

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbfn;->zze:I

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzdjy;->l(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v7, v6

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdiy;->zzl()Lcom/google/android/gms/internal/ads/zzbfr;

    move-result-object v8

    instance-of v8, v8, Lcom/google/android/gms/internal/ads/zzbfi;

    if-nez v8, :cond_5

    move-object v8, v6

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdiy;->zzl()Lcom/google/android/gms/internal/ads/zzbfr;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzbfi;

    if-nez v7, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbfi;->zzc()I

    move-result v7

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/zzdjy;->l(Landroid/widget/RelativeLayout$LayoutParams;I)V

    move-object v7, v6

    :cond_6
    new-instance v9, Lcom/google/android/gms/internal/ads/zzbfj;

    invoke-direct {v9, v3, v8, v4}, Lcom/google/android/gms/internal/ads/zzbfj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbfi;Landroid/widget/RelativeLayout$LayoutParams;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcn;->zzdS:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v4, Lg/edt;->a:Lg/edt;

    iget-object v4, v4, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v9, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v8, v9

    :cond_7
    :goto_3
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-nez v8, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    instance-of v9, v9, Landroid/view/ViewGroup;

    if-eqz v9, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_a
    new-instance v7, Lg/dks;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdku;->zzf()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdku;->zzh()Landroid/widget/FrameLayout;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_b
    :goto_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdku;->zzk()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v8, v4}, Lcom/google/android/gms/internal/ads/zzdku;->zzq(Ljava/lang/String;Landroid/view/View;Z)V

    :goto_5
    sget-object v7, Lcom/google/android/gms/internal/ads/zzdju;->zza:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :cond_c
    if-ge v9, v8, :cond_d

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v1, v10}, Lcom/google/android/gms/internal/ads/zzdku;->zzg(Ljava/lang/String;)Landroid/view/View;

    move-result-object v10

    instance-of v11, v10, Landroid/view/ViewGroup;

    add-int/lit8 v9, v9, 0x1

    if-eqz v11, :cond_c

    check-cast v10, Landroid/view/ViewGroup;

    goto :goto_6

    :cond_d
    move-object v10, v6

    :goto_6
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdjy;->b:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzdjv;

    invoke-direct {v8, v0, v10}, Lcom/google/android/gms/internal/ads/zzdjv;-><init>(Lcom/google/android/gms/internal/ads/zzdjy;Landroid/view/ViewGroup;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-nez v10, :cond_e

    goto/16 :goto_9

    :cond_e
    invoke-virtual {v0, v10, v4}, Lcom/google/android/gms/internal/ads/zzdjy;->m(Landroid/view/ViewGroup;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdiy;->zzs()Lcom/google/android/gms/internal/ads/zzcfk;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdiy;->zzs()Lcom/google/android/gms/internal/ads/zzcfk;

    move-result-object v0

    new-instance v2, Lg/ffr;

    const/16 v3, 0x12

    invoke-direct {v2, v1, v3, v10}, Lg/ffr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzar(Lcom/google/android/gms/internal/ads/zzbfm;)V

    return-void

    :cond_f
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcn;->zzjH:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v7, Lg/edt;->a:Lg/edt;

    iget-object v8, v7, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v0, v10, v5}, Lcom/google/android/gms/internal/ads/zzdjy;->m(Landroid/view/ViewGroup;Z)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdiy;->zzq()Lcom/google/android/gms/internal/ads/zzcfk;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdiy;->zzq()Lcom/google/android/gms/internal/ads/zzcfk;

    move-result-object v0

    new-instance v2, Lg/ffr;

    const/16 v3, 0x12

    invoke-direct {v2, v1, v3, v10}, Lg/ffr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzar(Lcom/google/android/gms/internal/ads/zzbfm;)V

    return-void

    :cond_10
    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdku;->zzf()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    :cond_11
    if-eqz v6, :cond_14

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdjy;->i:Lcom/google/android/gms/internal/ads/zzdiv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiv;->zza()Lcom/google/android/gms/internal/ads/zzbfv;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfv;->zzi()Lg/bjq;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_14

    invoke-static {v0}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdku;->zzj()Lg/bjq;

    move-result-object v0

    if-eqz v0, :cond_13

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzgb:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v4, v7, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_7

    :cond_12
    invoke-static {v0}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_8

    :cond_13
    :goto_7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdjy;->a:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_8
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :catch_0
    const-string v0, "Could not get main image drawable"

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    :cond_14
    :goto_9
    return-void
.end method

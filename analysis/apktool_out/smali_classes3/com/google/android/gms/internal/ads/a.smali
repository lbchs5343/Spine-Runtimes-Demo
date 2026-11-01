.class public final Lcom/google/android/gms/internal/ads/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgee;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzect;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzect;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/a;->a:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a;->b:Lcom/google/android/gms/internal/ads/zzect;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "Failed to get signals bundle"

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 10

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a;->b:Lcom/google/android/gms/internal/ads/zzect;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzecu;->g:Lg/gil;

    check-cast v1, Lg/cmo;

    invoke-virtual {v1}, Lg/cmo;->ax()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "ad_types"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/List;

    goto :goto_0

    :cond_1
    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_4

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_4
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x3

    sparse-switch v7, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v4, "interstitial"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :sswitch_1
    const-string v4, "rewarded"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x3

    goto :goto_5

    :sswitch_2
    const-string v4, "native"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x2

    goto :goto_5

    :sswitch_3
    const-string v7, "banner"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v4, -0x1

    :goto_5
    if-eqz v4, :cond_9

    if-eq v4, v6, :cond_8

    if-eq v4, v8, :cond_7

    if-eq v4, v9, :cond_6

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbs$zzd$zza;->zza:Lcom/google/android/gms/internal/ads/zzbbs$zzd$zza;

    goto :goto_6

    :cond_6
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbs$zzd$zza;->zzj:Lcom/google/android/gms/internal/ads/zzbbs$zzd$zza;

    goto :goto_6

    :cond_7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbs$zzd$zza;->zzf:Lcom/google/android/gms/internal/ads/zzbbs$zzd$zza;

    goto :goto_6

    :cond_8
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbs$zzd$zza;->zzc:Lcom/google/android/gms/internal/ads/zzbbs$zzd$zza;

    goto :goto_6

    :cond_9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbs$zzd$zza;->zzb:Lcom/google/android/gms/internal/ads/zzbbs$zzd$zza;

    :goto_6
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    const-string v1, "device"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzfgc;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "network"

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzfgc;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "active_network_state"

    invoke-virtual {v1, v3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzect;->a:Landroid/util/SparseArray;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzd;->zza:Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzd;

    invoke-virtual {v3, v1, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbs$zzab;->zza()Lcom/google/android/gms/internal/ads/zzbbs$zzab$zza;

    move-result-object v3

    const/4 v7, -0x2

    const-string v8, "cnt"

    invoke-virtual {p1, v8, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "gnt"

    invoke-virtual {p1, v8, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne v7, v5, :cond_b

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbs$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbbs$zzq;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzect;->f:Lcom/google/android/gms/internal/ads/zzbbs$zzq;

    goto :goto_9

    :cond_b
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbbs$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbbs$zzq;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzect;->f:Lcom/google/android/gms/internal/ads/zzbbs$zzq;

    if-eqz v7, :cond_d

    if-eq v7, v6, :cond_c

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzc;->zza:Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzc;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbbs$zzab$zza;->zzd(Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzc;)Lcom/google/android/gms/internal/ads/zzbbs$zzab$zza;

    goto :goto_7

    :cond_c
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzc;->zzc:Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzc;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbbs$zzab$zza;->zzd(Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzc;)Lcom/google/android/gms/internal/ads/zzbbs$zzab$zza;

    goto :goto_7

    :cond_d
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzc;->zzb:Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzc;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbbs$zzab$zza;->zzd(Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzc;)Lcom/google/android/gms/internal/ads/zzbbs$zzab$zza;

    :goto_7
    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzb;->zza:Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzb;

    goto :goto_8

    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzb;->zzd:Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzb;

    goto :goto_8

    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzb;->zzc:Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzb;

    goto :goto_8

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzb;

    :goto_8
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbbs$zzab$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbbs$zzab$zzb;)Lcom/google/android/gms/internal/ads/zzbbs$zzab$zza;

    :goto_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbs$zzab;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzecr;

    invoke-direct {v3, p0, v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzecr;-><init>(Lcom/google/android/gms/internal/ads/a;Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbbs$zzab;Lcom/google/android/gms/internal/ads/zzbbs$zzaf$zzd;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzecu;->h:Lcom/google/android/gms/internal/ads/zzech;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzech;->zza(Lcom/google/android/gms/internal/ads/zzfiv;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_3
        -0x3ebdafe9 -> :sswitch_2
        -0xe47b3f2 -> :sswitch_1
        0x240b672c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

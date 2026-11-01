.class public final synthetic Lcom/google/android/gms/internal/ads/zzedt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeea;

.field public final synthetic zzb:Landroid/app/Activity;

.field public final synthetic zzc:Lg/cwg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeea;Landroid/app/Activity;Lg/cwg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedt;->zza:Lcom/google/android/gms/internal/ads/zzeea;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedt;->zzb:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzedt;->zzc:Lg/cwg;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedt;->zza:Lcom/google/android/gms/internal/ads/zzeea;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzedt;->zzb:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedt;->zzc:Lg/cwg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dialog_action"

    const-string v3, "confirm"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzeea;->g:Ljava/lang/String;

    const-string v3, "rtsdc"

    invoke-virtual {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzeea;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->k:Lg/lp;

    invoke-virtual {v1, p2}, Lg/feo;->d(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeea;->k()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/cwg;->zzb()V

    :cond_0
    return-void
.end method

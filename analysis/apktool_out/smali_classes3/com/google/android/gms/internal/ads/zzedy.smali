.class public final synthetic Lcom/google/android/gms/internal/ads/zzedy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeea;

.field public final synthetic zzb:Lg/cwg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeea;Lg/cwg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedy;->zza:Lcom/google/android/gms/internal/ads/zzeea;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedy;->zzb:Lg/cwg;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedy;->zza:Lcom/google/android/gms/internal/ads/zzeea;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedy;->zzb:Lg/cwg;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzeea;->d:Lcom/google/android/gms/internal/ads/zzedp;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzeea;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzedp;->zzc(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dialog_action"

    const-string v3, "dismiss"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzeea;->g:Ljava/lang/String;

    const-string v3, "dialog_click"

    invoke-virtual {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzeea;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/cwg;->zzb()V

    :cond_0
    return-void
.end method

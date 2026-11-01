.class public final synthetic Lcom/google/android/gms/internal/ads/zzedw;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedw;->zza:Lcom/google/android/gms/internal/ads/zzeea;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedw;->zzb:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzedw;->zzc:Lg/cwg;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedw;->zza:Lcom/google/android/gms/internal/ads/zzeea;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzedw;->zzb:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedw;->zzc:Lg/cwg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dialog_action"

    const-string v3, "confirm"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzeea;->g:Ljava/lang/String;

    const-string v3, "dialog_click"

    invoke-virtual {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzeea;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzeea;->i(Landroid/app/Activity;Lg/cwg;)V

    return-void
.end method

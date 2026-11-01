.class public final Lcom/google/android/gms/internal/ads/zzftr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:I

.field public static final zzb:Landroid/content/ClipData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/high16 v0, 0x4000000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/google/android/gms/internal/ads/zzftr;->zza:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, ""

    invoke-static {v1, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzftr;->zzb:Landroid/content/ClipData;

    return-void
.end method

.method public static a(ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzftr;->b(II)Z

    move-result v1

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzftr;->b(II)Z

    move-result v2

    const/4 v3, 0x5

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzftr;->b(II)Z

    move-result v3

    const/4 v4, 0x3

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzftr;->b(II)Z

    move-result v4

    and-int/lit8 v5, p0, 0x58

    const/4 v6, 0x1

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-string v7, "Cannot set any dangerous parts of intent to be mutable."

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzfwq;->zzf(ZLjava/lang/Object;)V

    and-int/lit8 v5, p0, 0x1

    if-eqz v5, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const-string v7, "Cannot use Intent.FILL_IN_ACTION unless the action is marked as mutable."

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzfwq;->zzf(ZLjava/lang/Object;)V

    and-int/lit8 v5, p0, 0x2

    if-eqz v5, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const-string v7, "Cannot use Intent.FILL_IN_DATA unless the data is marked as mutable."

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzfwq;->zzf(ZLjava/lang/Object;)V

    and-int/lit8 v5, p0, 0x4

    if-eqz v5, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    const-string v7, "Cannot use Intent.FILL_IN_CATEGORIES unless the category is marked as mutable."

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzfwq;->zzf(ZLjava/lang/Object;)V

    and-int/lit16 v5, p0, 0x80

    if-eqz v5, :cond_7

    if-eqz v1, :cond_8

    :cond_7
    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    const-string v7, "Cannot use Intent.FILL_IN_CLIP_DATA unless the clip data is marked as mutable."

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzfwq;->zzf(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    const-string v7, "Must set component on Intent."

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzfwq;->zzf(ZLjava/lang/Object;)V

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzftr;->b(II)Z

    move-result v5

    const/16 v7, 0x17

    const/high16 v8, 0x4000000

    if-eqz v5, :cond_a

    invoke-static {p0, v8}, Lcom/google/android/gms/internal/ads/zzftr;->b(II)Z

    move-result v0

    xor-int/2addr v0, v6

    const-string v5, "Cannot set mutability flags if PendingIntent.FLAG_IMMUTABLE is set."

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzfwq;->zzf(ZLjava/lang/Object;)V

    goto :goto_6

    :cond_a
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_b

    invoke-static {p0, v8}, Lcom/google/android/gms/internal/ads/zzftr;->b(II)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    const/4 v0, 0x1

    :cond_c
    const-string v5, "Must set PendingIntent.FLAG_IMMUTABLE for SDK >= 23 if no parts of intent are mutable."

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzfwq;->zzf(ZLjava/lang/Object;)V

    :goto_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v7, :cond_d

    invoke-static {p0, v8}, Lcom/google/android/gms/internal/ads/zzftr;->b(II)Z

    move-result p0

    if-nez p0, :cond_12

    :cond_d
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_e

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_e
    const-string p0, ""

    if-nez v4, :cond_f

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_f
    if-nez v2, :cond_10

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_10

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_10
    if-nez v3, :cond_11

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_11

    sget-object p0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string p1, "*/*"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_11
    if-nez v1, :cond_12

    invoke-virtual {v0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p0

    if-nez p0, :cond_12

    sget-object p0, Lcom/google/android/gms/internal/ads/zzftr;->zzb:Landroid/content/ClipData;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    :cond_12
    return-object v0
.end method

.method public static b(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zza(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 0

    const/high16 p1, 0xc000000

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzftr;->a(ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p0, p3, p2, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Landroid/content/Context;ILandroid/content/Intent;II)Landroid/app/PendingIntent;
    .locals 0

    const/4 p1, 0x0

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzftr;->a(ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

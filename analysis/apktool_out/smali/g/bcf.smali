.class public final Lg/bcf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/io/Serializable;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 0

    iput p4, p0, Lg/bcf;->c:I

    iput-object p1, p0, Lg/bcf;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg/bcf;->a:Ljava/io/Serializable;

    iput-object p3, p0, Lg/bcf;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsh;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/bcf;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/bcf;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg/bcf;->a:Ljava/io/Serializable;

    iput-object p1, p0, Lg/bcf;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget p1, p0, Lg/bcf;->c:I

    iget-object p2, p0, Lg/bcf;->a:Ljava/io/Serializable;

    iget-object v0, p0, Lg/bcf;->d:Ljava/lang/Object;

    iget-object v1, p0, Lg/bcf;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbsh;

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzbsh;->a:Landroid/app/Activity;

    const-string v2, "download"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    :try_start_0
    check-cast v0, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v2, v0, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    sget-object p2, Lg/ti;->a:Lg/ti;

    iget-object p2, p2, Lg/ti;->z:Lg/esy;

    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    invoke-virtual {p1, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Could not store picture."

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbsk;->zzh(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast v0, Landroid/app/Activity;

    check-cast p2, Ljava/lang/Class;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, p2, v1, v2}, Lg/dov;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    return-void

    :pswitch_1
    const-string p1, "Disable accessibility fail."

    check-cast v0, Landroid/app/Activity;

    const-string v4, "accessibility"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_5

    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setState"

    new-array v7, v3, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v2

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception p2

    goto :goto_3

    :catch_3
    move-exception p2

    goto :goto_4

    :cond_1
    :goto_1
    check-cast p2, Ljava/lang/Class;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, p2, v1, v3}, Lg/dov;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :goto_2
    invoke-static {p1, p2}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_3
    invoke-static {p1, p2}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    invoke-static {p1, p2}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

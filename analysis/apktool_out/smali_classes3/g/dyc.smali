.class public final synthetic Lg/dyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lg/gfk;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lg/gfk;IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dyc;->d:Lg/gfk;

    iput p2, p0, Lg/dyc;->e:I

    iput p3, p0, Lg/dyc;->a:I

    iput p4, p0, Lg/dyc;->b:I

    iput p5, p0, Lg/dyc;->c:I

    iput p6, p0, Lg/dyc;->f:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object p1, p0, Lg/dyc;->d:Lg/gfk;

    iget-object v0, p1, Lg/gfk;->i:Lcom/google/android/gms/internal/ads/zzdvk;

    iget-object v1, p1, Lg/gfk;->f:Landroid/content/Context;

    iget v2, p0, Lg/dyc;->e:I

    if-ne p2, v2, :cond_4

    instance-of p2, v1, Landroid/app/Activity;

    if-nez p2, :cond_0

    const-string p1, "Can not create dialog without Activity Context"

    invoke-static {p1}, Lg/agd;->k(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p1, Lg/gfk;->k:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "No debug information"

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "\\+"

    const-string v3, "%20"

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lg/ti;->a:Lg/ti;

    iget-object v3, v3, Lg/ti;->z:Lg/esy;

    invoke-static {p2}, Lg/esy;->u(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, p2

    :goto_1
    sget-object p2, Lg/ti;->a:Lg/ti;

    iget-object p2, p2, Lg/ti;->z:Lg/esy;

    invoke-static {v1}, Lg/esy;->af(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Ad Information"

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lg/dtm;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1, v2}, Lg/dtm;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-string p1, "Share"

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lg/efa;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lg/efa;-><init>(I)V

    const-string v0, "Close"

    invoke-virtual {p2, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_4
    iget v1, p0, Lg/dyc;->a:I

    if-ne p2, v1, :cond_5

    const-string p2, "Debug mode [Creative Preview] selected."

    invoke-static {p2}, Lg/agd;->c(Ljava/lang/String;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v0, Lg/fyu;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lg/fyu;-><init>(Lg/gfk;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    iget v1, p0, Lg/dyc;->b:I

    if-ne p2, v1, :cond_6

    const-string p2, "Debug mode [Troubleshooting] selected."

    invoke-static {p2}, Lg/agd;->c(Ljava/lang/String;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v0, Lg/fyu;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lg/fyu;-><init>(Lg/gfk;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    iget v1, p0, Lg/dyc;->c:I

    if-ne p2, v1, :cond_8

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvk;->zzq()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lg/fyu;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lg/fyu;-><init>(Lg/gfk;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    new-instance v0, Lg/ewc;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v2}, Lg/ewc;-><init>(Lg/gfk;Lcom/google/android/gms/internal/ads/zzges;I)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    iget v1, p0, Lg/dyc;->f:I

    if-ne p2, v1, :cond_a

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvk;->zzq()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lg/fyu;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lg/fyu;-><init>(Lg/gfk;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    new-instance v0, Lg/ewc;

    const/4 v2, 0x1

    invoke-direct {v0, p1, p2, v2}, Lg/ewc;-><init>(Lg/gfk;Lcom/google/android/gms/internal/ads/zzges;I)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method

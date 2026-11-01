.class public final Lg/dj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>(ILjava/util/concurrent/LinkedBlockingQueue;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lg/dj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/dj;->c:I

    iput-object p2, p0, Lg/dj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Lg/dj;->b:I

    iput-object p1, p0, Lg/dj;->a:Ljava/lang/Object;

    iput p2, p0, Lg/dj;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lg/dj;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lg/dj;->c:I

    iget-object v4, p0, Lg/dj;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzawf;

    if-lez v0, :cond_0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzawf;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzawf;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzawf;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzfpx;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzata;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    iget-object v0, p0, Lg/dj;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzawf;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzawf;->n:Lcom/google/android/gms/internal/ads/zzata;

    iget v0, p0, Lg/dj;->c:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_4

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzata;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzata;->zzh()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzata;->zzak()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzata;->zzf()Lcom/google/android/gms/internal/ads/zzatl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatl;->zzg()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzata;->zzf()Lcom/google/android/gms/internal/ads/zzatl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatl;->zza()J

    move-result-wide v0

    const-wide/16 v4, -0x2

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lg/dj;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzawf;

    iget v1, p0, Lg/dj;->c:I

    add-int/2addr v1, v3

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzawf;->c:Z

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzawf;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lg/dj;

    const/16 v4, 0x8

    invoke-direct {v3, v0, v1, v4}, Lg/dj;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    if-nez v1, :cond_4

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzawf;->b:Ljava/util/concurrent/Future;

    :cond_4
    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/dj;->a:Ljava/lang/Object;

    check-cast v0, Lg/fbd;

    iget v1, p0, Lg/dj;->c:I

    invoke-virtual {v0, v1}, Lg/fbd;->v(I)V

    return-void

    :goto_3
    :pswitch_1
    iget v0, p0, Lg/dj;->c:I

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lg/dj;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void

    :pswitch_2
    iget-object v0, p0, Lg/dj;->a:Ljava/lang/Object;

    check-cast v0, Lg/fpd;

    iget-object v4, v0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v4, Lg/elf;

    iget-object v5, v0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v5, Lg/cdy;

    iget-object v6, v5, Lg/cdy;->e:Lg/cdy;

    const-string v7, "com.android.vending"

    invoke-static {v6, v7, v3}, Lg/eyt;->ab(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "com.google.android.gms"

    invoke-static {v6, v7, v3}, Lg/eyt;->ab(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v5, Lg/cdy;->e:Lg/cdy;

    iget v7, p0, Lg/dj;->c:I

    invoke-static {v4, v7}, Lg/cdy;->g(Lg/elf;I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v7, v8, v2

    const v2, 0x7f12024c

    invoke-virtual {v6, v2, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v3}, Lg/gm;->d(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_6
    iget-object v2, v5, Lg/cdy;->c:Lg/fyl;

    iget-object v0, v0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v0, Lg/fnq;

    invoke-virtual {v2, v0, v3}, Lg/fyl;->g(Lg/btp;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Lg/ajf;

    invoke-direct {v0}, Landroid/app/DialogFragment;-><init>()V

    invoke-static {v4, v0, v1, v3}, Lg/kj;->t(Landroid/app/Activity;Lg/cqo;Landroid/os/Bundle;Z)V

    :goto_4
    return-void

    :pswitch_3
    iget v0, p0, Lg/dj;->c:I

    iget-object v1, p0, Lg/dj;->a:Ljava/lang/Object;

    check-cast v1, Lc/b/b;

    :try_start_2
    invoke-virtual {v1}, Lg/ub;->openOptionsMenu()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v2

    const/4 v3, 0x3

    if-gt v0, v3, :cond_8

    add-int/lit8 v2, v0, 0x1

    sget v3, Lc/b/b;->d:I

    invoke-virtual {v1, v2}, Lc/b/b;->z(I)V

    goto :goto_5

    :cond_8
    invoke-static {v2}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :goto_5
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lg/byd;

    const/16 v3, 0x15

    invoke-direct {v2, v3, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    if-nez v0, :cond_9

    const-wide/16 v3, 0x320

    goto :goto_6

    :cond_9
    const-wide/16 v3, 0x1f4

    :goto_6
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_4
    iget-object v0, p0, Lg/dj;->a:Ljava/lang/Object;

    check-cast v0, Lg/ebb;

    iget-object v0, v0, Lg/ebb;->o:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lg/dj;->c:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lg/dj;->a:Ljava/lang/Object;

    check-cast v0, Lg/elf;

    iget v2, p0, Lg/dj;->c:I

    iget-object v3, v0, Lg/elf;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, v2, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    if-eqz v2, :cond_a

    iget-boolean v3, v0, Lg/elf;->m:Z

    iget v4, v0, Lg/elf;->p:I

    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    iput-object v1, v0, Lg/elf;->v:Ljava/lang/String;

    iput-boolean v3, v0, Lg/elf;->m:Z

    iput v4, v0, Lg/elf;->p:I

    :cond_a
    return-void

    :pswitch_6
    iget-object v0, p0, Lg/dj;->a:Ljava/lang/Object;

    check-cast v0, Lg/fnq;

    iget v1, p0, Lg/dj;->c:I

    iget-object v0, v0, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v0, Lg/dzm;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Lg/dzm;->c(I)V

    :cond_b
    return-void

    :pswitch_7
    iget-object v0, p0, Lg/dj;->a:Ljava/lang/Object;

    check-cast v0, Lg/fyx;

    iget v1, p0, Lg/dj;->c:I

    invoke-virtual {v0, v1}, Lg/fyx;->showTipMessageInner(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

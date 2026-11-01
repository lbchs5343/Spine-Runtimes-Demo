.class public final Lg/bpy;
.super Lg/tq;
.source "SourceFile"


# instance fields
.field public volatile bh:Ljava/util/concurrent/ScheduledExecutorService;

.field public volatile bi:I

.field public final bj:Landroid/content/Context;

.field public volatile bk:Lg/aco;

.field public volatile bl:Lg/exa;


# direct methods
.method public constructor <init>(Lg/cuf;Landroid/content/Context;Lg/eoy;Lg/feb;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lg/tq;-><init>(Lg/cuf;Landroid/content/Context;Lg/eoy;Lg/feb;)V

    const/4 p1, 0x0

    iput p1, p0, Lg/bpy;->bi:I

    iput-object p2, p0, Lg/bpy;->bj:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lg/cuf;Landroid/content/Context;Lg/feb;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lg/tq;-><init>(Lg/cuf;Landroid/content/Context;Lg/feb;)V

    const/4 p1, 0x0

    iput p1, p0, Lg/bpy;->bi:I

    iput-object p2, p0, Lg/bpy;->bj:Landroid/content/Context;

    return-void
.end method

.method public static synthetic bm(Lg/bpy;Lg/aoy;Lg/emr;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lg/tq;->am(Lg/aoy;Lg/emr;)V

    return-void
.end method

.method public static synthetic bn(Lg/bpy;Lg/czw;Lg/dzt;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lg/tq;->aq(Lg/czw;Lg/dzt;)V

    return-void
.end method


# virtual methods
.method public final am(Lg/aoy;Lg/emr;)V
    .locals 8

    new-instance v0, Lg/gmv;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p2}, Lg/gmv;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lg/eax;

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0, v2}, Lg/bpy;->bs(ILg/dts;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ap(Lg/eie;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lg/bpy;->bp()Z

    move-result v0

    const/16 v1, 0x1a

    if-eqz v0, :cond_0

    const-string v0, "BillingClientTesting"

    const-string v2, "Billing Override Service connection is valid. No need to re-initialize."

    invoke-static {v0, v2}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lg/bpy;->bo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :try_start_1
    iget v0, p0, Lg/bpy;->bi:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    sget v0, Lg/gbs;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto/16 :goto_1

    :cond_1
    :try_start_2
    iget v0, p0, Lg/bpy;->bi:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    sget v0, Lg/gbs;->a:I

    const-string v0, "Billing Override Service connection is disconnected."

    sget-object v2, Lg/hm;->zzL:Lg/hm;

    const/4 v3, -0x1

    invoke-static {v3, v0}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Lg/bpy;->bq(Lg/hm;ILg/ejd;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto/16 :goto_1

    :cond_2
    :try_start_3
    iput v2, p0, Lg/bpy;->bi:I

    const-string v0, "BillingClientTesting"

    const-string v3, "Starting Billing Override Service setup."

    invoke-static {v0, v3}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lg/aco;

    const/4 v3, 0x7

    invoke-direct {v0, v3, p0}, Lg/aco;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/bpy;->bk:Lg/aco;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.apps.play.billingtestcompanion.BillingOverrideService.BIND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.apps.play.billingtestcompanion"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lg/bpy;->bj:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    sget-object v6, Lg/hm;->zza:Lg/hm;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_6

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v7, "com.google.android.apps.play.billingtestcompanion"

    invoke-static {v6, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v4, :cond_4

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lg/bpy;->bk:Lg/aco;

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "BillingClientTesting"

    const-string v1, "Billing Override Service was bonded successfully."

    invoke-static {v0, v1}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    goto :goto_1

    :cond_3
    :try_start_4
    sget-object v6, Lg/hm;->zzM:Lg/hm;

    goto :goto_0

    :cond_4
    sget-object v6, Lg/hm;->zzM:Lg/hm;

    goto :goto_0

    :cond_5
    sget-object v6, Lg/hm;->zzO:Lg/hm;

    :cond_6
    :goto_0
    iput v5, p0, Lg/bpy;->bi:I

    const-string v0, "BillingClientTesting"

    const-string v2, "Billing Override Service unavailable on device."

    invoke-static {v0, v2}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Billing Override Service unavailable on device."

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object v0

    invoke-virtual {p0, v6, v1, v0}, Lg/bpy;->bq(Lg/hm;ILg/ejd;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    :goto_1
    invoke-virtual {p0, p1}, Lg/tq;->az(Lg/eie;)V

    return-void

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final aq(Lg/czw;Lg/dzt;)V
    .locals 8

    new-instance v0, Lg/gmv;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Lg/gmv;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lg/eax;

    const/16 v6, 0x9

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0, v2}, Lg/bpy;->bs(ILg/dts;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bb()V
    .locals 3

    monitor-enter p0

    const/16 v0, 0x1b

    :try_start_0
    invoke-virtual {p0, v0}, Lg/bpy;->bo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x3

    :try_start_1
    iget-object v1, p0, Lg/bpy;->bk:Lg/aco;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/bpy;->bl:Lg/exa;

    if-eqz v1, :cond_0

    const-string v1, "BillingClientTesting"

    const-string v2, "Unbinding from Billing Override Service."

    invoke-static {v1, v2}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lg/bpy;->bj:Landroid/content/Context;

    iget-object v2, p0, Lg/bpy;->bk:Lg/aco;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v1, Lg/aco;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Lg/aco;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lg/bpy;->bk:Lg/aco;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lg/bpy;->bl:Lg/exa;

    iget-object v2, p0, Lg/bpy;->bh:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lg/bpy;->bh:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v1, p0, Lg/bpy;->bh:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    sget v1, Lg/gbs;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    :try_start_3
    iput v0, p0, Lg/bpy;->bi:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    invoke-super {p0}, Lg/tq;->bb()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_3

    :goto_2
    :try_start_4
    iput v0, p0, Lg/bpy;->bi:I

    throw v1

    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final bf(Lg/elf;Lg/dxb;)Lg/ejd;
    .locals 7

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lg/bpy;->br(I)Lg/gew;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x1c

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x6f54

    invoke-interface {v1, v5, v6, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    instance-of v1, v1, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    sget-object v1, Lg/hm;->zzaQ:Lg/hm;

    sget-object v4, Lg/edc;->r:Lg/ejd;

    invoke-virtual {p0, v1, v3, v4}, Lg/bpy;->bq(Lg/hm;ILg/ejd;)V

    sget v1, Lg/gbs;->a:I

    goto :goto_0

    :catch_1
    sget-object v1, Lg/hm;->zzaX:Lg/hm;

    sget-object v4, Lg/edc;->r:Lg/ejd;

    invoke-virtual {p0, v1, v3, v4}, Lg/bpy;->bq(Lg/hm;ILg/ejd;)V

    sget v1, Lg/gbs;->a:I

    :goto_0
    if-lez v2, :cond_1

    const-string p1, "Billing override value was set by a license tester."

    invoke-static {v2, p1}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object p1

    sget-object p2, Lg/hm;->zzaO:Lg/hm;

    invoke-virtual {p0, p2, v0, p1}, Lg/bpy;->bq(Lg/hm;ILg/ejd;)V

    invoke-virtual {p0, p1}, Lg/tq;->bg(Lg/ejd;)V

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Lg/tq;->bf(Lg/elf;Lg/dxb;)Lg/ejd;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    sget-object p1, Lg/hm;->zzaY:Lg/hm;

    sget-object p2, Lg/edc;->a:Lg/ejd;

    invoke-virtual {p0, p1, v0, p2}, Lg/bpy;->bq(Lg/hm;ILg/ejd;)V

    sget p1, Lg/gbs;->a:I

    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public final bo(I)V
    .locals 2

    sget v0, Lg/cgl;->a:I

    sget-object v0, Lg/apl;->zza:Lg/apl;

    invoke-static {p1, v0}, Lg/cgl;->d(ILg/apl;)Lg/eag;

    move-result-object p1

    const-string v0, "ApiSuccess should not be null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lg/tq;->b:Lg/ffr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v1, Lg/djs;

    invoke-virtual {v0, p1, v1}, Lg/ffr;->ai(Lg/eag;Lg/djs;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    sget p1, Lg/gbs;->a:I

    return-void
.end method

.method public final declared-synchronized bp()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lg/bpy;->bi:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/bpy;->bl:Lg/exa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/bpy;->bk:Lg/aco;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final bq(Lg/hm;ILg/ejd;)V
    .locals 2

    sget v0, Lg/cgl;->a:I

    const/4 v0, 0x0

    sget-object v1, Lg/apl;->zza:Lg/apl;

    invoke-static {p1, p2, p3, v0, v1}, Lg/cgl;->c(Lg/hm;ILg/ejd;Ljava/lang/String;Lg/apl;)Lg/hd;

    move-result-object p1

    const-string p2, "ApiFailure should not be null"

    invoke-static {p1, p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p2, p0, Lg/tq;->b:Lg/ffr;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p3, p2, Lg/ffr;->f:Ljava/lang/Object;

    check-cast p3, Lg/djs;

    invoke-virtual {p2, p1, p3}, Lg/ffr;->z(Lg/hd;Lg/djs;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    sget p1, Lg/gbs;->a:I

    return-void
.end method

.method public final br(I)Lg/gew;
    .locals 4

    invoke-virtual {p0}, Lg/bpy;->bp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget p1, Lg/gbs;->a:I

    sget-object p1, Lg/hm;->zzaP:Lg/hm;

    const/4 v0, -0x1

    const-string v2, "Billing Override Service connection is disconnected."

    invoke-static {v0, v2}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object v0

    const/16 v2, 0x1c

    invoke-virtual {p0, p1, v2, v0}, Lg/bpy;->bq(Lg/hm;ILg/ejd;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lg/fjp;

    invoke-direct {v0, p1}, Lg/fjp;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Lg/gqc;

    invoke-direct {v0, p0, p1, v1}, Lg/gqc;-><init>(Ljava/lang/Object;II)V

    new-instance p1, Lg/ewi;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lg/eou;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p1, Lg/ewi;->d:Lg/eou;

    new-instance v1, Lg/apy;

    invoke-direct {v1, p1}, Lg/apy;-><init>(Lg/ewi;)V

    iput-object v1, p1, Lg/ewi;->c:Lg/apy;

    const-class v2, Lg/gqc;

    iput-object v2, p1, Lg/ewi;->b:Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v0, p1}, Lg/gqc;->aq(Lg/ewi;)Ljava/lang/String;

    const-string v0, "billingOverrideService.getBillingOverride"

    iput-object v0, p1, Lg/ewi;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Lg/fdv;

    invoke-direct {v0, p1}, Lg/fdv;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Lg/afp;->d:Lg/cux;

    const/4 v2, 0x0

    iget-object v3, v1, Lg/apy;->b:Lg/ggp;

    invoke-virtual {p1, v3, v2, v0}, Lg/cux;->f(Lg/afp;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v3}, Lg/afp;->i(Lg/afp;)V

    :cond_1
    return-object v1
.end method

.method public final bs(ILg/dts;Ljava/lang/Runnable;)V
    .locals 7

    invoke-virtual {p0, p1}, Lg/bpy;->br(I)Lg/gew;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lg/bpy;->bh:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lg/bpy;->bh:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v2, p0, Lg/bpy;->bh:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lg/alw;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v0, v3, Lg/alw;->i:Lg/gew;

    new-instance v4, Lg/aku;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lg/aku;-><init>(I)V

    iput-object v3, v4, Lg/aku;->b:Ljava/lang/Object;

    const-wide/16 v5, 0x6f54

    invoke-interface {v2, v4, v5, v6, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v3, Lg/alw;->j:Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Lg/fyh;->zza:Lg/fyh;

    invoke-interface {v0, v4, v1}, Lg/gew;->l(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object v0, v3

    :goto_1
    new-instance v1, Lg/fkn;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput p1, v1, Lg/fkn;->b:I

    iput-object p2, v1, Lg/fkn;->c:Ljava/lang/Object;

    iput-object p3, v1, Lg/fkn;->d:Ljava/lang/Object;

    iput-object p0, v1, Lg/fkn;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Lg/tq;->aw()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lg/gfh;

    const/4 p3, 0x0

    invoke-direct {p2, v0, p3, v1}, Lg/gfh;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, p2, p1}, Lg/gew;->l(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

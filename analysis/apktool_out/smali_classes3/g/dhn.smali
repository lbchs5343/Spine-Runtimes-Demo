.class public final Lg/dhn;
.super Lg/bvf;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/bhz;Landroid/os/Bundle;Lg/bay;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/dhn;->c:I

    iput-object p1, p0, Lg/dhn;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg/dhn;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg/dhn;->a:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void
.end method

.method public constructor <init>(Lg/bhz;Ljava/lang/String;Lg/bay;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/dhn;->c:I

    iput-object p1, p0, Lg/dhn;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg/dhn;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/dhn;->d:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void
.end method

.method public constructor <init>(Lg/bhz;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Lg/dhn;->c:I

    iput-object p1, p0, Lg/dhn;->b:Ljava/lang/Object;

    iput-object p4, p0, Lg/dhn;->a:Ljava/lang/Object;

    iput-object p5, p0, Lg/dhn;->d:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void
.end method

.method public constructor <init>(Lg/eoa;Landroid/app/Activity;Lg/bay;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lg/dhn;->c:I

    iput-object p1, p0, Lg/dhn;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg/dhn;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/dhn;->d:Ljava/lang/Object;

    iget-object p1, p1, Lg/eoa;->b:Ljava/lang/Object;

    check-cast p1, Lg/bhz;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void
.end method

.method public constructor <init>(Lg/eoa;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lg/dhn;->c:I

    iput-object p1, p0, Lg/dhn;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg/dhn;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg/dhn;->a:Ljava/lang/Object;

    iget-object p1, p1, Lg/eoa;->b:Ljava/lang/Object;

    check-cast p1, Lg/bhz;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Lg/dhn;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lg/dhn;->b:Ljava/lang/Object;

    check-cast v0, Lg/eoa;

    iget-object v0, v0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v2, v1, Lg/dhn;->a:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lg/bpp;

    invoke-direct {v3, v2}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-object v2, v1, Lg/dhn;->d:Ljava/lang/Object;

    check-cast v2, Lg/bay;

    iget-wide v4, v1, Lg/bvf;->l:J

    invoke-interface {v0, v3, v2, v4, v5}, Lg/ees;->onActivitySaveInstanceState(Lg/bjq;Lg/brv;J)V

    return-void

    :pswitch_0
    iget-object v0, v1, Lg/dhn;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v1, Lg/dhn;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "com.google.app_measurement.screen_service"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lg/dhn;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Landroid/os/Bundle;

    if-eqz v4, :cond_1

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iget-object v2, v1, Lg/dhn;->b:Ljava/lang/Object;

    check-cast v2, Lg/eoa;

    iget-object v2, v2, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v2, Lg/bhz;

    iget-object v2, v2, Lg/bhz;->e:Lg/ees;

    invoke-static {v2}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v3, v1, Lg/dhn;->a:Ljava/lang/Object;

    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lg/bpp;

    invoke-direct {v4, v3}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-wide v5, v1, Lg/bvf;->l:J

    invoke-interface {v2, v4, v0, v5, v6}, Lg/ees;->onActivityCreated(Lg/bjq;Landroid/os/Bundle;J)V

    return-void

    :pswitch_1
    iget-object v0, v1, Lg/dhn;->b:Ljava/lang/Object;

    check-cast v0, Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v2, v1, Lg/dhn;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lg/dhn;->d:Ljava/lang/Object;

    check-cast v3, Lg/bay;

    invoke-interface {v0, v2, v3}, Lg/ees;->getMaxUserProperties(Ljava/lang/String;Lg/brv;)V

    return-void

    :pswitch_2
    iget-object v0, v1, Lg/dhn;->b:Ljava/lang/Object;

    check-cast v0, Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v2, v1, Lg/dhn;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget-object v3, v1, Lg/dhn;->a:Ljava/lang/Object;

    check-cast v3, Lg/bay;

    iget-wide v4, v1, Lg/bvf;->k:J

    invoke-interface {v0, v2, v3, v4, v5}, Lg/ees;->performAction(Landroid/os/Bundle;Lg/brv;J)V

    return-void

    :pswitch_3
    const-string v2, "com.google.android.gms.measurement.dynamite"

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, v1, Lg/dhn;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, v1, Lg/dhn;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lg/bhz;

    iget-object v0, v1, Lg/dhn;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v6, Lg/dxw;->l:Lg/cfg;

    invoke-static {v0, v6, v2}, Lg/dxw;->t(Landroid/content/Context;Lg/ere;Ljava/lang/String;)Lg/dxw;

    move-result-object v0

    const-string v6, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    invoke-virtual {v0, v6}, Lg/dxw;->v(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lg/ddj;->asInterface(Landroid/os/IBinder;)Lg/ees;

    move-result-object v0
    :try_end_1
    .catch Lg/eps; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v5, v0, v3, v4}, Lg/bhz;->j(Ljava/lang/Exception;ZZ)V

    const/4 v0, 0x0

    :goto_1
    iput-object v0, v5, Lg/bhz;->e:Lg/ees;

    iget-object v0, v1, Lg/dhn;->b:Ljava/lang/Object;

    check-cast v0, Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, v1, Lg/dhn;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v2}, Lg/dxw;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v5, v1, Lg/dhn;->a:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    invoke-static {v5, v2, v4}, Lg/dxw;->p(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ge v2, v0, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    new-instance v6, Lg/apu;

    int-to-long v9, v5

    iget-object v0, v1, Lg/dhn;->d:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Landroid/os/Bundle;

    iget-object v0, v1, Lg/dhn;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lg/awt;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const-wide/32 v7, 0x11d28

    invoke-direct/range {v6 .. v16}, Lg/apu;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v0, v1, Lg/dhn;->b:Ljava/lang/Object;

    check-cast v0, Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v2, v1, Lg/dhn;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    new-instance v5, Lg/bpp;

    invoke-direct {v5, v2}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-wide v7, v1, Lg/bvf;->k:J

    invoke-interface {v0, v5, v6, v7, v8}, Lg/ees;->initialize(Lg/bjq;Lg/apu;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    iget-object v2, v1, Lg/dhn;->b:Ljava/lang/Object;

    check-cast v2, Lg/bhz;

    invoke-virtual {v2, v0, v3, v4}, Lg/bhz;->j(Ljava/lang/Exception;ZZ)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h()V
    .locals 2

    iget v0, p0, Lg/dhn;->c:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/dhn;->d:Ljava/lang/Object;

    check-cast v0, Lg/bay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/bay;->zzd(Landroid/os/Bundle;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/dhn;->a:Ljava/lang/Object;

    check-cast v0, Lg/bay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/bay;->zzd(Landroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

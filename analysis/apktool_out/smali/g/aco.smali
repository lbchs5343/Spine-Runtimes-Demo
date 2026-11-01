.class public final Lg/aco;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/aco;->a:I

    iput-object p2, p0, Lg/aco;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method private final d(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method private final e(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method private final f(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method private final g(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget p1, p0, Lg/aco;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    const-string p1, "BillingClientTesting"

    const-string v1, "Billing Override Service connected."

    invoke-static {p1, v1}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lg/bpy;

    sget v1, Lg/dpf;->a:I

    const/4 v1, 0x2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lg/exa;

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Lg/exa;

    goto :goto_0

    :cond_1
    new-instance v2, Lg/gld;

    invoke-direct {v2, p2, v0, v1}, Lg/ob;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object v0, v2

    :goto_0
    iput-object v0, p1, Lg/bpy;->bl:Lg/exa;

    iput v1, p1, Lg/bpy;->bi:I

    const/16 p2, 0x1a

    invoke-virtual {p1, p2}, Lg/bpy;->bo(I)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lc/a/a;

    check-cast p2, Lg/zx;

    iget-object p2, p2, Lg/zx;->a:Lg/drp;

    iput-object p2, p1, Lc/a/a;->r:Lg/drp;

    iget-object p1, p1, Lg/eib;->bc:Lg/eib;

    const-string p2, "wv_small_window_default"

    invoke-static {p1, p2, v1}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lc/a/a;

    sget-object p2, Lg/erl;->s:Lg/ctt;

    if-eqz p2, :cond_2

    iget-boolean v0, p2, Lg/ctt;->g:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lg/ctt;->l()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p1, Lg/eib;->bb:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-static {p1, p2}, Lg/ern;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    iget-object p1, p0, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lc/a/a;

    iget-object p1, p1, Lc/a/a;->r:Lg/drp;

    iget-boolean p1, p1, Lg/drp;->i:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lc/a/a;

    invoke-virtual {p1, v2}, Lc/a/a;->x(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lc/a/a;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void

    :pswitch_1
    iget-object p1, p0, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lg/edx;

    check-cast p2, Lg/emq;

    iget-object p2, p2, Lg/emq;->a:Lg/fri;

    iput-object p2, p1, Lg/edx;->f:Lg/fri;

    invoke-virtual {p1}, Lg/edx;->an()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-boolean p2, p1, Lg/edx;->u:Z

    if-nez p2, :cond_4

    invoke-static {v1, v2}, Lg/ka;->z(ZZ)Lg/he;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lg/edx;->at()V

    :cond_4
    return-void

    :pswitch_2
    iget-object p1, p0, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lg/ark;

    iget-object p1, p1, Lg/ark;->m:Landroid/os/Handler;

    new-instance v0, Lg/dsf;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1, p2}, Lg/dsf;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_3
    iget-object p1, p0, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lg/dmr;

    iget-object v1, p1, Lg/dmr;->d:Lg/elf;

    const-string v3, "TrineaAndroidCommon"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "al_or_ways"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast p2, Lg/bta;

    iget-object p2, p2, Lg/bta;->a:Lf/a/e;

    iput-object p2, p1, Lg/dmr;->a:Lf/a/e;

    invoke-virtual {p2, v0}, Lg/cdy;->k(Lg/btp;)V

    goto :goto_2

    :cond_5
    check-cast p2, Lg/bta;

    iget-object p2, p2, Lg/bta;->a:Lf/a/e;

    iput-object p2, p1, Lg/dmr;->a:Lf/a/e;

    new-instance p1, Lg/emr;

    const/16 v0, 0xb

    invoke-direct {p1, v0, p0}, Lg/emr;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, Lg/cdy;->k(Lg/btp;)V

    :goto_2
    return-void

    :pswitch_4
    iget-object p1, p0, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lg/baq;

    check-cast p2, Lg/bar;

    iget-object p2, p2, Lg/bar;->a:Lg/ka;

    iput-object p2, p1, Lg/baq;->f:Lg/ka;

    invoke-static {p1}, Lg/baq;->an(Lg/baq;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {v1, v2}, Lg/ka;->z(ZZ)Lg/he;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-static {p1}, Lg/baq;->am(Lg/baq;)V

    :cond_6
    return-void

    :pswitch_5
    iget-object p1, p0, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lf/a/c;

    check-cast p2, Lg/dk;

    iget-object p2, p2, Lg/dk;->a:Lg/epi;

    iput-object p2, p1, Lf/a/c;->f:Lg/epi;

    invoke-virtual {p1}, Lg/guy;->m()V

    return-void

    :pswitch_6
    iget-object p1, p0, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Ld/b/a;

    check-cast p2, Lg/heo;

    iget-object p2, p2, Lg/heo;->a:Lg/fdp;

    iput-object p2, p1, Ld/b/a;->d:Lg/fdp;

    invoke-virtual {p1}, Lg/guy;->m()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget p1, p0, Lg/aco;->a:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    sget p1, Lg/gbs;->a:I

    iget-object p1, p0, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lg/bpy;

    const/4 v1, 0x0

    iput-object v1, p1, Lg/bpy;->bl:Lg/exa;

    iput v0, p1, Lg/bpy;->bi:I

    :pswitch_0
    return-void

    :pswitch_1
    iget-object p1, p0, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lg/ark;

    iget-object p1, p1, Lg/ark;->m:Landroid/os/Handler;

    new-instance v0, Lg/fvi;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_2
    iget-object p1, p0, Lg/aco;->b:Ljava/lang/Object;

    check-cast p1, Lg/dmr;

    const/16 v1, 0x44f

    invoke-virtual {p1, v1, v0}, Lg/dmr;->l(IZ)V

    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

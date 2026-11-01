.class public final synthetic Lg/bfb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ghx;
.implements Lg/tj;
.implements Lg/avn;
.implements Lg/dle;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/bfb;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final synthetic g(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic h(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic i(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic j(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic l(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic m(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic n(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic o(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic p(Lg/ggu;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public _bt(Lg/ggu;)V
    .locals 3

    iget v0, p0, Lg/bfb;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lg/ggu;->k(II)V

    invoke-virtual {p1}, Lg/ggu;->s()V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lg/ggu;->k(II)V

    invoke-virtual {p1}, Lg/ggu;->s()V

    return-void

    :pswitch_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lg/ggu;->k(II)V

    invoke-virtual {p1}, Lg/ggu;->s()V

    return-void

    :pswitch_2
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lg/ggu;->k(II)V

    invoke-virtual {p1}, Lg/ggu;->o()V

    return-void

    :pswitch_3
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lg/ggu;->k(II)V

    invoke-virtual {p1}, Lg/ggu;->o()V

    return-void

    :pswitch_4
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lg/ggu;->k(II)V

    invoke-virtual {p1}, Lg/ggu;->o()V

    return-void

    :pswitch_5
    iget-object v0, p1, Lg/ggu;->g:Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->ar()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p1, Lg/ggu;->i:Lg/fce;

    iput-wide v0, v2, Lg/fce;->p:J

    invoke-virtual {p1}, Lg/ggu;->s()V

    return-void

    :pswitch_6
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lg/ggu;->k(II)V

    invoke-virtual {p1}, Lg/ggu;->o()V

    return-void

    :pswitch_7
    iget-object v0, p1, Lg/ggu;->g:Lg/gqc;

    iget v1, v0, Lg/gqc;->ab:I

    iget-object v2, v0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v2, [B

    aget-byte v2, v2, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lg/gqc;->ab:I

    int-to-long v0, v2

    iget-object v2, p1, Lg/ggu;->i:Lg/fce;

    iput-wide v0, v2, Lg/fce;->p:J

    invoke-virtual {p1}, Lg/ggu;->s()V

    return-void

    :pswitch_data_0
    .packed-switch 0x15
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

.method public synthetic _ct(Lg/ggu;)V
    .locals 0

    iget p1, p0, Lg/bfb;->a:I

    return-void
.end method

.method public c(Lg/cmv;Lg/gqc;)Lg/azo;
    .locals 8

    iget v0, p0, Lg/bfb;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v0

    iget-object p1, p1, Lg/cmv;->g:Lg/gkr;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v3

    invoke-virtual {p1, v3}, Lg/gkr;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v4}, Lg/gkr;->h(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v5

    invoke-virtual {p1, v5}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v6

    new-instance v7, Lg/dmk;

    invoke-direct {v7, v6, v3, v4, v5}, Lg/dmk;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lg/dut;

    invoke-direct {p1, v1}, Lg/gmk;-><init>(Ljava/util/Map;)V

    return-object p1

    :sswitch_0
    new-instance v0, Lg/brs;

    iget-object p1, p1, Lg/cmv;->g:Lg/gkr;

    invoke-virtual {p2, p1}, Lg/gqc;->av(Lg/gkr;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/cym;-><init>(Ljava/util/List;)V

    return-object v0

    :sswitch_1
    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p1, :cond_3

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v3

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v4

    new-array v5, v4, [I

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_2

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    new-instance v4, Lg/ewv;

    invoke-direct {v4, v3, v5}, Lg/ewv;-><init>(I[I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance p1, Lg/fke;

    invoke-direct {p1, v0}, Lg/fke;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :sswitch_2
    new-instance v0, Lg/wr;

    invoke-static {p1, p2}, Lg/ckd;->ak(Lg/cmv;Lg/gqc;)Lg/ghr;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/gpg;-><init>(Lg/ghr;)V

    return-object v0

    :sswitch_3
    new-instance v0, Lg/gia;

    iget-object p1, p1, Lg/cmv;->g:Lg/gkr;

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result p2

    invoke-virtual {p1, p2}, Lg/gkr;->x(I)Lg/ghr;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/gia;-><init>(Lg/ghr;)V

    return-object v0

    :sswitch_4
    new-instance p1, Lg/anl;

    iget p2, p2, Lg/gqc;->ab:I

    invoke-direct {p1, p2}, Lg/anl;-><init>(I)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x11 -> :sswitch_2
        0x12 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public e(Lg/xa;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lg/bfb;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->a(Lg/xa;)Lg/gle;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-instance v0, Lg/gbg;

    const-class v1, Lg/aj;

    invoke-virtual {p1, v1}, Lg/xa;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    sget-object v1, Lg/fc;->b:Lg/fc;

    if-nez v1, :cond_1

    const-class v2, Lg/fc;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lg/fc;->b:Lg/fc;

    if-nez v1, :cond_0

    new-instance v1, Lg/fc;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lg/fc;-><init>(I)V

    sput-object v1, Lg/fc;->b:Lg/fc;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    invoke-direct {v0, p1, v1}, Lg/gbg;-><init>(Ljava/util/Set;Lg/fc;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lg/bfq;

    const-class v1, Landroid/content/Context;

    invoke-virtual {p1, v1}, Lg/xa;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lg/rm;

    invoke-virtual {p1, v2}, Lg/xa;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/rm;

    invoke-virtual {v2}, Lg/rm;->r()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lg/ao;

    invoke-virtual {p1, v3}, Lg/xa;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v3

    const-class v4, Lg/gbg;

    invoke-virtual {p1, v4}, Lg/xa;->c(Ljava/lang/Class;)Lg/boa;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lg/bfq;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lg/boa;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(Lg/gut;I)V
    .locals 1

    iget v0, p0, Lg/bfb;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/ebh;

    invoke-static {p1, p2}, Lg/fem;->c(Lg/ebh;I)V

    return-void

    :pswitch_0
    check-cast p1, Lg/ebh;

    invoke-static {p1, p2}, Lg/fem;->c(Lg/ebh;I)V

    return-void

    :pswitch_1
    check-cast p1, Lg/ebh;

    invoke-static {p1, p2}, Lg/fem;->c(Lg/ebh;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Landroid/view/View;Lg/anp;)Lg/anp;
    .locals 4

    const/16 v0, 0x287

    iget-object v1, p2, Lg/anp;->b:Lg/dif;

    invoke-virtual {v1, v0}, Lg/dif;->i(I)Lg/oi;

    move-result-object v0

    iget v1, v0, Lg/oi;->c:I

    iget v2, v0, Lg/oi;->d:I

    iget v3, v0, Lg/oi;->e:I

    iget v0, v0, Lg/oi;->b:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method

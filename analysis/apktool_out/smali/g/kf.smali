.class public final synthetic Lg/kf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dle;
.implements Lg/tj;
.implements Lg/fbg;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/kf;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final synthetic e(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic f(Lg/ggu;)V
    .locals 0

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

.method private final synthetic k(Lg/ggu;)V
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

.method private final synthetic q(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic r(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic s(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic t(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic u(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic v(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic w(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic x(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method private final synthetic y(Lg/ggu;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public _bt(Lg/ggu;)V
    .locals 4

    iget v0, p0, Lg/kf;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lg/ggu;->k(II)V

    invoke-virtual {p1}, Lg/ggu;->s()V

    return-void

    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    invoke-virtual {p1}, Lg/ggu;->o()V

    return-void

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    iget-object v0, p1, Lg/ggu;->g:Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->ar()I

    move-result v0

    invoke-virtual {p1, v0}, Lg/ggu;->r(I)V

    return-void

    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    return-void

    :pswitch_3
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lg/ggu;->k(II)V

    invoke-virtual {p1}, Lg/ggu;->s()V

    return-void

    :pswitch_4
    iget-object v0, p1, Lg/ggu;->g:Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v1

    iget-object v2, p1, Lg/ggu;->i:Lg/fce;

    iput v1, v2, Lg/fce;->w:I

    invoke-virtual {v0}, Lg/gqc;->ap()I

    move-result v0

    iget-object v1, p1, Lg/ggu;->i:Lg/fce;

    int-to-long v2, v0

    iput-wide v2, v1, Lg/fce;->p:J

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lg/fce;->ad(I)V

    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lg/ggu;->s()V

    return-void

    :pswitch_5
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    iget-object v0, p1, Lg/ggu;->g:Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->ar()I

    move-result v0

    invoke-virtual {p1, v0}, Lg/ggu;->r(I)V

    return-void

    :pswitch_6
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    invoke-virtual {p1}, Lg/ggu;->s()V

    return-void

    :pswitch_7
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lg/ggu;->k(II)V

    invoke-virtual {p1}, Lg/ggu;->s()V

    return-void

    :pswitch_8
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lg/ggu;->k(II)V

    invoke-virtual {p1}, Lg/ggu;->s()V

    return-void

    :pswitch_9
    invoke-virtual {p1}, Lg/ggu;->s()V

    iget-object v0, p1, Lg/ggu;->g:Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->af()I

    move-result v0

    invoke-virtual {p1, v0}, Lg/ggu;->r(I)V

    return-void

    :pswitch_a
    iget-object v0, p1, Lg/ggu;->g:Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->af()I

    move-result v0

    invoke-virtual {p1, v0}, Lg/ggu;->r(I)V

    return-void

    :pswitch_b
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lg/ggu;->k(II)V

    invoke-virtual {p1}, Lg/ggu;->s()V

    return-void

    :pswitch_c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    return-void

    :pswitch_d
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    return-void

    :pswitch_e
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lg/ggu;->k(II)V

    invoke-virtual {p1}, Lg/ggu;->s()V

    return-void

    :pswitch_f
    iget-object v0, p1, Lg/ggu;->g:Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v0

    iget-object v1, p1, Lg/ggu;->i:Lg/fce;

    iput v0, v1, Lg/fce;->w:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    invoke-virtual {p1}, Lg/ggu;->s()V

    return-void

    :pswitch_10
    iget-object v0, p1, Lg/ggu;->g:Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v0

    iget-object v1, p1, Lg/ggu;->i:Lg/fce;

    iput v0, v1, Lg/fce;->w:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    invoke-virtual {p1}, Lg/ggu;->s()V

    return-void

    :pswitch_11
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    iget-object p1, p1, Lg/ggu;->a:Lg/cpd;

    const/4 v0, -0x1

    iput v0, p1, Lg/cpd;->a:I

    return-void

    :pswitch_12
    iget-object v0, p1, Lg/ggu;->g:Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result v0

    iget-object v1, p1, Lg/ggu;->i:Lg/fce;

    iput v0, v1, Lg/fce;->w:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    invoke-virtual {p1}, Lg/ggu;->s()V

    const-wide/16 v0, 0x1

    iget-object p1, p1, Lg/ggu;->i:Lg/fce;

    iput-wide v0, p1, Lg/fce;->p:J

    return-void

    :pswitch_13
    iget-object v0, p1, Lg/ggu;->g:Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->ap()I

    move-result v0

    iget-object v1, p1, Lg/ggu;->i:Lg/fce;

    iput v0, v1, Lg/fce;->w:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lg/ggu;->n(I)V

    invoke-virtual {p1}, Lg/ggu;->s()V

    const-wide/16 v0, 0x1

    iget-object p1, p1, Lg/ggu;->i:Lg/fce;

    iput-wide v0, p1, Lg/fce;->p:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

    iget p1, p0, Lg/kf;->a:I

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lg/ku;->d()Lg/fpd;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iput-object v3, v2, Lg/fpd;->f:Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lg/eow;->d(I)Lg/cq;

    move-result-object v3

    iput-object v3, v2, Lg/fpd;->d:Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    :goto_1
    iput-object v3, v2, Lg/fpd;->c:Ljava/lang/Object;

    invoke-virtual {v2}, Lg/fpd;->w()Lg/ku;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null backendName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public c(Lg/cmv;Lg/gqc;)Lg/azo;
    .locals 11

    iget v0, p0, Lg/kf;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lg/cmv;->g:Lg/gkr;

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v7

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v3

    add-int/2addr v3, v7

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v3

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v4

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v5

    move v6, v3

    new-instance v3, Lg/fqt;

    invoke-virtual {p1, v6}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object v10, v6

    move-object v6, v4

    move-object v4, v10

    invoke-direct/range {v3 .. v9}, Lg/fqt;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lg/dtf;

    invoke-direct {p1, v1}, Lg/dtf;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :pswitch_0
    iget-object p1, p1, Lg/cmv;->g:Lg/gkr;

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v7

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v3

    add-int/2addr v3, v7

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v3

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v4

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v5

    move v6, v3

    new-instance v3, Lg/fqt;

    invoke-virtual {p1, v6}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v6

    move v8, v4

    move-object v4, v6

    const/4 v6, 0x0

    invoke-virtual {p1, v8}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v9}, Lg/fqt;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lg/agr;

    invoke-direct {p1, v1}, Lg/agr;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :pswitch_1
    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_2

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v2

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance p1, Lg/aqp;

    invoke-direct {p1, v0}, Lg/aqp;-><init>(Ljava/util/HashMap;)V

    return-object p1

    :pswitch_2
    new-instance v0, Lg/brn;

    iget-object p1, p1, Lg/cmv;->g:Lg/gkr;

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result p2

    invoke-virtual {p1, p2}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/arg;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lg/om;

    iget-object p1, p1, Lg/cmv;->g:Lg/gkr;

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result p2

    invoke-virtual {p1, p2}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/dfc;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_4
    iget-object p1, p1, Lg/cmv;->g:Lg/gkr;

    invoke-virtual {p2}, Lg/gqc;->ap()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_3

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v3

    invoke-virtual {p1, v3}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v4

    new-instance v5, Lg/bjc;

    invoke-direct {v5, v4, v3}, Lg/bjc;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    new-instance p1, Lg/gvk;

    invoke-direct {p1, v1}, Lg/esp;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

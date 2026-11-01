.class public abstract Lg/baf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/byr;


# static fields
.field public static k:Ljava/lang/reflect/Method;

.field public static m:Ljava/lang/reflect/Method;

.field public static final n:Ljava/lang/Object;

.field public static o:Ljava/lang/reflect/Method;

.field public static p:Z

.field public static final q:Lg/hy;

.field public static r:Ljava/lang/reflect/Method;

.field public static final s:Lg/hy;

.field public static t:J


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/hy;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/baf;->q:Lg/hy;

    new-instance v0, Lg/hy;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/baf;->s:Lg/hy;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/baf;->n:Ljava/lang/Object;

    return-void
.end method

.method public static aa(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "c.d.p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "c.d.o"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "c.d.n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "c.d.m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "c.d.l"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "c.d.k"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "c.d.j"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "c.d.i"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "c.d.h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "c.d.g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "c.d.f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "c.d.e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_c
    const-string v0, "c.d.d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_d
    const-string v0, "c.d.c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_e
    const-string v0, "c.d.b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_f
    const-string v0, "c.d.a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_10
    const-string v0, "c.d.li"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_11
    const-string v0, "c.d.cp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_12
    const-string v0, "c.d.ab"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object p0

    :pswitch_0
    const-string p0, "codekk_op"

    return-object p0

    :pswitch_1
    const-string p0, "decompile"

    return-object p0

    :pswitch_2
    const-string p0, "top_activity"

    return-object p0

    :pswitch_3
    const-string p0, "track_gpu_frame"

    return-object p0

    :pswitch_4
    const-string p0, "surface_update"

    return-object p0

    :pswitch_5
    const-string p0, "strict_mode"

    return-object p0

    :pswitch_6
    const-string p0, "so_puller"

    return-object p0

    :pswitch_7
    const-string p0, "pointer_location"

    return-object p0

    :pswitch_8
    const-string p0, "overdraw"

    return-object p0

    :pswitch_9
    const-string p0, "manifest"

    return-object p0

    :pswitch_a
    const-string p0, "layout_bounds"

    return-object p0

    :pswitch_b
    const-string p0, "gpu_view_update"

    return-object p0

    :pswitch_c
    const-string p0, "force_gpu_rendering"

    return-object p0

    :pswitch_d
    const-string p0, "dont_keep_activities"

    return-object p0

    :pswitch_e
    const-string p0, "apps"

    return-object p0

    :pswitch_f
    const-string p0, "apk_puller"

    return-object p0

    :pswitch_10
    const-string p0, "layout_inspector"

    return-object p0

    :pswitch_11
    const-string p0, "color_picker"

    return-object p0

    :pswitch_12
    const-string p0, "text_copy"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5459d36a -> :sswitch_12
        -0x5459d31e -> :sswitch_11
        -0x5459d20e -> :sswitch_10
        0x5897d4c -> :sswitch_f
        0x5897d4d -> :sswitch_e
        0x5897d4e -> :sswitch_d
        0x5897d4f -> :sswitch_c
        0x5897d50 -> :sswitch_b
        0x5897d51 -> :sswitch_a
        0x5897d52 -> :sswitch_9
        0x5897d53 -> :sswitch_8
        0x5897d54 -> :sswitch_7
        0x5897d55 -> :sswitch_6
        0x5897d56 -> :sswitch_5
        0x5897d57 -> :sswitch_4
        0x5897d58 -> :sswitch_3
        0x5897d59 -> :sswitch_2
        0x5897d5a -> :sswitch_1
        0x5897d5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static ab(Lg/dxm;I[BIILg/gmb;Lg/dsc;)I
    .locals 7

    invoke-interface {p0}, Lg/dxm;->zze()Lg/fsu;

    move-result-object v0

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lg/baf;->bp(Ljava/lang/Object;Lg/dxm;[BIILg/dsc;)I

    move-result p0

    invoke-interface {v1, v0}, Lg/dxm;->aa(Ljava/lang/Object;)V

    iput-object v0, v5, Lg/dsc;->d:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p0, v4, :cond_1

    move-object v6, v5

    move v5, v4

    invoke-static {v2, p0, v6}, Lg/baf;->bb([BILg/dsc;)I

    move-result v4

    iget p2, v6, Lg/dsc;->b:I

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, v2

    move-object v2, v1

    invoke-interface {v2}, Lg/dxm;->zze()Lg/fsu;

    move-result-object v1

    invoke-static/range {v1 .. v6}, Lg/baf;->bp(Ljava/lang/Object;Lg/dxm;[BIILg/dsc;)I

    move-result p0

    move-object p2, v1

    move-object v1, v2

    move-object v2, v3

    move v4, v5

    move-object v5, v6

    invoke-interface {v1, p2}, Lg/dxm;->aa(Ljava/lang/Object;)V

    iput-object p2, v5, Lg/dsc;->d:Ljava/lang/Object;

    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method

.method public static ac([BILg/dsc;)I
    .locals 2

    invoke-static {p0, p1, p2}, Lg/baf;->bb([BILg/dsc;)I

    move-result p1

    iget v0, p2, Lg/dsc;->b:I

    if-ltz v0, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object p0, Lg/aki;->a:Lg/gto;

    iput-object p0, p2, Lg/dsc;->d:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p1, p0, v0}, Lg/aki;->c(I[BI)Lg/gto;

    move-result-object p0

    iput-object p0, p2, Lg/dsc;->d:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    new-instance p0, Lg/fba;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lg/fba;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final ad(Ljava/lang/Object;Lg/bdp;)V
    .locals 9

    instance-of v0, p1, Lg/sk;

    if-eqz v0, :cond_9

    check-cast p1, Lg/sk;

    iget-object v0, p1, Lg/sk;->c:Lg/cpk;

    invoke-static {p0}, Lg/sl;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    new-instance v2, Lg/wh;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lg/wh;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    iget-object v1, p1, Lg/sk;->d:Lg/w;

    invoke-interface {v1}, Lg/bdp;->getContext()Lg/boj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/cpk;->w(Lg/boj;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iput-object v2, p1, Lg/sk;->e:Ljava/lang/Object;

    iput v4, p1, Lg/fpm;->k:I

    invoke-interface {v1}, Lg/bdp;->getContext()Lg/boj;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lg/cpk;->i(Lg/boj;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-static {}, Lg/fla;->b()Lg/bkg;

    move-result-object v0

    iget-wide v5, v0, Lg/bkg;->l:J

    const-wide v7, 0x100000000L

    cmp-long v3, v5, v7

    if-ltz v3, :cond_2

    iput-object v2, p1, Lg/sk;->e:Ljava/lang/Object;

    iput v4, p1, Lg/fpm;->k:I

    invoke-virtual {v0, p1}, Lg/bkg;->q(Lg/fpm;)V

    goto :goto_5

    :cond_2
    invoke-virtual {v0, v4}, Lg/bkg;->s(Z)V

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1}, Lg/bdp;->getContext()Lg/boj;

    move-result-object v4

    sget-object v5, Lg/dwm;->o:Lg/dwm;

    invoke-interface {v4, v5}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v4

    check-cast v4, Lg/dta;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lg/dta;->x()Z

    move-result v5

    if-nez v5, :cond_3

    check-cast v4, Lg/fyw;

    invoke-virtual {v4}, Lg/fyw;->ar()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lg/sk;->i(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    invoke-static {p0}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object p0

    invoke-virtual {p1, p0}, Lg/sk;->_z(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    iget-object v2, p1, Lg/sk;->b:Ljava/lang/Object;

    invoke-interface {v1}, Lg/bdp;->getContext()Lg/boj;

    move-result-object v4

    invoke-static {v4, v2}, Lg/gs;->ad(Lg/boj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lg/gs;->c:Lg/hy;

    if-eq v2, v5, :cond_4

    invoke-static {v1, v4, v2}, Lg/eyt;->bb(Lg/bdp;Lg/boj;Ljava/lang/Object;)Lg/aoa;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    move-object v5, v3

    :goto_1
    :try_start_1
    invoke-virtual {v1, p0}, Lg/bry;->_z(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_5

    :try_start_2
    invoke-virtual {v5}, Lg/aoa;->_bh()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    invoke-static {v4, v2}, Lg/gs;->av(Lg/boj;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    invoke-virtual {v0}, Lg/bkg;->r()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_6

    :goto_3
    invoke-virtual {v0}, Lg/bkg;->o()V

    goto :goto_5

    :catchall_1
    move-exception p0

    if-eqz v5, :cond_7

    :try_start_3
    invoke-virtual {v5}, Lg/aoa;->_bh()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-static {v4, v2}, Lg/gs;->av(Lg/boj;Ljava/lang/Object;)V

    :cond_8
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    :try_start_4
    invoke-virtual {p1, p0, v3}, Lg/fpm;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :goto_5
    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v0}, Lg/bkg;->o()V

    throw p0

    :cond_9
    invoke-interface {p1, p0}, Lg/bdp;->_z(Ljava/lang/Object;)V

    return-void
.end method

.method public static ae(I[BIILg/gmb;Lg/dsc;)I
    .locals 2

    check-cast p4, Lg/gwj;

    invoke-static {p1, p2, p5}, Lg/baf;->bb([BILg/dsc;)I

    move-result p2

    iget v0, p5, Lg/dsc;->b:I

    invoke-virtual {p4, v0}, Lg/gwj;->i(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lg/baf;->bb([BILg/dsc;)I

    move-result v0

    iget v1, p5, Lg/dsc;->b:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lg/baf;->bb([BILg/dsc;)I

    move-result p2

    iget v0, p5, Lg/dsc;->b:I

    invoke-virtual {p4, v0}, Lg/gwj;->i(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static final af(JLg/avu;)Ljava/lang/Object;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lg/gsn;

    invoke-static {p2}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lg/gsn;-><init>(ILg/bdp;)V

    invoke-virtual {v0}, Lg/gsn;->ac()V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long p2, p0, v1

    if-gez p2, :cond_3

    iget-object p2, v0, Lg/gsn;->o:Lg/boj;

    sget-object v1, Lg/bmr;->j:Lg/bmr;

    invoke-interface {p2, v1}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object p2

    instance-of v1, p2, Lg/fjt;

    if-eqz v1, :cond_1

    check-cast p2, Lg/fjt;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    sget-object p2, Lg/grp;->a:Lg/fjt;

    :cond_2
    invoke-interface {p2, p0, p1, v0}, Lg/fjt;->d(JLg/gsn;)V

    :cond_3
    invoke-virtual {v0}, Lg/gsn;->z()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    :goto_1
    sget-object p0, Lg/dgi;->a:Lg/dgi;

    return-object p0
.end method

.method public static ag(Landroid/app/Activity;Lg/ert;Ljava/lang/String;)V
    .locals 3

    iget v0, p1, Lg/ert;->d:I

    invoke-virtual {p1, p0}, Lg/ert;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "icon"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "title"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "showa"

    invoke-static {p0}, Lg/fml;->e(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lg/flw;

    invoke-direct {p1}, Landroid/app/DialogFragment;-><init>()V

    const/4 p2, 0x0

    invoke-static {p0, p1, v1, p2}, Lg/kj;->t(Landroid/app/Activity;Lg/cqo;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static final ah(Ljava/lang/AssertionError;)Z
    .locals 2

    sget-object v0, Lg/aro;->a:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "getsockname failed"

    invoke-static {p0, v0}, Lg/dcv;->bq(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static final ai(Lg/cpv;)Lg/deb;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/deb;

    invoke-direct {v0, p0}, Lg/deb;-><init>(Lg/cpv;)V

    return-object v0
.end method

.method public static aj(I[BILg/dsc;)I
    .locals 2

    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    and-int/lit8 p0, p0, 0x7f

    if-ltz v0, :cond_0

    shl-int/lit8 p1, v0, 0x7

    or-int/2addr p0, p1

    iput p0, p3, Lg/dsc;->b:I

    return v1

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x2

    aget-byte v1, p1, v1

    if-ltz v1, :cond_1

    shl-int/lit8 p1, v1, 0xe

    or-int/2addr p0, p1

    iput p0, p3, Lg/dsc;->b:I

    return v0

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr p0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v0, p1, v0

    if-ltz v0, :cond_2

    shl-int/lit8 p1, v0, 0x15

    or-int/2addr p0, p1

    iput p0, p3, Lg/dsc;->b:I

    return v1

    :cond_2
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x15

    or-int/2addr p0, v0

    add-int/lit8 p2, p2, 0x4

    aget-byte v0, p1, v1

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Lg/dsc;->b:I

    return p2

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_0

    :cond_4
    iput p0, p3, Lg/dsc;->b:I

    return v0
.end method

.method public static ak(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lg/buj;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "properties"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "text/plain"

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "zip"

    :cond_2
    if-eqz p0, :cond_3

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    return-object p1
.end method

.method public static al(Lg/hcc;Lg/cpk;Lg/dwt;Lg/bto;I)Lg/fe;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Lg/cgq;->a:Lg/cgq;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Lg/dwt;->DEFAULT:Lg/dwt;

    :cond_1
    invoke-static {p0, p1}, Lg/eyt;->ah(Lg/hcc;Lg/boj;)Lg/boj;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lg/dwt;->LAZY:Lg/dwt;

    if-ne p2, p1, :cond_2

    new-instance p1, Lg/cku;

    invoke-direct {p1, p0, p3}, Lg/cku;-><init>(Lg/boj;Lg/bto;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lg/fe;

    const/4 p4, 0x1

    invoke-direct {p1, p0, p4}, Lg/coh;-><init>(Lg/boj;Z)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lg/coh;->s(Lg/dwt;Lg/coh;Lg/bto;)V

    return-object p1
.end method

.method public static am()Z
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {}, Lg/frg;->c()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "isTagEnabled"

    const-class v1, Landroid/os/Trace;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lg/baf;->m:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    const-string v3, "TRACE_TAG_APP"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    sput-wide v6, Lg/baf;->t:J

    new-array v3, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lg/baf;->m:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lg/baf;->m:Ljava/lang/reflect/Method;

    sget-wide v6, Lg/baf;->t:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v0, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    invoke-static {v0}, Lg/baf;->be(Ljava/lang/Exception;)V

    return v2
.end method

.method public static final an(Lg/erz;Lg/bto;Lg/w;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p2}, Lg/bdp;->getContext()Lg/boj;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Lg/gak;->b:Lg/gak;

    invoke-interface {p0, v1, v2}, Lg/boj;->c(Ljava/lang/Object;Lg/bto;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {v0, p0}, Lg/boj;->_y(Lg/boj;)Lg/boj;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0, v2}, Lg/eyt;->bi(Lg/boj;Lg/boj;Z)Lg/boj;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lg/kj;->h(Lg/boj;)V

    if-ne p0, v0, :cond_1

    new-instance v0, Lg/azc;

    invoke-direct {v0, p2, p0}, Lg/azc;-><init>(Lg/w;Lg/boj;)V

    invoke-static {v0, v0, p1}, Lg/dzm;->ad(Lg/azc;Lg/azc;Lg/bto;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    :cond_1
    sget-object v1, Lg/bmr;->j:Lg/bmr;

    invoke-interface {p0, v1}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v3

    invoke-interface {v0, v1}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v0

    invoke-static {v3, v0}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Lg/aoa;

    invoke-direct {v0, p2, p0}, Lg/aoa;-><init>(Lg/w;Lg/boj;)V

    iget-object p0, v0, Lg/coh;->o:Lg/boj;

    invoke-static {p0, v1}, Lg/gs;->ad(Lg/boj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_0
    invoke-static {v0, v0, p1}, Lg/dzm;->ad(Lg/azc;Lg/azc;Lg/bto;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p2}, Lg/gs;->av(Lg/boj;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {p0, p2}, Lg/gs;->av(Lg/boj;Ljava/lang/Object;)V

    throw p1

    :cond_2
    new-instance v0, Lg/djk;

    invoke-direct {v0, p2, p0}, Lg/azc;-><init>(Lg/w;Lg/boj;)V

    invoke-static {p1, v0, v0}, Lg/kj;->y(Lg/bto;Lg/coh;Lg/coh;)V

    sget-object p0, Lg/djk;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_3
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_9

    const/4 p0, 0x2

    if-ne p1, p0, :cond_8

    invoke-virtual {v0}, Lg/fyw;->ah()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lg/xk;

    if-eqz p1, :cond_4

    move-object v1, p0

    check-cast v1, Lg/xk;

    :cond_4
    if-eqz v1, :cond_6

    iget-object p1, v1, Lg/xk;->a:Lg/gpe;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move-object p0, p1

    :cond_6
    :goto_1
    nop

    instance-of p1, p0, Lg/wh;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    check-cast p0, Lg/wh;

    iget-object p0, p0, Lg/wh;->c:Ljava/lang/Throwable;

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already suspended"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const/4 p1, 0x1

    invoke-virtual {p0, v0, v2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    :goto_2
    return-object p0
.end method

.method public static ao(Ljava/lang/Object;Lg/dxm;[BIIILg/dsc;)I
    .locals 3

    check-cast p1, Lg/dei;

    iget v0, p6, Lg/dsc;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p6, Lg/dsc;->a:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    invoke-virtual/range {p0 .. p6}, Lg/dei;->ae(Ljava/lang/Object;[BIIILg/dsc;)I

    move-result p0

    iget p2, p6, Lg/dsc;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p6, Lg/dsc;->a:I

    iput-object p1, p6, Lg/dsc;->d:Ljava/lang/Object;

    return p0

    :cond_0
    new-instance p0, Lg/fba;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ap(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 8

    const-string v0, "file/*"

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/high16 v3, 0x10000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v6, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    goto :goto_2

    :goto_1
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_1

    :try_start_1
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "resource/folder"

    invoke-virtual {v6, v2, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v6, v2, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p2, 0x1

    goto :goto_3

    :catch_1
    nop

    :cond_1
    :goto_3
    if-nez p2, :cond_2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lg/baf;->bf(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object p1

    const v0, 0x7f1203a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, p0, v0, v4}, Lg/fgj;->h(Landroid/content/Context;Landroid/content/Intent;Z)V

    :cond_2
    return p2
.end method

.method public static aq()Ljava/lang/String;
    .locals 11

    const-string v0, "getprop"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lg/ffb;->bb([Ljava/lang/String;ZJ)Lg/dsg;

    move-result-object v0

    iget-object v2, v0, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, v0, Lg/dsg;->d:I

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[|\\[|\\]]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v2, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v7, v1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "^\\[|\\]$"

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    aget-object v7, v7, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ar([BILg/dsc;)I
    .locals 9

    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    add-int/lit8 v2, p1, 0x1

    if-ltz v4, :cond_0

    iput-wide v0, p2, Lg/dsc;->c:J

    return v2

    :cond_0
    add-int/lit8 p1, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit8 v3, v2, 0x7f

    const-wide/16 v4, 0x7f

    and-long/2addr v0, v4

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    const/4 v3, 0x7

    :goto_0
    if-gez v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v0, v6

    move v8, v2

    move v2, p1

    move p1, v8

    goto :goto_0

    :cond_1
    iput-wide v0, p2, Lg/dsc;->c:J

    return p1
.end method

.method public static as(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-string v2, "TRuntime."

    if-ge v0, v1, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final at(Z)Ljava/util/concurrent/ExecutorService;
    .locals 2

    new-instance v0, Lg/nb;

    invoke-direct {v0, p0}, Lg/nb;-><init>(Z)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x4

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-string v0, "newFixedThreadPool(\n    \u2026)),\n        factory\n    )"

    invoke-static {p0, v0}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final au(Ljava/net/Socket;)Lg/dix;
    .locals 3

    sget-object v0, Lg/aro;->a:Ljava/util/logging/Logger;

    new-instance v0, Lg/gfm;

    invoke-direct {v0, p0}, Lg/gfm;-><init>(Ljava/net/Socket;)V

    new-instance v1, Lg/dix;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "getInputStream(...)"

    invoke-static {p0, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lg/dix;-><init>(Ljava/io/InputStream;Lg/dme;)V

    new-instance p0, Lg/dix;

    invoke-direct {p0, v0, v1}, Lg/dix;-><init>(Lg/gfm;Lg/dix;)V

    return-object p0
.end method

.method public static av(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const-string v0, "_display_name"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catch_1
    nop

    move-object p0, v1

    goto :goto_2

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1

    :goto_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1
.end method

.method public static aw()Lorg/json/JSONObject;
    .locals 8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "thread_number"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "  at "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mainStackFromTrace"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method public static ax(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Lg/baf;->as(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p0, v0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static ay([BILg/gmb;Lg/dsc;)I
    .locals 2

    check-cast p2, Lg/gwj;

    invoke-static {p0, p1, p3}, Lg/baf;->bb([BILg/dsc;)I

    move-result p1

    iget v0, p3, Lg/dsc;->b:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lg/baf;->bb([BILg/dsc;)I

    move-result p1

    iget v1, p3, Lg/dsc;->b:I

    invoke-virtual {p2, v1}, Lg/gwj;->i(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    new-instance p0, Lg/fba;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static az([BI)I
    .locals 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static ba(Lg/dlg;Lg/bto;)Lg/ghn;
    .locals 3

    sget-object v0, Lg/dwt;->DEFAULT:Lg/dwt;

    sget-object v1, Lg/cgq;->a:Lg/cgq;

    invoke-static {p0, v1}, Lg/eyt;->ah(Lg/hcc;Lg/boj;)Lg/boj;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/dwt;->LAZY:Lg/dwt;

    if-ne v0, v1, :cond_0

    new-instance v1, Lg/ewa;

    invoke-direct {v1, p0, p1}, Lg/ewa;-><init>(Lg/boj;Lg/bto;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lg/ghn;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lg/coh;-><init>(Lg/boj;Z)V

    :goto_0
    invoke-virtual {v1, v0, v1, p1}, Lg/coh;->s(Lg/dwt;Lg/coh;Lg/bto;)V

    return-object v1
.end method

.method public static bb([BILg/dsc;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Lg/dsc;->b:I

    return v0

    :cond_0
    invoke-static {p1, p0, v0, p2}, Lg/baf;->aj(I[BILg/dsc;)I

    move-result p0

    return p0
.end method

.method public static bc(ILjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_8

    instance-of v0, p1, Lg/eym;

    if-eqz v0, :cond_7

    instance-of v0, p1, Lg/hdx;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lg/hdx;

    invoke-interface {v0}, Lg/hdx;->h()I

    move-result v0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lg/cvw;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lg/and;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lg/bto;

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lg/bnk;

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lg/dxv;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lg/dzv;

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    const/4 v0, -0x1

    :goto_0
    if-ne v0, p0, :cond_7

    goto :goto_1

    :cond_7
    const-string v0, "kotlin.jvm.functions.Function"

    invoke-static {p0, v0}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, " cannot be cast to "

    invoke-static {p1, v0, p0}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    const-class p0, Lg/baf;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lg/bff;->l(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_1
    return-void
.end method

.method public static bd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    invoke-static {p0}, Lg/baf;->as(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static be(Ljava/lang/Exception;)V
    .locals 1

    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static bf(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 3

    const-string v0, ".fileprovider"

    const/16 v1, 0x18

    invoke-static {v1}, Lg/dyd;->ar(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    instance-of v0, p1, Ljava/lang/StringIndexOutOfBoundsException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f120465

    invoke-static {p0, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    invoke-static {p1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :goto_0
    move-object p0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to find configured root that contains"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f12036c

    invoke-static {p0, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    invoke-static {p1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_1
    return-object p0

    :cond_2
    throw p1
.end method

.method public static bg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lg/dds;)V
    .locals 6

    invoke-static {p0, p1}, Lg/fyt;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    const v2, 0x7f12047b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lg/fml;->e(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {p0}, Lg/byh;->aj(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f12006a

    goto :goto_0

    :cond_0
    const v1, 0x7f12006b

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v3, "adUnitId"

    invoke-static {v1}, Lg/eyt;->bp(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const p2, 0x7f120149

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "message"

    invoke-static {p2}, Lg/eyt;->bp(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "message_is_html"

    invoke-virtual {v0, p2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p2, Lg/csx;

    invoke-direct {p2, p3, p1}, Lg/csx;-><init>(Lg/dds;I)V

    const p1, 0x7f120084

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lg/csx;

    invoke-direct {v1, p3, v3}, Lg/csx;-><init>(Lg/dds;I)V

    const p3, 0x7f120082

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v4, Lg/gqo;

    invoke-direct {v4}, Lg/gqo;-><init>()V

    iget-object v5, v4, Lg/gqo;->f:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v5, -0x1

    invoke-virtual {v4, v5, p2, p1}, Lg/gqo;->x(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    iput p1, v4, Lg/gqo;->h:I

    iget-object p2, v4, Lg/gqo;->l:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {v4, v5, v2, v2}, Lg/gqo;->z(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V

    iget-object p1, v4, Lg/gqo;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {v4, v5, v1, p3}, Lg/gqo;->y(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V

    iput-object v2, v4, Lg/gqo;->e:Lg/du;

    iput v3, v4, Lg/gqo;->m:I

    invoke-static {p0, v4, v0, v3}, Lg/kj;->t(Landroid/app/Activity;Lg/cqo;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static bh(Lg/dvf;)Lg/dvf;
    .locals 1

    instance-of v0, p0, Lg/esr;

    if-nez v0, :cond_2

    instance-of v0, p0, Lg/bet;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lg/bet;

    invoke-direct {v0, p0}, Lg/bet;-><init>(Lg/dvf;)V

    return-object v0

    :cond_1
    new-instance v0, Lg/esr;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lg/esr;->b:Lg/dvf;

    return-object v0

    :cond_2
    return-object p0
.end method

.method public static bi(I[BIILg/wl;Lg/dsc;)I
    .locals 9

    ushr-int/lit8 v0, p0, 0x3

    const-string v1, "Protocol message contained an invalid tag (zero)."

    if-eqz v0, :cond_c

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_b

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    invoke-static {p1, p2}, Lg/baf;->az([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lg/wl;->k(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    new-instance p0, Lg/fba;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v0, v0, 0x4

    invoke-static {}, Lg/wl;->g()Lg/wl;

    move-result-object v7

    iget v1, p5, Lg/dsc;->a:I

    add-int/2addr v1, v2

    iput v1, p5, Lg/dsc;->a:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_5

    const/4 v1, 0x0

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-static {p1, p2, p5}, Lg/baf;->bb([BILg/dsc;)I

    move-result v5

    iget v3, p5, Lg/dsc;->b:I

    if-ne v3, v0, :cond_3

    move v1, v3

    move p2, v5

    :cond_2
    move v6, p3

    move-object v8, p5

    goto :goto_1

    :cond_3
    move-object v4, p1

    move v6, p3

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lg/baf;->bi(I[BIILg/wl;Lg/dsc;)I

    move-result p2

    move v1, v3

    goto :goto_0

    :goto_1
    iget p1, v8, Lg/dsc;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v8, Lg/dsc;->a:I

    if-gt p2, v6, :cond_4

    if-ne v1, v0, :cond_4

    invoke-virtual {p4, p0, v7}, Lg/wl;->k(ILjava/lang/Object;)V

    return p2

    :cond_4
    new-instance p0, Lg/fba;

    const-string p1, "Failed to parse the message."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lg/fba;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move-object v4, p1

    move-object v8, p5

    invoke-static {v4, p2, v8}, Lg/baf;->bb([BILg/dsc;)I

    move-result p1

    iget p2, v8, Lg/dsc;->b:I

    if-ltz p2, :cond_9

    array-length p3, v4

    sub-int/2addr p3, p1

    if-gt p2, p3, :cond_8

    if-nez p2, :cond_7

    sget-object p3, Lg/aki;->a:Lg/gto;

    invoke-virtual {p4, p0, p3}, Lg/wl;->k(ILjava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-static {p1, v4, p2}, Lg/aki;->c(I[BI)Lg/gto;

    move-result-object p3

    invoke-virtual {p4, p0, p3}, Lg/wl;->k(ILjava/lang/Object;)V

    :goto_2
    add-int/2addr p1, p2

    return p1

    :cond_8
    new-instance p0, Lg/fba;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lg/fba;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    move-object v4, p1

    invoke-static {p2, v4}, Lg/baf;->bj(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lg/wl;->k(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_b
    move-object v4, p1

    move-object v8, p5

    invoke-static {v4, p2, v8}, Lg/baf;->ar([BILg/dsc;)I

    move-result p1

    iget-wide p2, v8, Lg/dsc;->c:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lg/wl;->k(ILjava/lang/Object;)V

    return p1

    :cond_c
    new-instance p0, Lg/fba;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bj(I[B)J
    .locals 18

    aget-byte v0, p1, p0

    int-to-long v0, v0

    add-int/lit8 v2, p0, 0x1

    aget-byte v2, p1, v2

    int-to-long v2, v2

    add-int/lit8 v4, p0, 0x2

    aget-byte v4, p1, v4

    int-to-long v4, v4

    add-int/lit8 v6, p0, 0x3

    aget-byte v6, p1, v6

    int-to-long v6, v6

    add-int/lit8 v8, p0, 0x4

    aget-byte v8, p1, v8

    int-to-long v8, v8

    add-int/lit8 v10, p0, 0x5

    aget-byte v10, p1, v10

    int-to-long v10, v10

    add-int/lit8 v12, p0, 0x6

    aget-byte v12, p1, v12

    int-to-long v12, v12

    add-int/lit8 v14, p0, 0x7

    aget-byte v14, p1, v14

    int-to-long v14, v14

    const-wide/16 v16, 0xff

    and-long v2, v2, v16

    and-long v4, v4, v16

    and-long v6, v6, v16

    and-long v8, v8, v16

    and-long v10, v10, v16

    and-long v12, v12, v16

    and-long v14, v14, v16

    and-long v0, v0, v16

    const/16 v16, 0x8

    shl-long v2, v2, v16

    or-long/2addr v0, v2

    const/16 v2, 0x10

    shl-long v2, v4, v2

    or-long/2addr v0, v2

    const/16 v2, 0x18

    shl-long v2, v6, v2

    or-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long v2, v8, v2

    or-long/2addr v0, v2

    const/16 v2, 0x28

    shl-long v2, v10, v2

    or-long/2addr v0, v2

    const/16 v2, 0x30

    shl-long v2, v12, v2

    or-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long v2, v14, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static final bk(Ljava/io/InputStream;)Lg/dix;
    .locals 2

    sget-object v0, Lg/aro;->a:Ljava/util/logging/Logger;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/dix;

    new-instance v1, Lg/dme;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p0, v1}, Lg/dix;-><init>(Ljava/io/InputStream;Lg/dme;)V

    return-object v0
.end method

.method public static bl(Landroid/content/pm/ShortcutManager;Ljava/util/List;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lg/dkx;->c(Landroid/content/pm/ShortcutManager;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    instance-of p1, p0, Landroid/os/RemoteException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_3

    :cond_1
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "verifyShortcutInfoPackage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Shortcut package name mismatch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Calling package name mismatch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-static {p0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    throw p0
.end method

.method public static bm(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x204

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    const-string v6, "android.permission.BIND_QUICK_SETTINGS_TILE"

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lg/acr;->az(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/byz;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lg/byz;->a:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/ert;

    if-eqz v5, :cond_4

    iget-boolean v6, v5, Lg/ert;->s:Z

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    iget-object v5, v5, Lg/ert;->q:Ljava/lang/String;

    const-string v6, "locked_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_6
    invoke-static {v5}, Lg/acw;->ap(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v5, "codekk_op"

    :cond_7
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ServiceInfo;

    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, p0, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    if-nez v7, :cond_9

    iget-boolean v5, v5, Landroid/content/pm/ServiceInfo;->enabled:Z

    goto :goto_4

    :cond_9
    const/4 v5, 0x1

    if-ne v7, v5, :cond_a

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    new-instance p0, Lg/ffp;

    const/4 v2, 0x1

    invoke-direct {p0, v3, v2, v0}, Lg/ffp;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v1, p0}, Lj$/util/List$b;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read own tile services"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static bn(Landroid/content/pm/ShortcutManager;Ljava/util/List;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lg/dkx;->r(Landroid/content/pm/ShortcutManager;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    instance-of p1, p0, Landroid/os/RemoteException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_3

    :cond_1
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "verifyShortcutInfoPackage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Shortcut package name mismatch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Calling package name mismatch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Package name must match"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-static {p0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    throw p0
.end method

.method public static bo(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 10

    const-string v0, "_data"

    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    :try_start_1
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_1

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_4
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_1
    nop

    move-object v0, v2

    goto :goto_3

    :cond_1
    move-object v0, v2

    :goto_2
    if-eqz p1, :cond_2

    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    nop

    goto :goto_3

    :catch_2
    move-object v4, p1

    goto :goto_1

    :cond_2
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-nez p1, :cond_a

    :cond_3
    const-string p1, "."

    :try_start_6
    invoke-static {p0, v4}, Lg/baf;->av(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/buj;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "[A-Za-z0-9]{1,16}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object p1, v0

    move-object v0, v2

    goto :goto_8

    :cond_4
    const-string p1, ".tmp"

    :goto_4
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "viewer_cache"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot create viewer cache"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_5
    const-string v1, "viewer_"

    invoke-static {v1, p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    if-eqz v1, :cond_7

    :try_start_8
    invoke-static {p1, v1}, Lg/buj;->ba(Ljava/io/File;Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v3, v0

    goto :goto_6

    :cond_7
    :try_start_a
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Cannot copy document to viewer cache"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_6
    if-eqz v1, :cond_8

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    :try_start_c
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_7
    throw v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :goto_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot delete incomplete viewer cache file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :cond_9
    invoke-static {p1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :goto_9
    move-object v0, v2

    :cond_a
    if-nez v0, :cond_b

    if-eqz p2, :cond_b

    const p1, 0x7f12036c

    invoke-static {p0, p1}, Lg/gm;->e(Landroid/content/Context;I)V

    :cond_b
    return-object v0

    :cond_c
    return-object v2
.end method

.method public static bp(Ljava/lang/Object;Lg/dxm;[BIILg/dsc;)I
    .locals 6

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_0

    invoke-static {p3, p2, v0, p5}, Lg/baf;->aj(I[BILg/dsc;)I

    move-result v0

    iget p3, p5, Lg/dsc;->b:I

    :cond_0
    move v3, v0

    if-ltz p3, :cond_2

    sub-int/2addr p4, v3

    if-gt p3, p4, :cond_2

    iget p4, p5, Lg/dsc;->a:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p5, Lg/dsc;->a:I

    const/16 v0, 0x64

    if-ge p4, v0, :cond_1

    add-int v4, v3, p3

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lg/dxm;->w(Ljava/lang/Object;[BIILg/dsc;)V

    iget p0, v5, Lg/dsc;->a:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v5, Lg/dsc;->a:I

    iput-object v1, v5, Lg/dsc;->d:Ljava/lang/Object;

    return v4

    :cond_1
    new-instance p0, Lg/fba;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lg/fba;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    move-object p1, p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :cond_2
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "text/plain"

    invoke-static {p2, p0}, Lg/baf;->ak(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p2, "android.intent.category.DEFAULT"

    invoke-virtual {p0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0x10000001

    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, ""

    invoke-static {p2, p1}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported document URI"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing file path"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static v(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 11

    new-instance v0, Lg/fc;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0}, Lg/fc;-><init>(ILjava/lang/Object;)V

    const/16 v2, 0x1a

    invoke-static {v2}, Lg/dyd;->ar(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-static {p0, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p3

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p3, "duplicate"

    invoke-virtual {p1, p3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v1}, Lg/dyd;->bq(I)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :goto_0
    new-array p1, v3, [Ljava/lang/Object;

    aput-object p2, p1, v4

    const p2, 0x7f120167

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lg/fc;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    throw p1

    :cond_1
    invoke-static {}, Lg/dkx;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1}, Lg/gdl;->d(Landroid/app/Activity;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lg/dkx;->q(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance p1, Lg/aeo;

    invoke-direct {p1, p0, v3, p2}, Lg/aeo;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lg/fc;->a(Lg/dkp;)V

    return-void

    :cond_2
    invoke-static {}, Lg/fnp;->m()Z

    move-result v2

    const/4 v5, 0x2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    :try_start_1
    const-string v2, "appops"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "checkOpNoThrow"

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    aput-object v10, v9, v3

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v5

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/16 v7, 0x2721

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v4

    aput-object v9, v8, v3

    aput-object v10, v8, v5

    invoke-virtual {v6, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v2, v3, :cond_5

    if-ne v2, v5, :cond_6

    :cond_5
    new-instance p1, Lg/qi;

    invoke-direct {p1, p0, v3}, Lg/qi;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0, p1}, Lg/fc;->a(Lg/dkp;)V

    return-void

    :catch_1
    :cond_6
    :goto_1
    :try_start_2
    invoke-static {v1}, Lg/cnh;->l(Landroid/content/pm/ShortcutManager;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance p1, Lg/aeo;

    invoke-direct {p1, p0, v5, p2}, Lg/aeo;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lg/fc;->a(Lg/dkp;)V

    goto/16 :goto_3

    :catch_2
    move-exception p1

    goto :goto_2

    :cond_7
    invoke-static {}, Lg/dkx;->d()V

    invoke-static {p0, p1}, Lg/dkx;->t(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    invoke-static {v2, p2}, Lg/dkx;->j(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    invoke-static {v2, p2}, Lg/dkx;->u(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    const v3, 0x7f12043d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lg/dkx;->l(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    invoke-static {p0, p3}, Lg/gdl;->q(Landroid/app/Activity;I)Landroid/graphics/drawable/Icon;

    move-result-object p3

    invoke-static {v2, p3}, Lg/dkx;->k(Landroid/content/pm/ShortcutInfo$Builder;Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p3

    invoke-static {p3, p4}, Lg/dkx;->g(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p3

    invoke-static {p3}, Lg/dkx;->a(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/pm/ShortcutInfo;

    move-result-object p3

    new-instance p4, Landroid/content/Intent;

    const-class v2, La/u/a;

    invoke-direct {p4, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".shortcut.PINNED."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p4, "shortcut_name"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p4, 0xc000000

    invoke-static {p0, v4, p1, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-static {v1, p3, p1}, Lg/cnh;->o(Landroid/content/pm/ShortcutManager;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Lg/aeo;

    invoke-direct {p1, p0, v4, p2}, Lg/aeo;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lg/fc;->a(Lg/dkp;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :goto_2
    invoke-static {p1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    new-instance p1, Lg/qi;

    invoke-direct {p1, p0, v4}, Lg/qi;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0, p1}, Lg/fc;->a(Lg/dkp;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public static final w(Lg/evq;)Lg/ago;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/ago;

    invoke-direct {v0, p0}, Lg/ago;-><init>(Lg/evq;)V

    return-object v0
.end method

.method public static final x(Ljava/net/Socket;)Lg/dgz;
    .locals 3

    sget-object v0, Lg/aro;->a:Ljava/util/logging/Logger;

    new-instance v0, Lg/gfm;

    invoke-direct {v0, p0}, Lg/gfm;-><init>(Ljava/net/Socket;)V

    new-instance v1, Lg/dgz;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const-string v2, "getOutputStream(...)"

    invoke-static {p0, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, v0}, Lg/dgz;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance p0, Lg/dgz;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lg/dgz;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p0
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static z(Landroid/util/JsonReader;Lg/cgf;)Lg/dpy;
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v4, 0x2

    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    const-string v6, "d"

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "ty"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    goto :goto_0

    :cond_2
    move-object v5, v7

    :goto_1
    if-nez v5, :cond_3

    return-object v7

    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v16, -0x1

    sparse-switch v8, :sswitch_data_0

    :goto_2
    const/4 v8, -0x1

    goto/16 :goto_3

    :sswitch_0
    const-string v8, "tr"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    const/16 v8, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string v8, "tm"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    const/16 v8, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v8, "st"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    const/16 v8, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string v8, "sr"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    const/16 v8, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v8, "sh"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_2

    :cond_8
    const/16 v8, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string v8, "rp"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_2

    :cond_9
    const/16 v8, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string v8, "rd"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_2

    :cond_a
    const/4 v8, 0x7

    goto :goto_3

    :sswitch_7
    const-string v8, "rc"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_2

    :cond_b
    const/4 v8, 0x6

    goto :goto_3

    :sswitch_8
    const-string v8, "mm"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_2

    :cond_c
    const/4 v8, 0x5

    goto :goto_3

    :sswitch_9
    const-string v8, "gs"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_2

    :cond_d
    const/4 v8, 0x4

    goto :goto_3

    :sswitch_a
    const-string v8, "gr"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto/16 :goto_2

    :cond_e
    const/4 v8, 0x3

    goto :goto_3

    :sswitch_b
    const-string v8, "gf"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto/16 :goto_2

    :cond_f
    const/4 v8, 0x2

    goto :goto_3

    :sswitch_c
    const-string v8, "fl"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto/16 :goto_2

    :cond_10
    const/4 v8, 0x1

    goto :goto_3

    :sswitch_d
    const-string v8, "el"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    goto/16 :goto_2

    :cond_11
    const/4 v8, 0x0

    :goto_3
    const-string v11, "c"

    const-string v12, "e"

    const-string v13, "g"

    const-string v15, "r"

    const-string v7, "p"

    const-string v14, "s"

    const-string v3, "o"

    const-string v9, "nm"

    const-string v10, "hd"

    const/16 v26, 0x0

    packed-switch v8, :pswitch_data_0

    const-string v1, "Unknown shape type "

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/hbp;->b(Ljava/lang/String;)V

    const/4 v7, 0x0

    goto/16 :goto_51

    :pswitch_0
    invoke-static/range {p0 .. p1}, Lg/dyd;->ak(Landroid/util/JsonReader;Lg/cgf;)Lg/eld;

    move-result-object v7

    goto/16 :goto_51

    :pswitch_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    :goto_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :goto_5
    const/4 v5, -0x1

    goto :goto_6

    :sswitch_e
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_5

    :cond_12
    const/4 v5, 0x5

    goto :goto_6

    :sswitch_f
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_5

    :cond_13
    const/4 v5, 0x4

    goto :goto_6

    :sswitch_10
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto :goto_5

    :cond_14
    const/4 v5, 0x3

    goto :goto_6

    :sswitch_11
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_5

    :cond_15
    const/4 v5, 0x2

    goto :goto_6

    :sswitch_12
    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_5

    :cond_16
    const/4 v5, 0x1

    goto :goto_6

    :sswitch_13
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    goto :goto_5

    :cond_17
    const/4 v5, 0x0

    :goto_6
    packed-switch v5, :pswitch_data_1

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    :pswitch_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :pswitch_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    goto :goto_4

    :pswitch_4
    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v11

    goto :goto_4

    :pswitch_5
    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v13

    goto :goto_4

    :pswitch_6
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_19

    const/4 v6, 0x2

    if-ne v5, v6, :cond_18

    sget-object v5, Lg/eyu;->d:Lg/eyu;

    :goto_7
    move-object/from16 v17, v5

    goto :goto_4

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown trim path type "

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    sget-object v5, Lg/eyu;->dq:Lg/eyu;

    goto :goto_7

    :pswitch_7
    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v2

    goto/16 :goto_4

    :cond_1a
    new-instance v8, Lg/cxl;

    move-object v12, v2

    move v14, v4

    move-object v9, v7

    move-object/from16 v10, v17

    invoke-direct/range {v8 .. v14}, Lg/cxl;-><init>(Ljava/lang/String;Lg/eyu;Lg/cnc;Lg/cnc;Lg/cnc;Z)V

    :goto_8
    move-object v7, v8

    goto/16 :goto_51

    :pswitch_8
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    :goto_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2c

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v26

    sparse-switch v26, :sswitch_data_2

    :goto_a
    move-object/from16 v26, v4

    :goto_b
    const/4 v4, -0x1

    goto/16 :goto_d

    :sswitch_14
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1b

    goto :goto_a

    :cond_1b
    move-object/from16 v26, v4

    const/16 v4, 0x8

    goto/16 :goto_d

    :sswitch_15
    move-object/from16 v26, v4

    const-string v4, "ml"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_c

    :cond_1c
    const/4 v4, 0x7

    goto :goto_d

    :sswitch_16
    move-object/from16 v26, v4

    const-string v4, "lj"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_c

    :cond_1d
    const/4 v4, 0x6

    goto :goto_d

    :sswitch_17
    move-object/from16 v26, v4

    const-string v4, "lc"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_c

    :cond_1e
    const/4 v4, 0x5

    goto :goto_d

    :sswitch_18
    move-object/from16 v26, v4

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_c

    :cond_1f
    const/4 v4, 0x4

    goto :goto_d

    :sswitch_19
    move-object/from16 v26, v4

    const-string v4, "w"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_c

    :cond_20
    const/4 v4, 0x3

    goto :goto_d

    :sswitch_1a
    move-object/from16 v26, v4

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_c

    :cond_21
    const/4 v4, 0x2

    goto :goto_d

    :sswitch_1b
    move-object/from16 v26, v4

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    goto :goto_c

    :cond_22
    const/4 v4, 0x1

    goto :goto_d

    :sswitch_1c
    move-object/from16 v26, v4

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    :goto_c
    goto :goto_b

    :cond_23
    const/4 v4, 0x0

    :goto_d
    packed-switch v4, :pswitch_data_2

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    move-object v14, v5

    move-object/from16 v30, v8

    goto/16 :goto_18

    :pswitch_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    :goto_e
    move-object/from16 v4, v26

    goto/16 :goto_9

    :pswitch_a
    move-object v14, v5

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v18, v4

    :goto_f
    move-object v5, v14

    goto :goto_e

    :pswitch_b
    move-object v14, v5

    invoke-static {}, Lg/fvo;->values()[Lg/fvo;

    move-result-object v4

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    move-object/from16 v17, v4

    const/4 v4, 0x1

    sub-int/2addr v5, v4

    aget-object v17, v17, v5

    goto :goto_f

    :pswitch_c
    move-object v14, v5

    const/4 v4, 0x1

    invoke-static {}, Lg/ctn;->values()[Lg/ctn;

    move-result-object v5

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    aget-object v16, v5, v16

    goto :goto_f

    :pswitch_d
    move-object v14, v5

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v19

    goto :goto_e

    :pswitch_e
    move-object v14, v5

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v15

    goto :goto_e

    :pswitch_f
    move-object v14, v5

    invoke-static/range {p0 .. p1}, Lg/bff;->av(Landroid/util/JsonReader;Lg/cgf;)Lg/dlz;

    move-result-object v4

    goto/16 :goto_9

    :pswitch_10
    move-object v14, v5

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    :goto_10
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    move-object/from16 v4, v28

    move-object v5, v4

    :goto_11
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_26

    move-object/from16 v29, v7

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v30, v8

    const-string v8, "n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_25

    const-string v8, "v"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    :goto_12
    move-object/from16 v7, v29

    move-object/from16 v8, v30

    goto :goto_11

    :cond_24
    const/4 v5, 0x1

    invoke-static {v0, v1, v5}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v7

    move-object v5, v7

    goto :goto_12

    :cond_25
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :cond_26
    move-object/from16 v29, v7

    move-object/from16 v30, v8

    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_3

    :goto_13
    const/4 v4, -0x1

    goto :goto_14

    :sswitch_1d
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_13

    :cond_27
    const/4 v4, 0x2

    goto :goto_14

    :sswitch_1e
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_13

    :cond_28
    const/4 v4, 0x1

    goto :goto_14

    :sswitch_1f
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_13

    :cond_29
    const/4 v4, 0x0

    :goto_14
    packed-switch v4, :pswitch_data_3

    const/4 v4, 0x1

    goto :goto_16

    :pswitch_11
    move-object v7, v5

    :goto_15
    move-object/from16 v8, v30

    goto :goto_10

    :pswitch_12
    const/4 v4, 0x1

    iput-boolean v4, v1, Lg/cgf;->d:Z

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16
    move-object/from16 v7, v29

    goto :goto_15

    :cond_2a
    move-object/from16 v29, v7

    move-object/from16 v30, v8

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v4, :cond_2b

    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v14

    move-object/from16 v4, v26

    move-object/from16 v7, v29

    :goto_17
    move-object/from16 v8, v30

    goto/16 :goto_9

    :cond_2b
    move-object/from16 v7, v29

    :goto_18
    move-object v5, v14

    move-object/from16 v4, v26

    goto :goto_17

    :pswitch_13
    move-object v14, v5

    invoke-static/range {p0 .. p1}, Lg/bff;->t(Landroid/util/JsonReader;Lg/cgf;)Lg/dlz;

    move-result-object v8

    goto/16 :goto_e

    :cond_2c
    move-object/from16 v26, v4

    move-object v14, v5

    move-object/from16 v30, v8

    if-nez v26, :cond_2d

    new-instance v4, Lg/dlz;

    new-instance v1, Lg/flj;

    invoke-direct {v1, v2}, Lg/flj;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v4, v2, v1}, Lg/dlz;-><init>(ILjava/util/List;)V

    goto :goto_19

    :cond_2d
    move-object/from16 v4, v26

    :goto_19
    new-instance v9, Lg/esd;

    move-object v11, v7

    move-object v10, v14

    move-object/from16 v13, v30

    move-object v14, v4

    invoke-direct/range {v9 .. v19}, Lg/esd;-><init>(Ljava/lang/String;Lg/cnc;Ljava/util/ArrayList;Lg/dlz;Lg/dlz;Lg/cnc;Lg/ctn;Lg/fvo;FZ)V

    move-object v7, v9

    goto/16 :goto_51

    :pswitch_14
    const/4 v2, 0x3

    const/16 v27, -0x1

    const/16 v28, 0x0

    if-ne v4, v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_1a

    :cond_2e
    const/4 v2, 0x0

    :goto_1a
    move/from16 v40, v2

    move-object/from16 v30, v28

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    const/16 v39, 0x0

    :goto_1b
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_4

    :goto_1c
    const/4 v2, -0x1

    goto/16 :goto_1d

    :sswitch_20
    const-string v3, "sy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_1c

    :cond_2f
    const/16 v2, 0xa

    goto/16 :goto_1d

    :sswitch_21
    const-string v3, "pt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_1c

    :cond_30
    const/16 v2, 0x9

    goto/16 :goto_1d

    :sswitch_22
    const-string v3, "os"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_1c

    :cond_31
    const/16 v2, 0x8

    goto :goto_1d

    :sswitch_23
    const-string v3, "or"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_1c

    :cond_32
    const/4 v2, 0x7

    goto :goto_1d

    :sswitch_24
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_1c

    :cond_33
    const/4 v2, 0x6

    goto :goto_1d

    :sswitch_25
    const-string v3, "is"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto :goto_1c

    :cond_34
    const/4 v2, 0x5

    goto :goto_1d

    :sswitch_26
    const-string v3, "ir"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_1c

    :cond_35
    const/4 v2, 0x4

    goto :goto_1d

    :sswitch_27
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_1c

    :cond_36
    const/4 v2, 0x3

    goto :goto_1d

    :sswitch_28
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    goto :goto_1c

    :cond_37
    const/4 v2, 0x2

    goto :goto_1d

    :sswitch_29
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_1c

    :cond_38
    const/4 v2, 0x1

    goto :goto_1d

    :sswitch_2a
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_1c

    :cond_39
    const/4 v2, 0x0

    :goto_1d
    packed-switch v2, :pswitch_data_4

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_1b

    :pswitch_15
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Lg/ezt;->b(I)Lg/ezt;

    move-result-object v31

    goto/16 :goto_1b

    :pswitch_16
    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v32

    goto/16 :goto_1b

    :pswitch_17
    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v38

    goto/16 :goto_1b

    :pswitch_18
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v1, v4}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v36

    goto/16 :goto_1b

    :pswitch_19
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_1b

    :pswitch_1a
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v37

    goto/16 :goto_1b

    :pswitch_1b
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v1, v4}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v35

    goto/16 :goto_1b

    :pswitch_1c
    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v39

    goto/16 :goto_1b

    :pswitch_1d
    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v34

    goto/16 :goto_1b

    :pswitch_1e
    invoke-static/range {p0 .. p1}, Lg/ckd;->aa(Landroid/util/JsonReader;Lg/cgf;)Lg/eqn;

    move-result-object v33

    goto/16 :goto_1b

    :pswitch_1f
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3a

    const/16 v40, 0x1

    goto/16 :goto_1b

    :cond_3a
    const/16 v40, 0x0

    goto/16 :goto_1b

    :cond_3b
    new-instance v29, Lg/cup;

    invoke-direct/range {v29 .. v40}, Lg/cup;-><init>(Ljava/lang/String;Lg/ezt;Lg/cnc;Lg/eqn;Lg/cnc;Lg/cnc;Lg/cnc;Lg/cnc;Lg/cnc;ZZ)V

    move-object/from16 v7, v29

    goto/16 :goto_51

    :pswitch_20
    const/16 v27, -0x1

    const/16 v28, 0x0

    move-object/from16 v2, v28

    move-object v7, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1e
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_5

    :goto_1f
    const/4 v5, -0x1

    goto :goto_20

    :sswitch_2b
    const-string v6, "ind"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    goto :goto_1f

    :cond_3c
    const/4 v5, 0x3

    goto :goto_20

    :sswitch_2c
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    goto :goto_1f

    :cond_3d
    const/4 v5, 0x2

    goto :goto_20

    :sswitch_2d
    const-string v6, "ks"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    goto :goto_1f

    :cond_3e
    const/4 v5, 0x1

    goto :goto_20

    :sswitch_2e
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    goto :goto_1f

    :cond_3f
    const/4 v5, 0x0

    :goto_20
    packed-switch v5, :pswitch_data_5

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1e

    :pswitch_21
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    goto :goto_1e

    :pswitch_22
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1e

    :pswitch_23
    new-instance v2, Lg/dlz;

    invoke-static {}, Lg/ebx;->h()F

    move-result v5

    sget-object v6, Lg/ao;->g:Lg/ao;

    const/4 v8, 0x0

    invoke-static {v0, v1, v5, v6, v8}, Lg/ffb;->bc(Landroid/util/JsonReader;Lg/cgf;FLg/cce;Z)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v2, v6, v5}, Lg/dlz;-><init>(ILjava/util/List;)V

    goto :goto_1e

    :pswitch_24
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    goto :goto_1e

    :cond_40
    new-instance v1, Lg/awc;

    invoke-direct {v1, v7, v3, v2, v4}, Lg/awc;-><init>(Ljava/lang/String;ILg/dlz;Z)V

    :goto_21
    move-object v7, v1

    goto/16 :goto_51

    :pswitch_25
    const/16 v27, -0x1

    const/16 v28, 0x0

    move-object/from16 v2, v28

    move-object v7, v2

    move-object v12, v7

    const/4 v13, 0x0

    :goto_22
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_6

    :goto_23
    const/4 v4, -0x1

    goto :goto_24

    :sswitch_2f
    const-string v5, "tr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_23

    :cond_41
    const/4 v4, 0x4

    goto :goto_24

    :sswitch_30
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    goto :goto_23

    :cond_42
    const/4 v4, 0x3

    goto :goto_24

    :sswitch_31
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    goto :goto_23

    :cond_43
    const/4 v4, 0x2

    goto :goto_24

    :sswitch_32
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    goto :goto_23

    :cond_44
    const/4 v4, 0x1

    goto :goto_24

    :sswitch_33
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    goto :goto_23

    :cond_45
    const/4 v4, 0x0

    :goto_24
    packed-switch v4, :pswitch_data_6

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_22

    :pswitch_26
    invoke-static/range {p0 .. p1}, Lg/dyd;->ak(Landroid/util/JsonReader;Lg/cgf;)Lg/eld;

    move-result-object v12

    goto :goto_22

    :pswitch_27
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    :pswitch_28
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v13

    goto :goto_22

    :pswitch_29
    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v2

    goto :goto_22

    :pswitch_2a
    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v28

    goto :goto_22

    :cond_46
    new-instance v8, Lg/egv;

    move-object v11, v2

    move-object v9, v7

    move-object/from16 v10, v28

    invoke-direct/range {v8 .. v13}, Lg/egv;-><init>(Ljava/lang/String;Lg/cnc;Lg/cnc;Lg/eld;Z)V

    goto/16 :goto_8

    :pswitch_2b
    const/16 v27, -0x1

    const/16 v28, 0x0

    move-object/from16 v2, v28

    move-object v3, v2

    const/4 v5, 0x0

    :goto_25
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_7

    :goto_26
    const/4 v4, -0x1

    goto :goto_27

    :sswitch_34
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    goto :goto_26

    :cond_47
    const/4 v4, 0x2

    goto :goto_27

    :sswitch_35
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    goto :goto_26

    :cond_48
    const/4 v4, 0x1

    goto :goto_27

    :sswitch_36
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    goto :goto_26

    :cond_49
    const/4 v4, 0x0

    :goto_27
    packed-switch v4, :pswitch_data_7

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_25

    :pswitch_2c
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    :pswitch_2d
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v5

    goto :goto_25

    :pswitch_2e
    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v3

    goto :goto_25

    :cond_4a
    if-eqz v5, :cond_4b

    move-object/from16 v7, v28

    goto/16 :goto_51

    :cond_4b
    new-instance v7, Lg/cwk;

    invoke-direct {v7, v2, v3}, Lg/cwk;-><init>(Ljava/lang/String;Lg/cnc;)V

    goto/16 :goto_51

    :pswitch_2f
    const/16 v27, -0x1

    const/16 v28, 0x0

    move-object/from16 v2, v28

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    const/4 v6, 0x0

    :goto_28
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_51

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_8

    :goto_29
    const/4 v8, -0x1

    goto :goto_2a

    :sswitch_37
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4c

    goto :goto_29

    :cond_4c
    const/4 v8, 0x4

    goto :goto_2a

    :sswitch_38
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4d

    goto :goto_29

    :cond_4d
    const/4 v8, 0x3

    goto :goto_2a

    :sswitch_39
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4e

    goto :goto_29

    :cond_4e
    const/4 v8, 0x2

    goto :goto_2a

    :sswitch_3a
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4f

    goto :goto_29

    :cond_4f
    const/4 v8, 0x1

    goto :goto_2a

    :sswitch_3b
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_50

    goto :goto_29

    :cond_50
    const/4 v8, 0x0

    :goto_2a
    packed-switch v8, :pswitch_data_8

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_28

    :pswitch_30
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    :pswitch_31
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v6

    goto :goto_28

    :pswitch_32
    invoke-static/range {p0 .. p1}, Lg/bff;->as(Landroid/util/JsonReader;Lg/cgf;)Lg/dlz;

    move-result-object v4

    goto :goto_28

    :pswitch_33
    const/4 v5, 0x1

    invoke-static {v0, v1, v5}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v8

    move-object v5, v8

    goto :goto_28

    :pswitch_34
    invoke-static/range {p0 .. p1}, Lg/ckd;->aa(Landroid/util/JsonReader;Lg/cgf;)Lg/eqn;

    move-result-object v3

    goto :goto_28

    :cond_51
    new-instance v1, Lg/egv;

    invoke-direct/range {v1 .. v6}, Lg/egv;-><init>(Ljava/lang/String;Lg/eqn;Lg/dlz;Lg/cnc;Z)V

    goto/16 :goto_21

    :pswitch_35
    const/16 v27, -0x1

    const/16 v28, 0x0

    move-object/from16 v2, v28

    move-object v7, v2

    const/4 v5, 0x0

    :goto_2b
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_9

    :goto_2c
    const/4 v3, -0x1

    goto :goto_2d

    :sswitch_3c
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    goto :goto_2c

    :cond_52
    const/4 v3, 0x2

    goto :goto_2d

    :sswitch_3d
    const-string v4, "mm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    goto :goto_2c

    :cond_53
    const/4 v3, 0x1

    goto :goto_2d

    :sswitch_3e
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    goto :goto_2c

    :cond_54
    const/4 v3, 0x0

    :goto_2d
    packed-switch v3, :pswitch_data_9

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2b

    :pswitch_36
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2b

    :pswitch_37
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_59

    const/4 v8, 0x2

    if-eq v2, v8, :cond_58

    const/4 v3, 0x3

    if-eq v2, v3, :cond_57

    const/4 v4, 0x4

    if-eq v2, v4, :cond_56

    const/4 v11, 0x5

    if-eq v2, v11, :cond_55

    sget-object v2, Lg/cxp;->dq:Lg/cxp;

    goto :goto_2b

    :cond_55
    sget-object v2, Lg/cxp;->s:Lg/cxp;

    goto :goto_2b

    :cond_56
    const/4 v11, 0x5

    sget-object v2, Lg/cxp;->p:Lg/cxp;

    goto :goto_2b

    :cond_57
    const/4 v4, 0x4

    const/4 v11, 0x5

    sget-object v2, Lg/cxp;->ox:Lg/cxp;

    goto :goto_2b

    :cond_58
    const/4 v4, 0x4

    const/4 v11, 0x5

    sget-object v2, Lg/cxp;->d:Lg/cxp;

    goto :goto_2b

    :cond_59
    const/4 v4, 0x4

    const/4 v8, 0x2

    const/4 v11, 0x5

    sget-object v2, Lg/cxp;->dq:Lg/cxp;

    goto :goto_2b

    :pswitch_38
    const/4 v4, 0x4

    const/4 v8, 0x2

    const/4 v11, 0x5

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v5

    goto :goto_2b

    :cond_5a
    new-instance v3, Lg/gtd;

    invoke-direct {v3, v7, v2, v5}, Lg/gtd;-><init>(Ljava/lang/String;Lg/cxp;Z)V

    const-string v2, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    invoke-virtual {v1, v2}, Lg/cgf;->t(Ljava/lang/String;)V

    move-object v7, v3

    goto/16 :goto_51

    :pswitch_39
    const/4 v4, 0x4

    const/4 v8, 0x2

    const/4 v11, 0x5

    const/16 v27, -0x1

    const/16 v28, 0x0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v28

    move-object v11, v5

    move-object/from16 v16, v11

    move-object/from16 v22, v16

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v29, v24

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    const/16 v17, 0x0

    const/16 v33, 0x5

    :goto_2e
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_73

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v35

    sparse-switch v35, :sswitch_data_a

    :goto_2f
    const/4 v4, -0x1

    goto/16 :goto_30

    :sswitch_3f
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    goto :goto_2f

    :cond_5b
    const/16 v4, 0xb

    goto/16 :goto_30

    :sswitch_40
    const-string v8, "ml"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    goto :goto_2f

    :cond_5c
    const/16 v4, 0xa

    goto/16 :goto_30

    :sswitch_41
    const-string v8, "lj"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    goto :goto_2f

    :cond_5d
    const/16 v4, 0x9

    goto/16 :goto_30

    :sswitch_42
    const-string v8, "lc"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    goto :goto_2f

    :cond_5e
    const/16 v4, 0x8

    goto :goto_30

    :sswitch_43
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    goto :goto_2f

    :cond_5f
    const/4 v4, 0x7

    goto :goto_30

    :sswitch_44
    const-string v8, "w"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    goto :goto_2f

    :cond_60
    const/4 v4, 0x6

    goto :goto_30

    :sswitch_45
    const-string v8, "t"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    goto :goto_2f

    :cond_61
    const/4 v4, 0x5

    goto :goto_30

    :sswitch_46
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    goto :goto_2f

    :cond_62
    const/4 v4, 0x4

    goto :goto_30

    :sswitch_47
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    goto :goto_2f

    :cond_63
    const/4 v4, 0x3

    goto :goto_30

    :sswitch_48
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    goto :goto_2f

    :cond_64
    const/4 v4, 0x2

    goto :goto_30

    :sswitch_49
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    goto :goto_2f

    :cond_65
    const/4 v4, 0x1

    goto :goto_30

    :sswitch_4a
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    goto :goto_2f

    :cond_66
    const/4 v4, 0x0

    :goto_30
    packed-switch v4, :pswitch_data_a

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    move-object/from16 v36, v5

    move-object/from16 v37, v11

    :cond_67
    const/4 v5, 0x0

    goto/16 :goto_3b

    :pswitch_3a
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v16

    :goto_31
    const/4 v4, 0x4

    const/4 v8, 0x2

    goto/16 :goto_2e

    :pswitch_3b
    move-object v8, v5

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v26, v4

    :goto_32
    move-object v5, v8

    goto :goto_31

    :pswitch_3c
    move-object v8, v5

    invoke-static {}, Lg/fvo;->values()[Lg/fvo;

    move-result-object v4

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    move-object/from16 v31, v4

    const/4 v4, 0x1

    sub-int/2addr v5, v4

    aget-object v31, v31, v5

    goto :goto_32

    :pswitch_3d
    move-object v8, v5

    const/4 v4, 0x1

    invoke-static {}, Lg/ctn;->values()[Lg/ctn;

    move-result-object v5

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    aget-object v30, v5, v25

    goto :goto_32

    :pswitch_3e
    move-object v8, v5

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v17

    goto :goto_31

    :pswitch_3f
    move-object v8, v5

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v11

    goto :goto_31

    :pswitch_40
    move-object v8, v5

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    if-ne v5, v4, :cond_68

    sget-object v4, Lg/gqk;->dq:Lg/gqk;

    :goto_33
    move-object/from16 v22, v4

    goto :goto_32

    :cond_68
    sget-object v4, Lg/gqk;->d:Lg/gqk;

    goto :goto_33

    :pswitch_41
    move-object v8, v5

    invoke-static/range {p0 .. p1}, Lg/bff;->as(Landroid/util/JsonReader;Lg/cgf;)Lg/dlz;

    move-result-object v24

    goto :goto_31

    :pswitch_42
    invoke-static/range {p0 .. p1}, Lg/bff;->av(Landroid/util/JsonReader;Lg/cgf;)Lg/dlz;

    move-result-object v5

    goto :goto_31

    :pswitch_43
    move-object v8, v5

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v4, -0x1

    :goto_34
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v36, v8

    const-string v8, "k"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6a

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_69

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    :goto_35
    move-object/from16 v8, v36

    goto :goto_34

    :cond_69
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    goto :goto_35

    :cond_6a
    invoke-static {v0, v1, v4}, Lg/bff;->s(Landroid/util/JsonReader;Lg/cgf;I)Lg/dlz;

    move-result-object v23

    goto :goto_35

    :cond_6b
    move-object/from16 v36, v8

    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    move-object/from16 v5, v36

    goto/16 :goto_31

    :pswitch_44
    move-object/from16 v36, v5

    invoke-static/range {p0 .. p1}, Lg/bff;->as(Landroid/util/JsonReader;Lg/cgf;)Lg/dlz;

    move-result-object v29

    goto/16 :goto_31

    :pswitch_45
    move-object/from16 v36, v5

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    :goto_36
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    move-object/from16 v4, v28

    move-object v5, v4

    :goto_37
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6e

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v37, v11

    const-string v11, "n"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6d

    const-string v11, "v"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6c

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    :goto_38
    move-object/from16 v11, v37

    goto :goto_37

    :cond_6c
    const/4 v5, 0x1

    invoke-static {v0, v1, v5}, Lg/bff;->am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;

    move-result-object v8

    move-object v5, v8

    goto :goto_38

    :cond_6d
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_38

    :cond_6e
    move-object/from16 v37, v11

    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6f

    move-object/from16 v32, v5

    :goto_39
    move-object/from16 v11, v37

    goto :goto_36

    :cond_6f
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_70

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    :cond_70
    const/4 v4, 0x1

    goto :goto_3a

    :cond_71
    const/4 v4, 0x1

    goto :goto_39

    :goto_3a
    iput-boolean v4, v1, Lg/cgf;->d:Z

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_72
    move-object/from16 v37, v11

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v4, :cond_67

    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3b
    move-object/from16 v5, v36

    move-object/from16 v11, v37

    goto/16 :goto_31

    :cond_73
    move-object/from16 v36, v5

    move-object/from16 v37, v11

    if-nez v36, :cond_74

    new-instance v5, Lg/dlz;

    new-instance v1, Lg/flj;

    invoke-direct {v1, v2}, Lg/flj;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v5, v2, v1}, Lg/dlz;-><init>(ILjava/util/List;)V

    move-object v8, v5

    goto :goto_3c

    :cond_74
    move-object/from16 v8, v36

    :goto_3c
    new-instance v4, Lg/gqw;

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v9, v24

    move/from16 v14, v26

    move-object/from16 v10, v29

    move-object/from16 v12, v30

    move-object/from16 v13, v31

    move-object/from16 v16, v32

    move-object/from16 v11, v37

    invoke-direct/range {v4 .. v17}, Lg/gqw;-><init>(Ljava/lang/String;Lg/gqk;Lg/dlz;Lg/dlz;Lg/dlz;Lg/dlz;Lg/cnc;Lg/ctn;Lg/fvo;FLjava/util/ArrayList;Lg/cnc;Z)V

    move-object v7, v4

    goto/16 :goto_51

    :pswitch_46
    const/4 v5, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, v28

    const/4 v3, 0x0

    :goto_3d
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_b

    :goto_3e
    const/4 v4, -0x1

    goto :goto_3f

    :sswitch_4b
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    goto :goto_3e

    :cond_75
    const/4 v4, 0x2

    goto :goto_3f

    :sswitch_4c
    const-string v6, "it"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_76

    goto :goto_3e

    :cond_76
    const/4 v4, 0x1

    goto :goto_3f

    :sswitch_4d
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_77

    goto :goto_3e

    :cond_77
    const/4 v4, 0x0

    :goto_3f
    packed-switch v4, :pswitch_data_b

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_3d

    :pswitch_47
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3d

    :pswitch_48
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    :cond_78
    :goto_40
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-static/range {p0 .. p1}, Lg/baf;->z(Landroid/util/JsonReader;Lg/cgf;)Lg/dpy;

    move-result-object v4

    if-eqz v4, :cond_78

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_79
    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_3d

    :pswitch_49
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    goto :goto_3d

    :cond_7a
    new-instance v1, Lg/ewz;

    invoke-direct {v1, v7, v2, v3}, Lg/ewz;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    goto/16 :goto_21

    :pswitch_4a
    const/4 v5, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v33, 0x5

    sget-object v4, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    move-object/from16 v39, v4

    move-object/from16 v37, v28

    move-object/from16 v38, v37

    move-object/from16 v40, v38

    move-object/from16 v42, v40

    move-object/from16 v43, v42

    const/16 v44, 0x0

    :goto_41
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_c

    :goto_42
    const/4 v4, -0x1

    goto :goto_43

    :sswitch_4e
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    goto :goto_42

    :cond_7b
    const/4 v4, 0x7

    goto :goto_43

    :sswitch_4f
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    goto :goto_42

    :cond_7c
    const/4 v4, 0x6

    goto :goto_43

    :sswitch_50
    const-string v6, "t"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7d

    goto :goto_42

    :cond_7d
    const/4 v4, 0x5

    goto :goto_43

    :sswitch_51
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    goto :goto_42

    :cond_7e
    const/4 v4, 0x4

    goto :goto_43

    :sswitch_52
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7f

    goto :goto_42

    :cond_7f
    const/4 v4, 0x3

    goto :goto_43

    :sswitch_53
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    goto :goto_42

    :cond_80
    const/4 v4, 0x2

    goto :goto_43

    :sswitch_54
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    goto :goto_42

    :cond_81
    const/4 v4, 0x1

    goto :goto_43

    :sswitch_55
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_82

    goto :goto_42

    :cond_82
    const/4 v4, 0x0

    :goto_43
    packed-switch v4, :pswitch_data_c

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_41

    :pswitch_4b
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v37

    goto :goto_41

    :pswitch_4c
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v44

    goto :goto_41

    :pswitch_4d
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_83

    sget-object v4, Lg/gqk;->dq:Lg/gqk;

    :goto_44
    move-object/from16 v38, v4

    goto :goto_41

    :cond_83
    sget-object v4, Lg/gqk;->d:Lg/gqk;

    goto :goto_44

    :pswitch_4e
    const/4 v6, 0x1

    invoke-static/range {p0 .. p1}, Lg/bff;->as(Landroid/util/JsonReader;Lg/cgf;)Lg/dlz;

    move-result-object v42

    goto/16 :goto_41

    :pswitch_4f
    const/4 v6, 0x1

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    if-ne v4, v6, :cond_84

    sget-object v4, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_45
    move-object/from16 v39, v4

    goto/16 :goto_41

    :cond_84
    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_45

    :pswitch_50
    invoke-static/range {p0 .. p1}, Lg/bff;->av(Landroid/util/JsonReader;Lg/cgf;)Lg/dlz;

    move-result-object v28

    goto/16 :goto_41

    :pswitch_51
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v4, -0x1

    :goto_46
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "k"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_86

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_85

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_46

    :cond_85
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    goto :goto_46

    :cond_86
    invoke-static {v0, v1, v4}, Lg/bff;->s(Landroid/util/JsonReader;Lg/cgf;I)Lg/dlz;

    move-result-object v40

    goto :goto_46

    :cond_87
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_41

    :pswitch_52
    invoke-static/range {p0 .. p1}, Lg/bff;->as(Landroid/util/JsonReader;Lg/cgf;)Lg/dlz;

    move-result-object v43

    goto/16 :goto_41

    :cond_88
    if-nez v28, :cond_89

    new-instance v1, Lg/dlz;

    new-instance v3, Lg/flj;

    invoke-direct {v3, v2}, Lg/flj;-><init>(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Lg/dlz;-><init>(ILjava/util/List;)V

    move-object/from16 v41, v1

    goto :goto_47

    :cond_89
    move-object/from16 v41, v28

    :goto_47
    new-instance v36, Lg/flm;

    invoke-direct/range {v36 .. v44}, Lg/flm;-><init>(Ljava/lang/String;Lg/gqk;Landroid/graphics/Path$FillType;Lg/dlz;Lg/dlz;Lg/dlz;Lg/dlz;Z)V

    move-object/from16 v7, v36

    goto/16 :goto_51

    :pswitch_53
    const/4 v5, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v33, 0x5

    move-object/from16 v7, v28

    move-object/from16 v17, v7

    move-object/from16 v20, v17

    const/4 v6, 0x1

    const/16 v18, 0x0

    const/16 v22, 0x0

    :goto_48
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_d

    :goto_49
    const/4 v4, -0x1

    goto :goto_4a

    :sswitch_56
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8a

    goto :goto_49

    :cond_8a
    const/4 v4, 0x5

    goto :goto_4a

    :sswitch_57
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8b

    goto :goto_49

    :cond_8b
    const/4 v4, 0x4

    goto :goto_4a

    :sswitch_58
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8c

    goto :goto_49

    :cond_8c
    const/4 v4, 0x3

    goto :goto_4a

    :sswitch_59
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8d

    goto :goto_49

    :cond_8d
    const/4 v4, 0x2

    goto :goto_4a

    :sswitch_5a
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8e

    goto :goto_49

    :cond_8e
    const/4 v4, 0x1

    goto :goto_4a

    :sswitch_5b
    const-string v8, "fillEnabled"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8f

    goto :goto_49

    :cond_8f
    const/4 v4, 0x0

    :goto_4a
    packed-switch v4, :pswitch_data_d

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_48

    :pswitch_54
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v17

    goto :goto_48

    :pswitch_55
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v22

    goto :goto_48

    :pswitch_56
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    goto :goto_48

    :pswitch_57
    invoke-static/range {p0 .. p1}, Lg/bff;->av(Landroid/util/JsonReader;Lg/cgf;)Lg/dlz;

    move-result-object v7

    goto :goto_48

    :pswitch_58
    invoke-static/range {p0 .. p1}, Lg/bff;->t(Landroid/util/JsonReader;Lg/cgf;)Lg/dlz;

    move-result-object v20

    goto :goto_48

    :pswitch_59
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v18

    goto :goto_48

    :cond_90
    if-nez v7, :cond_91

    new-instance v7, Lg/dlz;

    new-instance v1, Lg/flj;

    invoke-direct {v1, v2}, Lg/flj;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v7, v2, v1}, Lg/dlz;-><init>(ILjava/util/List;)V

    :cond_91
    move-object/from16 v21, v7

    const/4 v2, 0x1

    if-ne v6, v2, :cond_92

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_4b
    move-object/from16 v19, v1

    goto :goto_4c

    :cond_92
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_4b

    :goto_4c
    new-instance v16, Lg/gjw;

    invoke-direct/range {v16 .. v22}, Lg/gjw;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lg/dlz;Lg/dlz;Z)V

    move-object/from16 v7, v16

    goto/16 :goto_51

    :pswitch_5a
    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v34, 0x4

    if-ne v4, v3, :cond_93

    const/4 v3, 0x1

    goto :goto_4d

    :cond_93
    const/4 v3, 0x0

    :goto_4d
    move/from16 v19, v3

    move-object/from16 v16, v28

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    const/16 v20, 0x0

    :goto_4e
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_e

    :goto_4f
    const/4 v3, -0x1

    goto :goto_50

    :sswitch_5c
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_94

    goto :goto_4f

    :cond_94
    const/4 v3, 0x4

    goto :goto_50

    :sswitch_5d
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    goto :goto_4f

    :cond_95
    const/4 v3, 0x3

    goto :goto_50

    :sswitch_5e
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    goto :goto_4f

    :cond_96
    const/4 v3, 0x2

    goto :goto_50

    :sswitch_5f
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_97

    goto :goto_4f

    :cond_97
    const/4 v3, 0x1

    goto :goto_50

    :sswitch_60
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    goto :goto_4f

    :cond_98
    const/4 v3, 0x0

    :goto_50
    packed-switch v3, :pswitch_data_e

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4e

    :pswitch_5b
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v16

    goto :goto_4e

    :pswitch_5c
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v20

    goto :goto_4e

    :pswitch_5d
    invoke-static/range {p0 .. p1}, Lg/bff;->as(Landroid/util/JsonReader;Lg/cgf;)Lg/dlz;

    move-result-object v18

    goto :goto_4e

    :pswitch_5e
    invoke-static/range {p0 .. p1}, Lg/ckd;->aa(Landroid/util/JsonReader;Lg/cgf;)Lg/eqn;

    move-result-object v17

    goto :goto_4e

    :pswitch_5f
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_99

    const/16 v19, 0x1

    goto :goto_4e

    :cond_99
    const/16 v19, 0x0

    goto :goto_4e

    :cond_9a
    new-instance v15, Lg/ghq;

    invoke-direct/range {v15 .. v20}, Lg/ghq;-><init>(Ljava/lang/String;Lg/eqn;Lg/dlz;ZZ)V

    move-object v7, v15

    :goto_51
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_51

    :cond_9b
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    return-object v7

    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_d
        0xcc6 -> :sswitch_c
        0xcdf -> :sswitch_b
        0xceb -> :sswitch_a
        0xcec -> :sswitch_9
        0xda0 -> :sswitch_8
        0xe31 -> :sswitch_7
        0xe32 -> :sswitch_6
        0xe3e -> :sswitch_5
        0xe55 -> :sswitch_4
        0xe5f -> :sswitch_3
        0xe61 -> :sswitch_2
        0xe79 -> :sswitch_1
        0xe7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_53
        :pswitch_4a
        :pswitch_46
        :pswitch_39
        :pswitch_35
        :pswitch_2f
        :pswitch_2b
        :pswitch_25
        :pswitch_20
        :pswitch_14
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x65 -> :sswitch_13
        0x6d -> :sswitch_12
        0x6f -> :sswitch_11
        0x73 -> :sswitch_10
        0xcfc -> :sswitch_f
        0xdbf -> :sswitch_e
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x63 -> :sswitch_1c
        0x64 -> :sswitch_1b
        0x6f -> :sswitch_1a
        0x77 -> :sswitch_19
        0xcfc -> :sswitch_18
        0xd77 -> :sswitch_17
        0xd7e -> :sswitch_16
        0xd9f -> :sswitch_15
        0xdbf -> :sswitch_14
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x64 -> :sswitch_1f
        0x67 -> :sswitch_1e
        0x6f -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_12
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        0x64 -> :sswitch_2a
        0x70 -> :sswitch_29
        0x72 -> :sswitch_28
        0xcfc -> :sswitch_27
        0xd29 -> :sswitch_26
        0xd2a -> :sswitch_25
        0xdbf -> :sswitch_24
        0xde3 -> :sswitch_23
        0xde4 -> :sswitch_22
        0xe04 -> :sswitch_21
        0xe66 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        0xcfc -> :sswitch_2e
        0xd68 -> :sswitch_2d
        0xdbf -> :sswitch_2c
        0x197df -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        0x63 -> :sswitch_33
        0x6f -> :sswitch_32
        0xcfc -> :sswitch_31
        0xdbf -> :sswitch_30
        0xe7e -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        0x72 -> :sswitch_36
        0xcfc -> :sswitch_35
        0xdbf -> :sswitch_34
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
    .end packed-switch

    :sswitch_data_8
    .sparse-switch
        0x70 -> :sswitch_3b
        0x72 -> :sswitch_3a
        0x73 -> :sswitch_39
        0xcfc -> :sswitch_38
        0xdbf -> :sswitch_37
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :sswitch_data_9
    .sparse-switch
        0xcfc -> :sswitch_3e
        0xda0 -> :sswitch_3d
        0xdbf -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_38
        :pswitch_37
        :pswitch_36
    .end packed-switch

    :sswitch_data_a
    .sparse-switch
        0x64 -> :sswitch_4a
        0x65 -> :sswitch_49
        0x67 -> :sswitch_48
        0x6f -> :sswitch_47
        0x73 -> :sswitch_46
        0x74 -> :sswitch_45
        0x77 -> :sswitch_44
        0xcfc -> :sswitch_43
        0xd77 -> :sswitch_42
        0xd7e -> :sswitch_41
        0xd9f -> :sswitch_40
        0xdbf -> :sswitch_3f
    .end sparse-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
    .end packed-switch

    :sswitch_data_b
    .sparse-switch
        0xcfc -> :sswitch_4d
        0xd2b -> :sswitch_4c
        0xdbf -> :sswitch_4b
    .end sparse-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_49
        :pswitch_48
        :pswitch_47
    .end packed-switch

    :sswitch_data_c
    .sparse-switch
        0x65 -> :sswitch_55
        0x67 -> :sswitch_54
        0x6f -> :sswitch_53
        0x72 -> :sswitch_52
        0x73 -> :sswitch_51
        0x74 -> :sswitch_50
        0xcfc -> :sswitch_4f
        0xdbf -> :sswitch_4e
    .end sparse-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
    .end packed-switch

    :sswitch_data_d
    .sparse-switch
        -0x179b7bc2 -> :sswitch_5b
        0x63 -> :sswitch_5a
        0x6f -> :sswitch_59
        0x72 -> :sswitch_58
        0xcfc -> :sswitch_57
        0xdbf -> :sswitch_56
    .end sparse-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
    .end packed-switch

    :sswitch_data_e
    .sparse-switch
        0x64 -> :sswitch_60
        0x70 -> :sswitch_5f
        0x73 -> :sswitch_5e
        0xcfc -> :sswitch_5d
        0xdbf -> :sswitch_5c
    .end sparse-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
    .end packed-switch
.end method


# virtual methods
.method public _ar(Lg/hed;Lg/cfm;)V
    .locals 0

    return-void
.end method

.method public _cs(Lg/hed;Lg/cfm;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bq(Lg/hed;Lg/cih;)V
    .locals 0

    return-void
.end method

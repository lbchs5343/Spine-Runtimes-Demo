.class public final Lg/dzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bmm;
.implements Lg/cdx;
.implements Lg/ebz;
.implements Lcom/google/android/gms/internal/ads/zzakd;
.implements Lcom/google/android/gms/internal/ads/zzcaq;
.implements Lcom/google/android/gms/internal/ads/zzdtv;
.implements Lg/my;


# static fields
.field public static a:Lg/dzh;


# instance fields
.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public final synthetic h:I

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    iput p1, p0, Lg/dzh;->h:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "randomUUID().toString()"

    invoke-static {p1, v0}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg/gei;->n:Lg/gei;

    invoke-static {p1}, Lg/dwm;->ac(Ljava/lang/String;)Lg/gei;

    move-result-object p1

    iput-object p1, p0, Lg/dzh;->i:Ljava/lang/Object;

    sget-object p1, Lg/cso;->b:Lg/dpd;

    iput-object p1, p0, Lg/dzh;->f:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/dzh;->g:Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/dzh;->i:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/dzh;->f:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/dzh;->g:Ljava/lang/Object;

    return-void

    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lg/guq;

    const-string v0, ""

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lg/guq;-><init>(Ljava/lang/String;JLjava/util/HashMap;)V

    iput-object p1, p0, Lg/dzh;->i:Ljava/lang/Object;

    new-instance p1, Lg/guq;

    invoke-direct {p1, v0, v1, v2, v3}, Lg/guq;-><init>(Ljava/lang/String;JLjava/util/HashMap;)V

    iput-object p1, p0, Lg/dzh;->f:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/dzh;->g:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/dzh;->h:I

    iput-object p2, p0, Lg/dzh;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lg/dzh;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lg/dzh;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dzh;->i:Ljava/lang/Object;

    iput-object p2, p0, Lg/dzh;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lg/dzh;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/fww;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/dzh;->g:Ljava/lang/Object;

    iput-object p1, p0, Lg/dzh;->i:Ljava/lang/Object;

    iput-object p2, p0, Lg/dzh;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lg/dzh;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dzh;->i:Ljava/lang/Object;

    new-instance v0, Lg/sw;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lg/sw;-><init>(Lg/gac;I)V

    iput-object v0, p0, Lg/dzh;->f:Ljava/lang/Object;

    new-instance v0, Lg/bnh;

    const/16 v1, 0x14

    invoke-direct {v0, p1, v1}, Lg/bnh;-><init>(Lg/gac;I)V

    iput-object v0, p0, Lg/dzh;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/aep;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lg/dzh;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/dzh;->i:Ljava/lang/Object;

    new-instance v0, Lg/dcu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/dzh;->f:Ljava/lang/Object;

    iput-object p1, p0, Lg/dzh;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/fus;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lg/dzh;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/ajs;

    invoke-direct {v0, p1}, Lg/ajs;-><init>(Lg/iz;)V

    iput-object v0, p0, Lg/dzh;->i:Ljava/lang/Object;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lg/dzh;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/guq;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lg/dzh;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dzh;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Lg/guq;->d()Lg/guq;

    move-result-object p1

    iput-object p1, p0, Lg/dzh;->f:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/dzh;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/ku;Lg/cep;Lg/cfg;Lg/crh;)V
    .locals 0

    const/16 p3, 0xd

    iput p3, p0, Lg/dzh;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dzh;->i:Ljava/lang/Object;

    iput-object p2, p0, Lg/dzh;->f:Ljava/lang/Object;

    iput-object p4, p0, Lg/dzh;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lg/dzh;->h:I

    iput-object p1, p0, Lg/dzh;->g:Ljava/lang/Object;

    iput-object p2, p0, Lg/dzh;->i:Ljava/lang/Object;

    iput-object p3, p0, Lg/dzh;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    iput p4, p0, Lg/dzh;->h:I

    iput-object p1, p0, Lg/dzh;->i:Ljava/lang/Object;

    iput-object p2, p0, Lg/dzh;->f:Ljava/lang/Object;

    iput-object p3, p0, Lg/dzh;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 6

    const/16 v0, 0x12

    iput v0, p0, Lg/dzh;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/dzh;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lg/dzh;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzalr;

    iget-object v2, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v2, [J

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzalr;->zzb:J

    add-int v5, v0, v0

    aput-wide v3, v2, v5

    add-int/lit8 v5, v5, 0x1

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzalr;->zzc:J

    aput-wide v3, v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast p1, [J

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lg/dzh;->g:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method

.method public static j(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lg/dzh;
    .locals 2

    new-instance v0, Lg/dzh;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lg/dzh;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static k(Lg/fza;Ljava/util/List;Lg/fza;Ljava/util/HashSet;)Z
    .locals 4

    sget-object v0, Lg/csv;->SYNTHETIC:Lg/csv;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    sget-object v0, Lg/hay;->CONTINUE:Lg/hay;

    invoke-static {p0, v0}, Lg/ffb;->cd(Lg/cih;Lg/hay;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    sget-object v2, Lg/csv;->ADDED_TO_REGION:Lg/csv;

    iget-object v3, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p2, p2, Lg/fza;->g:Ljava/util/BitSet;

    iget v2, v0, Lg/fza;->x:I

    invoke-virtual {p2, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/fza;

    iget-object p2, p2, Lg/fza;->g:Ljava/util/BitSet;

    iget v2, v0, Lg/fza;->x:I

    invoke-virtual {p2, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p1, Lg/acq;->t:Lg/acq;

    iget-object p2, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {p2, p1}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p0, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {p0, p1}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/azi;

    iget-object p1, p1, Lg/azi;->a:Lg/eek;

    iget-object p1, p1, Lg/eek;->ah:Lg/hay;

    sget-object p2, Lg/hay;->BREAK:Lg/hay;

    if-ne p1, p2, :cond_5

    goto :goto_0

    :cond_6
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fza;

    invoke-static {v0, p1}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_0
    return v1
.end method

.method public static l(Lg/gcv;)V
    .locals 7

    iget-object v0, p0, Lg/gcv;->d:Lg/fza;

    iget-object v1, v0, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lg/gcv;->g()Ljava/util/HashSet;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    invoke-static {v3, v1, v0, p0}, Lg/dzh;->k(Lg/fza;Ljava/util/List;Lg/fza;Ljava/util/HashSet;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lg/eek;

    sget-object v5, Lg/hay;->CONTINUE:Lg/hay;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lg/eek;-><init>(Lg/hay;I)V

    iget-object v3, v3, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public aa(I)Landroid/content/res/ColorStateList;
    .locals 3

    iget-object v0, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v1}, Lg/eyt;->bh(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public ab(Lg/ftm;Lg/gcv;Lg/fza;Lg/fza;Lg/exw;)Z
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    iget-object v2, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v2, Lg/hed;

    iget-object v3, v1, Lg/exw;->b:Lg/fza;

    invoke-static {v3}, Lg/ffb;->cf(Lg/fza;)Lg/fza;

    move-result-object v4

    sget-object v5, Lg/acq;->at:Lg/acq;

    iget-object v4, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v5}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/gcv;

    if-eq v6, v0, :cond_0

    iget-object v10, v0, Lg/gcv;->b:Lg/gcv;

    :goto_1
    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    if-ne v10, v6, :cond_2

    move-object v6, v1

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    iget-object v10, v10, Lg/gcv;->b:Lg/gcv;

    goto :goto_1

    :cond_3
    move-object v6, v8

    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_c

    invoke-static {v3}, Lg/ffb;->cf(Lg/fza;)Lg/fza;

    move-result-object v10

    if-eq v10, v3, :cond_4

    move-object v1, v8

    goto :goto_3

    :cond_4
    iget-object v1, v1, Lg/exw;->a:Lg/fza;

    :goto_3
    new-instance v10, Ljava/util/BitSet;

    iget-object v11, v2, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/BitSet;-><init>(I)V

    :goto_4
    if-eqz v3, :cond_c

    iget v11, v3, Lg/fza;->x:I

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_5

    goto/16 :goto_6

    :cond_5
    iget v11, v3, Lg/fza;->x:I

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    move-object/from16 v11, p3

    if-eqz v1, :cond_a

    invoke-static {v11, v3}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-static {v1}, Lg/ffb;->ah(Lg/cih;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_7

    :cond_6
    invoke-static {v1}, Lg/ffb;->aj(Lg/fza;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v7, v4}, Lg/awf;->q(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    sget-object v6, Lg/csv;->MTH_EXIT_BLOCK:Lg/csv;

    iget-object v10, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v10, v6}, Lg/sm;->g(Lg/csv;)Z

    move-result v6

    if-nez v6, :cond_d

    sget-object v6, Lg/csv;->RETURN:Lg/csv;

    iget-object v10, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v10, v6}, Lg/sm;->g(Lg/csv;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v2, v4}, Lg/hed;->bb(Lg/fza;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_7

    :cond_7
    iget-object v4, v2, Lg/hed;->aj:Lg/fza;

    invoke-static {v4, v1}, Lg/ffb;->x(Lg/fza;Lg/fza;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fza;

    sget-object v10, Lg/hay;->SWITCH:Lg/hay;

    invoke-static {v6, v10}, Lg/ffb;->cd(Lg/cih;Lg/hay;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_7

    :cond_9
    new-instance v6, Lg/exw;

    invoke-direct {v6, v1, v3, v9}, Lg/exw;-><init>(Lg/fza;Lg/fza;Z)V

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    iget-object v1, v3, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v7, :cond_b

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    goto :goto_5

    :cond_b
    move-object v1, v8

    :goto_5
    move-object v13, v3

    move-object v3, v1

    move-object v1, v13

    goto/16 :goto_4

    :cond_c
    :goto_6
    if-nez v4, :cond_e

    :cond_d
    :goto_7
    return v9

    :cond_e
    new-instance v1, Lg/eek;

    sget-object v4, Lg/hay;->BREAK:Lg/hay;

    invoke-direct {v1, v4, v9}, Lg/eek;-><init>(Lg/hay;I)V

    invoke-virtual {v1, v5, v0}, Lg/lh;->o(Lg/acq;Ljava/lang/Object;)V

    iget-object v0, v6, Lg/exw;->a:Lg/fza;

    iget-object v4, v6, Lg/exw;->b:Lg/fza;

    new-instance v5, Lg/azi;

    invoke-direct {v5, v0, v4, v1}, Lg/azi;-><init>(Lg/fza;Lg/fza;Lg/eek;)V

    sget-object v6, Lg/acq;->t:Lg/acq;

    iget-object v9, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v9, v6}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    invoke-virtual {v0, v6, v5}, Lg/lh;->o(Lg/acq;Ljava/lang/Object;)V

    :cond_f
    iget-object v0, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, v6}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v4, v6, v5}, Lg/lh;->o(Lg/acq;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {p1, v3}, Lg/ftm;->c(Lg/fza;)V

    invoke-virtual {v2, v3}, Lg/hed;->bj(Lg/fza;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_8

    :cond_11
    move-object/from16 p1, p4

    invoke-virtual {v2, p1}, Lg/hed;->bj(Lg/fza;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_12

    goto :goto_8

    :cond_12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gcv;

    iget-object v2, v0, Lg/gcv;->b:Lg/gcv;

    if-nez v2, :cond_13

    move-object v8, v0

    :cond_14
    if-nez v8, :cond_15

    goto :goto_8

    :cond_15
    iget-object p1, v8, Lg/gcv;->d:Lg/fza;

    if-eq p1, v3, :cond_16

    invoke-virtual {v8}, Lg/gcv;->g()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    new-instance p1, Lg/dhu;

    invoke-direct {p1, v8}, Lg/dhu;-><init>(Lg/gcv;)V

    invoke-virtual {v1, p1}, Lg/lh;->m(Lg/eue;)V

    iget-object v0, v8, Lg/gcv;->c:Lg/fza;

    invoke-virtual {v0, p1}, Lg/lh;->m(Lg/eue;)V

    :cond_16
    :goto_8
    return v7
.end method

.method public ac(Lg/aep;)V
    .locals 9

    iget-object v0, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    iget-object v5, p1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/brh;

    iget-object v6, v5, Lg/brh;->ch:[Lg/fol;

    aget-object v7, v6, v2

    sget-object v8, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-eq v7, v8, :cond_0

    aget-object v4, v6, v4

    if-ne v4, v8, :cond_1

    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lg/aep;->v:Lg/ar;

    iput-boolean v4, p1, Lg/ar;->f:Z

    return-void
.end method

.method public ad(Lg/czh;Lg/anx;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v1, Lg/btp;

    iget-object v2, v0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v2, Lg/fyl;

    move-object/from16 v3, p2

    iget-object v3, v3, Lg/anx;->b:Ljava/lang/Object;

    check-cast v3, Lg/cbf;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/16 v2, 0x519

    invoke-static {v1, v2, v4}, Lg/fyl;->e(Lg/btp;ILjava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {v3}, Lg/cbf;->getCode()I

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x3e8

    invoke-static {v1, v2, v4}, Lg/fyl;->e(Lg/btp;ILjava/lang/Throwable;)V

    return-void

    :cond_1
    iget-object v2, v2, Lg/fyl;->b:Lg/cdy;

    sget-object v3, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v3, v0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v7, "a"

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-gez v10, :cond_2

    goto/16 :goto_4

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_4

    rem-int/lit8 v13, v12, 0x2

    if-nez v13, :cond_3

    const-string v13, "0123456789"

    const/4 v14, 0x1

    invoke-static {v14, v13}, Lg/buj;->am(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    const-string v9, "dpa-ati"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v9, v8}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    if-ltz v10, :cond_9

    const-string v8, "zPede"

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v13, 0x3

    const-string v14, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v13, v14}, Lg/buj;->am(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0xd

    invoke-virtual {v12, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "de"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v12, v4}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v13, 0xb

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v11, 0x7

    invoke-virtual {v12, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v4, v14}, Lg/buj;->am(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "dpa-ame"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v12, v9}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    if-ltz v10, :cond_9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v12, 0xa

    if-ge v9, v12, :cond_5

    goto/16 :goto_4

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v14}, Lg/buj;->am(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-static {v4, v14}, Lg/buj;->am(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "dpa-ack"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v4, v9}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    if-ltz v10, :cond_9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    if-ltz v10, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v14}, Lg/buj;->am(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/acr;->bn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v14}, Lg/buj;->am(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    const-string v3, "dpa-ass"

    invoke-static {v2, v3, v0}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v1}, Lg/fyl;->f(Lg/btp;)V

    return-void

    :cond_9
    :goto_4
    const/16 v0, 0x516

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lg/fyl;->e(Lg/btp;ILjava/lang/Throwable;)V

    return-void
.end method

.method public ae(Ljava/util/List;Ljava/util/function/Function;)V
    .locals 4

    iget-object v0, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lg/evh;->m(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v1, Lg/eug;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p2}, Lg/eug;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v1}, Lg/acw;->t(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lg/gpn;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lg/gpn;-><init>(I)V

    new-instance v2, Lg/gpn;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Lg/gpn;-><init>(I)V

    invoke-static {v1, v2}, Lj$/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p2, Lg/ens;

    invoke-direct {p2, v0}, Lg/ens;-><init>(Ljava/util/List;)V

    sget-object v1, Lg/aqn;->b:Lg/aqn;

    invoke-static {p2, v1}, Lj$/util/Comparator$b;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p1, p2}, Lj$/util/List$b;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lg/dzh;->g:Ljava/lang/Object;

    new-instance p2, Lg/agx;

    const/16 v1, 0x12

    invoke-direct {p2, v1, p0}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, p2}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    new-instance p2, Lg/esk;

    invoke-direct {p2, p0}, Lg/esk;-><init>(Lg/dzh;)V

    invoke-static {p1, p2}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-static {p1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lg/gpn;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lg/gpn;-><init>(I)V

    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Lj$/util/stream/Collectors;->toSet()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    iput-object p2, p0, Lg/dzh;->f:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fgh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fgh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1
.end method

.method public af()V
    .locals 1

    iget-object v0, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public ag()Ljava/util/Map;
    .locals 9

    iget-object v0, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v1, Lg/cmc;

    invoke-interface {v1}, Lg/cmc;->dq()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const-string v3, "version_name"

    const-string v4, "update_version_code"

    const-string v5, "version_code"

    if-nez v2, :cond_3

    const-string v2, "app_version"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v1, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v7, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_a

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_4

    const-string v7, "UPDATE_VERSION_CODE"

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :catchall_0
    nop

    goto :goto_2

    :cond_4
    move-object v6, v2

    :goto_1
    if-nez v6, :cond_5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_5
    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :goto_2
    invoke-static {v0}, Lg/acw;->be(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Lg/acw;->e:Ljava/lang/reflect/Field;

    if-nez v7, :cond_6

    if-eqz v6, :cond_6

    :try_start_1
    const-string v7, "VERSION_NAME"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    sput-object v6, Lg/acw;->e:Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    nop

    :cond_6
    :goto_3
    sget-object v6, Lg/acw;->e:Ljava/lang/reflect/Field;

    if-eqz v6, :cond_7

    :try_start_2
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    :cond_7
    const-string v6, ""

    :goto_4
    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lg/acw;->be(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Lg/acw;->j:Ljava/lang/reflect/Field;

    if-nez v3, :cond_8

    if-eqz v0, :cond_8

    :try_start_3
    const-string v3, "VERSION_CODE"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lg/acw;->j:Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    nop

    :cond_8
    :goto_5
    sget-object v0, Lg/acw;->j:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_9

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    :cond_9
    const/4 v0, -0x1

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-object v1
.end method

.method public ah(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lg/ets;

    invoke-direct {v1, v0, p1}, Lg/ets;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lg/gac;->al()V

    invoke-virtual {v0}, Lg/gac;->an()V

    :try_start_0
    iget-object v2, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v2, Lg/sw;

    invoke-virtual {v2, v1}, Lg/sw;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg/gac;->ah()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lg/gac;->am()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lg/gac;->am()V

    throw p1

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lg/dzh;->h:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Lg/dzh;

    iget-object v1, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v1, Lg/guq;

    invoke-virtual {v1}, Lg/guq;->d()Lg/guq;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/dzh;-><init>(Lg/guq;)V

    iget-object v1, p0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/guq;

    iget-object v3, v0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lg/guq;->d()Lg/guq;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public dq(Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v0, Lg/hcl;

    iget v1, v0, Lg/hcl;->e:I

    iget v0, v0, Lg/hcl;->h:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v0, Lg/emr;

    iget-object v0, v0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lg/fzx;

    iget-object v0, v0, Lg/fzx;->ab:Ljava/util/HashMap;

    iget-object v1, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lg/efr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lg/efr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v0}, Lg/dxo;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .locals 1

    iget-object v0, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/ClipDescription;

    return-object v0
.end method

.method public m(Lg/aep;III)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lg/brh;->bb:I

    iget v1, p1, Lg/brh;->au:I

    const/4 v2, 0x0

    iput v2, p1, Lg/brh;->bb:I

    iput v2, p1, Lg/brh;->au:I

    invoke-virtual {p1, p3}, Lg/brh;->ed(I)V

    invoke-virtual {p1, p4}, Lg/brh;->dj(I)V

    if-gez v0, :cond_0

    iput v2, p1, Lg/brh;->bb:I

    goto :goto_0

    :cond_0
    iput v0, p1, Lg/brh;->bb:I

    :goto_0
    if-gez v1, :cond_1

    iput v2, p1, Lg/brh;->au:I

    goto :goto_1

    :cond_1
    iput v1, p1, Lg/brh;->au:I

    :goto_1
    iget-object p1, p0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast p1, Lg/aep;

    iput p2, p1, Lg/aep;->f:I

    invoke-virtual {p1}, Lg/aep;->ae()V

    return-void
.end method

.method public n(Lg/dwq;Ljava/io/ByteArrayOutputStream;)V
    .locals 4

    new-instance v0, Lg/dtc;

    iget-object v1, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v3, Lg/xx;

    invoke-direct {v0, p2, v1, v2, v3}, Lg/dtc;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/HashMap;Ljava/util/HashMap;Lg/xx;)V

    const-class p2, Lg/dwq;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/xx;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, v0}, Lg/box;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lg/fgn;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No encoder for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v1}, Lg/fso;->ai(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    const/4 v0, 0x1

    const-string v1, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    invoke-static {v0, v1}, Lg/fcg;->o(ILjava/lang/String;)Lg/fcg;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lg/fcg;->e(ILjava/lang/String;)V

    iget-object p1, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast p1, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p1}, Lg/gac;->al()V

    invoke-virtual {p1, v1}, Lg/gac;->ag(Lg/fxn;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lg/fcg;->p()V

    return-object v0

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lg/fcg;->p()V

    throw v0
.end method

.method public q(Lg/fij;)V
    .locals 8

    new-instance v0, Lg/bco;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lg/bco;-><init>(I)V

    iget-object v1, p0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v1, Lg/crh;

    iget-object v2, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v2, Lg/ku;

    iget-object v3, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v3, Lg/cep;

    iget-object v4, v1, Lg/crh;->e:Lg/ekr;

    iget-object v5, p1, Lg/fij;->b:Lg/cq;

    invoke-static {}, Lg/ku;->d()Lg/fpd;

    move-result-object v6

    iget-object v7, v2, Lg/ku;->a:Ljava/lang/String;

    if-eqz v7, :cond_1

    iput-object v7, v6, Lg/fpd;->f:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iput-object v5, v6, Lg/fpd;->d:Ljava/lang/Object;

    iget-object v2, v2, Lg/ku;->b:[B

    iput-object v2, v6, Lg/fpd;->c:Ljava/lang/Object;

    invoke-virtual {v6}, Lg/fpd;->w()Lg/ku;

    move-result-object v2

    new-instance v5, Lg/daw;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lg/daw;-><init>(I)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lg/daw;->g:Ljava/lang/Object;

    iget-object v6, v1, Lg/crh;->c:Lg/cqi;

    invoke-interface {v6}, Lg/cqi;->l()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lg/daw;->b:Ljava/lang/Object;

    iget-object v1, v1, Lg/crh;->d:Lg/cqi;

    invoke-interface {v1}, Lg/cqi;->l()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v5, Lg/daw;->d:Ljava/lang/Object;

    const-string v1, "PLAY_BILLING_LIBRARY"

    iput-object v1, v5, Lg/daw;->e:Ljava/lang/Object;

    new-instance v1, Lg/csl;

    iget-object p1, p1, Lg/fij;->a:Lg/fjq;

    invoke-virtual {p1}, Lg/bsv;->j()[B

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lg/csl;-><init>(Lg/cep;[B)V

    iput-object v1, v5, Lg/daw;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, v5, Lg/daw;->f:Ljava/lang/Object;

    invoke-virtual {v5}, Lg/daw;->y()Lg/gfj;

    move-result-object p1

    check-cast v4, Lg/fyn;

    iget-object v1, v4, Lg/fyn;->e:Ljava/util/concurrent/Executor;

    new-instance v3, Lg/gtt;

    invoke-direct {v3, v4, v2, v0, p1}, Lg/gtt;-><init>(Lg/fyn;Lg/ku;Lg/bco;Lg/gfj;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null priority"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null backendName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(IILg/ejj;)Landroid/graphics/Typeface;
    .locals 9

    iget-object v0, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast p1, Landroid/util/TypedValue;

    if-nez p1, :cond_1

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iput-object p1, p0, Lg/dzh;->g:Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lg/dzh;->i:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    iget-object p1, p0, Lg/dzh;->g:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroid/util/TypedValue;

    sget-object p1, Lg/fbs;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/4 v7, 0x1

    const/4 v8, 0x0

    move v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, Lg/fbs;->e(Landroid/content/Context;ILandroid/util/TypedValue;ILg/dzm;ZZ)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public s(Lg/fza;Lg/gcv;)Ljava/lang/Boolean;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v3, v1, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v3, Lg/hed;

    invoke-virtual {v2}, Lg/gcv;->f()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/exw;

    iget-object v6, v4, Lg/exw;->b:Lg/fza;

    iget-object v7, v4, Lg/exw;->b:Lg/fza;

    sget-object v8, Lg/csv;->SYNTHETIC:Lg/csv;

    iget-object v4, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v8}, Lg/sm;->g(Lg/csv;)Z

    move-result v4

    const/4 v8, 0x1

    if-nez v4, :cond_2

    iget-object v4, v7, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v8, :cond_1

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    iget v7, v7, Lg/fza;->x:I

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :cond_1
    iget-object v4, v7, Lg/fza;->i:Ljava/util/BitSet;

    :goto_1
    invoke-static {v3, v4}, Lg/ffb;->bj(Lg/hed;Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v4

    goto :goto_2

    :cond_2
    iget-object v4, v7, Lg/fza;->i:Ljava/util/BitSet;

    invoke-static {v3, v4}, Lg/ffb;->bj(Lg/hed;Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v4

    :goto_2
    invoke-virtual {v0, v6}, Lg/fza;->ae(Lg/fza;)Z

    move-result v7

    if-nez v7, :cond_0

    if-ne v0, v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fza;

    if-ne v7, v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v9, v3, Lg/hed;->ad:Lg/fza;

    const/4 v10, 0x0

    if-ne v7, v9, :cond_6

    :goto_4
    const/4 v9, 0x1

    goto :goto_5

    :cond_6
    iget-object v9, v7, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v8, :cond_8

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fza;

    iget-object v9, v9, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_9

    goto :goto_3

    :cond_9
    iget-object v9, v7, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {v7}, Lg/ffb;->cf(Lg/fza;)Lg/fza;

    move-result-object v9

    goto :goto_6

    :cond_a
    move-object v9, v7

    :goto_6
    invoke-static {v6, v7}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_a

    :cond_b
    sget-object v11, Lg/csv;->LOOP_START:Lg/csv;

    iget-object v12, v7, Lg/lh;->l:Lg/sm;

    invoke-virtual {v12, v11}, Lg/sm;->g(Lg/csv;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v2, Lg/gcv;->b:Lg/gcv;

    :goto_7
    if-eqz v11, :cond_d

    iget-object v12, v11, Lg/gcv;->c:Lg/fza;

    if-ne v12, v7, :cond_c

    goto :goto_8

    :cond_c
    iget-object v11, v11, Lg/gcv;->b:Lg/gcv;

    goto :goto_7

    :cond_d
    const/4 v11, 0x0

    :goto_8
    if-eqz v11, :cond_4

    iget-object v12, v11, Lg/gcv;->d:Lg/fza;

    iget-object v13, v12, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-le v14, v8, :cond_f

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/fza;

    invoke-static {v6, v15}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-virtual {v11}, Lg/gcv;->g()Ljava/util/HashSet;

    move-result-object v10

    invoke-static {v15, v13, v12, v10}, Lg/dzh;->k(Lg/fza;Ljava/util/List;Lg/fza;Ljava/util/HashSet;)Z

    move-result v10

    if-nez v10, :cond_e

    goto :goto_a

    :cond_e
    const/4 v10, 0x0

    goto :goto_9

    :cond_f
    :goto_a
    iget-object v10, v3, Lg/hed;->ad:Lg/fza;

    if-ne v9, v10, :cond_10

    :goto_b
    const/4 v11, 0x1

    goto :goto_c

    :cond_10
    iget-object v10, v9, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_11

    goto :goto_b

    :cond_11
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v8, :cond_12

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/fza;

    iget-object v10, v10, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    goto :goto_c

    :cond_12
    const/4 v11, 0x0

    :goto_c
    if-nez v11, :cond_4

    if-ne v9, v0, :cond_13

    goto/16 :goto_3

    :cond_13
    iget-object v9, v9, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_14

    const/4 v12, 0x0

    goto :goto_f

    :cond_14
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/fza;

    invoke-static {v10}, Lg/ffb;->cf(Lg/fza;)Lg/fza;

    move-result-object v10

    iget-object v11, v3, Lg/hed;->ad:Lg/fza;

    if-ne v10, v11, :cond_16

    :goto_d
    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_e

    :cond_16
    iget-object v11, v10, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_17

    goto :goto_d

    :cond_17
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v8, :cond_18

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/fza;

    iget-object v11, v11, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    goto :goto_e

    :cond_18
    const/4 v12, 0x0

    const/4 v11, 0x0

    :goto_e
    if-nez v11, :cond_15

    if-eq v10, v0, :cond_15

    :goto_f
    iget-object v9, v7, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/fza;

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v10, v11, v8}, Lg/ffb;->ba(Lg/fza;Ljava/lang/Boolean;Z)Lg/fza;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_19
    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/fza;

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v13, v14, v8}, Lg/ffb;->ba(Lg/fza;Ljava/lang/Boolean;Z)Lg/fza;

    move-result-object v13

    iget-object v14, v7, Lg/fza;->g:Ljava/util/BitSet;

    iget v15, v13, Lg/fza;->x:I

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_19

    move-object v10, v13

    goto :goto_10

    :cond_1a
    invoke-static {v3, v10}, Lg/ghm;->c(Lg/hed;Lg/fza;)Lg/gxv;

    move-result-object v10

    if-nez v10, :cond_1b

    goto :goto_11

    :cond_1b
    invoke-static {v10}, Lg/ghm;->i(Lg/gxv;)Lg/gxv;

    move-result-object v10

    if-nez v10, :cond_1c

    goto :goto_11

    :cond_1c
    iget-object v10, v10, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v10, Lg/fon;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/fza;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11, v13, v8}, Lg/ffb;->ba(Lg/fza;Ljava/lang/Boolean;Z)Lg/fza;

    move-result-object v11

    iget-object v13, v10, Lg/fon;->b:Ljava/util/BitSet;

    iget v11, v11, Lg/fza;->x:I

    invoke-virtual {v13, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-nez v11, :cond_1d

    :goto_11
    sget-object v9, Lg/acq;->t:Lg/acq;

    iget-object v10, v7, Lg/lh;->l:Lg/sm;

    invoke-virtual {v10, v9}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/azi;

    iget-object v11, v10, Lg/azi;->a:Lg/eek;

    iget-object v13, v11, Lg/eek;->ah:Lg/hay;

    sget-object v14, Lg/hay;->BREAK:Lg/hay;

    if-ne v13, v14, :cond_1e

    sget-object v13, Lg/acq;->at:Lg/acq;

    iget-object v11, v11, Lg/lh;->l:Lg/sm;

    invoke-virtual {v11, v13}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v11

    check-cast v11, Lg/frs;

    iget-object v11, v11, Lg/frs;->b:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/gcv;

    iget-object v14, v2, Lg/gcv;->b:Lg/gcv;

    :goto_12
    if-nez v14, :cond_20

    const/4 v13, 0x0

    goto :goto_13

    :cond_20
    if-ne v14, v13, :cond_21

    const/4 v13, 0x1

    :goto_13
    if-eqz v13, :cond_1f

    iget-object v13, v10, Lg/azi;->f:Lg/fza;

    if-ne v13, v7, :cond_1f

    goto/16 :goto_3

    :cond_21
    iget-object v14, v14, Lg/gcv;->b:Lg/gcv;

    goto :goto_12

    :cond_22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_23
    new-instance v9, Lg/exw;

    invoke-direct {v9, v7, v7, v8}, Lg/exw;-><init>(Lg/fza;Lg/fza;Z)V

    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_24
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public t()Lg/elz;
    .locals 5

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lg/elz;

    iget-object v1, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v4, Lg/deh;

    invoke-direct {v0, v1, v2, v3, v4}, Lg/elz;-><init>(Ljava/lang/String;JLg/deh;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public u(Ljava/lang/String;DD)V
    .locals 9

    iget-object v0, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v8, p2, v4

    if-gez v8, :cond_0

    goto :goto_1

    :cond_0
    cmpl-double v8, v4, p2

    if-nez v8, :cond_1

    cmpg-double v4, p4, v6

    if-ltz v4, :cond_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public v(Lg/dtn;)V
    .locals 2

    iget-object v0, p0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v0, Lg/cef;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/cef;->run()V

    :cond_0
    new-instance v0, Lg/cef;

    iget-object v1, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v1, Lg/ajs;

    invoke-direct {v0, v1, p1}, Lg/cef;-><init>(Lg/ajs;Lg/dtn;)V

    iput-object v0, p0, Lg/dzh;->g:Ljava/lang/Object;

    iget-object p1, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public w(Lg/czh;Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast p1, Lg/btp;

    const/16 v0, 0x515

    invoke-static {p1, v0, p2}, Lg/fyl;->e(Lg/btp;ILjava/lang/Throwable;)V

    return-void
.end method

.method public x(Lg/eys;Lg/gcv;Lg/ftm;)Lg/fza;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v4, v1, Lg/eys;->g:Ljava/util/ArrayList;

    sget-object v6, Lg/acq;->bh:Lg/acq;

    iget-object v5, v0, Lg/dzh;->i:Ljava/lang/Object;

    move-object v7, v5

    check-cast v7, Lg/hed;

    iget-object v5, v0, Lg/dzh;->f:Ljava/lang/Object;

    move-object v8, v5

    check-cast v8, Lg/bei;

    iget-object v9, v8, Lg/bei;->b:Lg/fon;

    sget-object v10, Lg/acq;->at:Lg/acq;

    iget-object v11, v2, Lg/gcv;->c:Lg/fza;

    iget-object v12, v2, Lg/gcv;->d:Lg/fza;

    invoke-virtual {v2}, Lg/gcv;->g()Ljava/util/HashSet;

    move-result-object v5

    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v11}, Lg/ffb;->ca(Lg/fza;)Lg/fza;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v5, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v5, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v5, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/fza;

    iget-object v15, v14, Lg/lh;->l:Lg/sm;

    invoke-virtual {v15, v6}, Lg/sm;->j(Lg/fky;)Z

    move-result v15

    if-eqz v15, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v14}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v15

    if-eqz v15, :cond_3

    iget-object v15, v15, Lg/eek;->ah:Lg/hay;

    move-object/from16 v18, v5

    sget-object v5, Lg/hay;->IF:Lg/hay;

    if-eq v15, v5, :cond_5

    :goto_1
    move-object/from16 v5, v18

    goto :goto_0

    :cond_5
    iget-object v5, v14, Lg/lh;->l:Lg/sm;

    invoke-virtual {v5, v10}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6

    const/4 v15, 0x0

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v2, :cond_6

    goto :goto_1

    :cond_6
    iget-object v5, v2, Lg/gcv;->c:Lg/fza;

    if-ne v14, v12, :cond_7

    :goto_2
    move-object/from16 v19, v13

    const/4 v15, 0x1

    goto :goto_3

    :cond_7
    iget-object v15, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_9

    iget-object v15, v5, Lg/fza;->d:Ljava/util/List;

    invoke-static {v15, v14}, Lg/acw;->ak(Ljava/util/List;Ljava/lang/Comparable;)Z

    move-result v15

    if-eqz v15, :cond_9

    :cond_8
    move-object/from16 v19, v13

    const/4 v15, 0x0

    goto :goto_3

    :cond_9
    iget-object v15, v12, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    iget-object v15, v12, Lg/fza;->e:Ljava/util/List;

    invoke-static {v15, v14}, Lg/acw;->ak(Ljava/util/List;Ljava/lang/Comparable;)Z

    move-result v15

    if-eqz v15, :cond_8

    goto :goto_2

    :goto_3
    new-instance v13, Lg/cab;

    invoke-direct {v13, v1, v2, v14, v15}, Lg/cab;-><init>(Lg/eys;Lg/gcv;Lg/fza;Z)V

    move/from16 v20, v15

    if-eq v14, v5, :cond_1c

    if-nez v20, :cond_1c

    if-ne v5, v14, :cond_a

    iget-object v15, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_a

    move-object/from16 v21, v6

    move-object/from16 v22, v12

    goto :goto_6

    :cond_a
    iget-object v15, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_e

    iget-object v15, v5, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v21, v6

    const/4 v6, 0x1

    if-eq v15, v6, :cond_b

    :goto_4
    move-object/from16 v22, v12

    goto :goto_7

    :cond_b
    invoke-static {v5}, Lg/ffb;->ca(Lg/fza;)Lg/fza;

    move-result-object v15

    :goto_5
    if-eqz v15, :cond_c

    if-eq v15, v14, :cond_c

    iget-object v6, v15, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v22, v12

    const/4 v12, 0x2

    if-ge v6, v12, :cond_d

    iget-object v6, v15, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v12, 0x1

    if-ne v6, v12, :cond_d

    iget-object v6, v15, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {v15}, Lg/ffb;->ca(Lg/fza;)Lg/fza;

    move-result-object v15

    move-object/from16 v12, v22

    const/4 v6, 0x1

    goto :goto_5

    :cond_c
    move-object/from16 v22, v12

    :cond_d
    if-ne v15, v14, :cond_f

    :goto_6
    move-object/from16 v23, v8

    goto :goto_8

    :cond_e
    move-object/from16 v21, v6

    goto :goto_4

    :cond_f
    :goto_7
    iget-object v6, v14, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    iput-object v5, v13, Lg/cab;->i:Lg/fza;

    iget-object v5, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_10
    move-object/from16 v23, v8

    :goto_8
    move-object/from16 v24, v13

    goto/16 :goto_f

    :cond_11
    iget-object v6, v13, Lg/eiy;->aa:Lg/eii;

    if-nez v6, :cond_12

    goto/16 :goto_d

    :cond_12
    invoke-virtual {v6}, Lg/eii;->i()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_13

    goto :goto_d

    :cond_13
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v12, :cond_10

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v13

    move-object/from16 v13, v23

    check-cast v13, Lg/eek;

    iget-object v13, v13, Lg/eek;->ai:Lg/gks;

    if-nez v13, :cond_14

    move-object/from16 v23, v8

    goto :goto_e

    :cond_14
    move-object/from16 v23, v8

    iget-object v8, v13, Lg/gks;->a:Lg/vm;

    iget-object v8, v8, Lg/vm;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v3, 0x1

    if-le v8, v3, :cond_15

    :goto_a
    goto :goto_e

    :cond_15
    add-int/lit8 v3, v15, 0x1

    move/from16 v25, v3

    const/4 v8, 0x0

    :goto_b
    if-ge v3, v12, :cond_18

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move/from16 v27, v3

    move-object/from16 v3, v26

    check-cast v3, Lg/eek;

    iget-object v3, v3, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v26

    if-nez v26, :cond_16

    const/4 v3, 0x0

    goto :goto_c

    :cond_16
    invoke-static {v3, v13}, Lg/ack;->k(Ljava/util/List;Lg/gks;)Z

    move-result v3

    :goto_c
    if-eqz v3, :cond_17

    const/4 v8, 0x1

    :cond_17
    add-int/lit8 v3, v27, 0x1

    goto :goto_b

    :cond_18
    if-nez v8, :cond_19

    invoke-static {v6, v13}, Lg/ack;->k(Ljava/util/List;Lg/gks;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v8, 0x1

    :cond_19
    if-nez v8, :cond_1a

    goto :goto_a

    :cond_1a
    move-object/from16 v8, v23

    move-object/from16 v13, v24

    move/from16 v15, v25

    goto :goto_9

    :cond_1b
    :goto_d
    move-object/from16 v23, v8

    move-object/from16 v24, v13

    :goto_e
    const/4 v3, 0x0

    goto :goto_10

    :cond_1c
    move-object/from16 v21, v6

    move-object/from16 v23, v8

    move-object/from16 v22, v12

    goto :goto_8

    :goto_f
    const/4 v3, 0x1

    :goto_10
    if-eqz v3, :cond_1f

    invoke-virtual {v7, v14}, Lg/hed;->bj(Lg/fza;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v12, 0x2

    if-lt v5, v12, :cond_1f

    iget-object v5, v14, Lg/fza;->z:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fza;

    invoke-virtual {v7, v6}, Lg/hed;->bj(Lg/fza;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1d

    const/4 v5, 0x0

    goto :goto_11

    :cond_1e
    const/4 v5, 0x1

    :goto_11
    if-eqz v5, :cond_1f

    const/4 v3, 0x0

    :cond_1f
    if-eqz v3, :cond_23

    invoke-virtual {v2}, Lg/gcv;->f()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v12, 0x2

    if-ge v6, v12, :cond_20

    :goto_12
    const/4 v5, 0x1

    goto :goto_13

    :cond_20
    invoke-static {v5}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lg/dxx;

    const/4 v8, 0x3

    invoke-direct {v6, v14, v8}, Lg/dxx;-><init>(Lg/fza;I)V

    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Lj$/util/Optional;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_22

    invoke-virtual {v5}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/exw;

    iget-object v5, v5, Lg/exw;->b:Lg/fza;

    invoke-static {v5}, Lg/ffb;->cf(Lg/fza;)Lg/fza;

    move-result-object v5

    iget-object v6, v5, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v12, 0x1

    if-ne v8, v12, :cond_21

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/eek;

    iget-object v6, v6, Lg/eek;->ah:Lg/hay;

    sget-object v8, Lg/hay;->RETURN:Lg/hay;

    if-ne v6, v8, :cond_21

    goto :goto_12

    :cond_21
    invoke-virtual {v0, v5, v2}, Lg/dzh;->s(Lg/fza;Lg/gcv;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_13
    if-nez v5, :cond_23

    const/4 v3, 0x0

    goto :goto_14

    :cond_22
    new-instance v1, Lg/gck;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not found exit edge by exit block: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    :goto_14
    if-eqz v3, :cond_24

    move-object/from16 v13, v24

    goto :goto_15

    :cond_24
    move-object/from16 v5, v18

    move-object/from16 v13, v19

    move-object/from16 v6, v21

    move-object/from16 v12, v22

    move-object/from16 v8, v23

    goto/16 :goto_0

    :cond_25
    move-object/from16 v21, v6

    move-object/from16 v23, v8

    move-object/from16 v22, v12

    move-object/from16 v19, v13

    const/4 v13, 0x0

    :goto_15
    if-nez v13, :cond_38

    new-instance v6, Lg/cab;

    const/4 v8, 0x0

    const/4 v15, 0x0

    invoke-direct {v6, v1, v2, v8, v15}, Lg/cab;-><init>(Lg/eys;Lg/gcv;Lg/fza;Z)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v10}, Lg/lh;->u(Lg/fky;)V

    iget-object v1, v9, Lg/fon;->b:Ljava/util/BitSet;

    iget v3, v11, Lg/fza;->x:I

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->clear(I)V

    move-object/from16 v1, p3

    invoke-virtual {v1, v6}, Lg/ftm;->e(Lg/bjk;)V

    invoke-virtual {v2}, Lg/gcv;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_28

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lg/exw;

    iget-object v3, v5, Lg/exw;->b:Lg/fza;

    iget-object v4, v5, Lg/exw;->a:Lg/fza;

    invoke-virtual/range {v0 .. v5}, Lg/dzh;->ab(Lg/ftm;Lg/gcv;Lg/fza;Lg/fza;Lg/exw;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {v3}, Lg/ffb;->ca(Lg/fza;)Lg/fza;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-virtual {v1, v3}, Lg/ftm;->c(Lg/fza;)V

    goto :goto_16

    :cond_26
    move-object v3, v8

    :cond_27
    :goto_16
    move-object/from16 v12, v23

    goto/16 :goto_1a

    :cond_28
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/exw;

    iget-object v4, v4, Lg/exw;->b:Lg/fza;

    iget-object v5, v4, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v12, 0x1

    if-le v5, v12, :cond_2a

    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iget v9, v4, Lg/fza;->x:I

    invoke-virtual {v5, v9}, Ljava/util/BitSet;->set(I)V

    goto :goto_17

    :cond_2a
    iget-object v5, v4, Lg/fza;->i:Ljava/util/BitSet;

    :goto_17
    invoke-static {v7, v5}, Lg/ffb;->bj(Lg/hed;Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v5

    iget-object v9, v7, Lg/hed;->ad:Lg/fza;

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    invoke-interface {v5, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/fza;

    invoke-static {v4, v9}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result v13

    if-eqz v13, :cond_2d

    invoke-virtual {v0, v9, v2}, Lg/dzh;->s(Lg/fza;Lg/gcv;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_2c

    move-object v3, v9

    goto :goto_18

    :cond_2d
    sget-object v13, Lg/csv;->LOOP_START:Lg/csv;

    iget-object v9, v9, Lg/lh;->l:Lg/sm;

    invoke-virtual {v9, v13}, Lg/sm;->g(Lg/csv;)Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-virtual {v0, v4, v2}, Lg/dzh;->s(Lg/fza;Lg/gcv;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2c

    move-object v3, v4

    goto :goto_18

    :cond_2e
    move-object v3, v8

    :goto_18
    invoke-virtual {v1, v3}, Lg/ftm;->c(Lg/fza;)V

    if-eqz v3, :cond_27

    iget-object v4, v7, Lg/hed;->ad:Lg/fza;

    if-eq v3, v4, :cond_27

    iget-object v4, v3, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lg/fza;

    invoke-virtual {v2}, Lg/gcv;->f()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_30
    :goto_19
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/exw;

    iget-object v5, v4, Lg/exw;->b:Lg/fza;

    invoke-static {v5, v12}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result v14

    if-nez v14, :cond_31

    if-ne v5, v3, :cond_30

    :cond_31
    iget-object v4, v4, Lg/exw;->a:Lg/fza;

    new-instance v5, Lg/exw;

    const/4 v15, 0x0

    invoke-direct {v5, v12, v3, v15}, Lg/exw;-><init>(Lg/fza;Lg/fza;Z)V

    invoke-virtual/range {v0 .. v5}, Lg/dzh;->ab(Lg/ftm;Lg/gcv;Lg/fza;Lg/fza;Lg/exw;)Z

    goto :goto_19

    :goto_1a
    invoke-virtual {v12, v11}, Lg/bei;->h(Lg/fza;)Lg/eys;

    move-result-object v4

    move-object/from16 v14, v22

    invoke-static {v14, v4}, Lg/gs;->az(Lg/fza;Lg/amj;)Z

    move-result v5

    if-nez v5, :cond_35

    iget-object v5, v14, Lg/lh;->l:Lg/sm;

    move-object/from16 v9, v21

    invoke-virtual {v5, v9}, Lg/sm;->j(Lg/fky;)Z

    move-result v5

    if-nez v5, :cond_35

    iget-object v5, v7, Lg/hed;->ap:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_32

    goto :goto_1b

    :cond_32
    iget-object v5, v7, Lg/hed;->ap:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/aea;

    iget-object v7, v7, Lg/aea;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    goto :goto_1c

    :cond_34
    :goto_1b
    iget-object v5, v4, Lg/eys;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    :goto_1c
    iput-object v4, v6, Lg/cab;->y:Lg/eys;

    if-nez v3, :cond_37

    invoke-static {v14}, Lg/ffb;->ca(Lg/fza;)Lg/fza;

    move-result-object v3

    invoke-static {v3, v4}, Lg/gs;->az(Lg/fza;Lg/amj;)Z

    move-result v4

    if-eqz v4, :cond_36

    move-object v15, v8

    goto :goto_1d

    :cond_36
    move-object v15, v3

    :goto_1d
    move-object v3, v15

    :cond_37
    invoke-virtual {v1}, Lg/ftm;->d()V

    invoke-virtual {v11, v10, v2}, Lg/lh;->o(Lg/acq;Ljava/lang/Object;)V

    invoke-static {v2}, Lg/dzh;->l(Lg/gcv;)V

    return-object v3

    :cond_38
    move-object/from16 v1, p3

    move-object/from16 v14, v22

    move-object/from16 v12, v23

    const/4 v8, 0x0

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lg/ftm;->b:Lg/bnp;

    iget-object v6, v3, Lg/bnp;->b:Lg/bjk;

    invoke-virtual {v1, v13}, Lg/ftm;->e(Lg/bjk;)V

    iget-object v3, v0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v3, Lg/ghm;

    iget-object v3, v3, Lg/ghm;->a:Lg/hed;

    iget-object v4, v13, Lg/cab;->z:Lg/fza;

    invoke-static {v3, v4}, Lg/ghm;->c(Lg/hed;Lg/fza;)Lg/gxv;

    move-result-object v3

    invoke-static {v3}, Lg/ghm;->i(Lg/gxv;)Lg/gxv;

    move-result-object v4

    if-eqz v4, :cond_39

    move-object v3, v4

    :cond_39
    invoke-static {v3}, Lg/ghm;->g(Lg/gxv;)V

    iget-object v4, v2, Lg/gcv;->e:Ljava/util/HashSet;

    iget-object v5, v3, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v5, Lg/fza;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-static {v3}, Lg/gxv;->j(Lg/gxv;)Lg/gxv;

    move-result-object v3

    :cond_3a
    move-object v7, v3

    iget-object v3, v7, Lg/gxv;->e:Ljava/lang/Object;

    move-object v15, v3

    check-cast v15, Lg/fza;

    iget-object v3, v7, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v3, Lg/fza;

    iget-object v4, v7, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v4, Lg/fon;

    iget-object v5, v7, Lg/gxv;->h:Ljava/lang/Object;

    check-cast v5, Lg/eii;

    iput-object v5, v13, Lg/eiy;->aa:Lg/eii;

    invoke-virtual {v4}, Lg/fon;->e()Ljava/util/List;

    move-result-object v5

    iput-object v5, v13, Lg/eiy;->ab:Ljava/util/List;

    new-instance v5, Lg/esk;

    const/16 v8, 0x11

    invoke-direct {v5, v8}, Lg/esk;-><init>(I)V

    invoke-virtual {v4, v5}, Lg/fon;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v4}, Lg/fon;->e()Ljava/util/List;

    move-result-object v4

    move-object/from16 v5, v19

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3e

    iget-object v8, v13, Lg/eiy;->ab:Ljava/util/List;

    invoke-virtual {v2}, Lg/gcv;->f()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/exw;

    iget-object v0, v5, Lg/exw;->a:Lg/fza;

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, v5, Lg/exw;->b:Lg/fza;

    invoke-static {v0}, Lg/ffb;->cf(Lg/fza;)Lg/fza;

    move-result-object v0

    iget-object v4, v0, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    invoke-virtual {v2}, Lg/gcv;->f()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_20
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/exw;

    iget-object v1, v5, Lg/exw;->a:Lg/fza;

    iget-object v2, v5, Lg/exw;->b:Lg/fza;

    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-static {v2, v4}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result v1

    if-nez v1, :cond_3c

    if-ne v2, v0, :cond_3b

    goto :goto_21

    :cond_3b
    move-object/from16 v2, p2

    move-object/from16 v1, p3

    move-object/from16 v19, v4

    move-object/from16 v17, v7

    const/16 v20, 0x0

    move-object v7, v3

    move-object v3, v0

    goto :goto_22

    :cond_3c
    :goto_21
    iget-object v1, v5, Lg/exw;->a:Lg/fza;

    new-instance v5, Lg/exw;

    const/4 v2, 0x0

    invoke-direct {v5, v4, v0, v2}, Lg/exw;-><init>(Lg/fza;Lg/fza;Z)V

    move-object/from16 v2, p2

    move-object/from16 v19, v4

    move-object/from16 v17, v7

    const/16 v20, 0x0

    move-object v4, v1

    move-object v7, v3

    move-object/from16 v1, p3

    move-object v3, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lg/dzh;->ab(Lg/ftm;Lg/gcv;Lg/fza;Lg/fza;Lg/exw;)Z

    :goto_22
    move-object v0, v3

    move-object v3, v7

    move-object/from16 v7, v17

    move-object/from16 v4, v19

    goto :goto_20

    :cond_3d
    move-object/from16 v17, v7

    const/16 v20, 0x0

    move-object v7, v3

    move-object/from16 v7, v17

    goto :goto_1f

    :cond_3e
    move-object/from16 v17, v7

    move-object v7, v3

    goto :goto_23

    :cond_3f
    move-object/from16 v17, v7

    const/16 v20, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_1e

    :goto_23
    iget-boolean v0, v13, Lg/cab;->g:Z

    if-eqz v0, :cond_42

    if-eq v7, v14, :cond_41

    if-ne v7, v11, :cond_40

    goto :goto_24

    :cond_40
    move-object v15, v7

    :cond_41
    :goto_24
    invoke-static {v15}, Lg/ffb;->cf(Lg/fza;)Lg/fza;

    move-result-object v0

    invoke-virtual {v11, v10}, Lg/lh;->u(Lg/fky;)V

    sget-object v3, Lg/csv;->ADDED_TO_REGION:Lg/csv;

    invoke-virtual {v14, v3}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v1, v14}, Lg/ftm;->c(Lg/fza;)V

    iget-object v4, v9, Lg/fon;->b:Ljava/util/BitSet;

    iget v5, v11, Lg/fza;->x:I

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->clear(I)V

    invoke-virtual {v12, v11}, Lg/bei;->h(Lg/fza;)Lg/eys;

    move-result-object v4

    iput-object v4, v13, Lg/cab;->y:Lg/eys;

    invoke-virtual {v11, v10, v2}, Lg/lh;->o(Lg/acq;Ljava/lang/Object;)V

    invoke-virtual {v14, v3}, Lg/lh;->v(Lg/csv;)V

    goto/16 :goto_27

    :cond_42
    if-eqz v6, :cond_43

    if-eqz v15, :cond_43

    sget-object v0, Lg/csv;->LOOP_START:Lg/csv;

    iget-object v3, v15, Lg/lh;->l:Lg/sm;

    invoke-virtual {v3, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, v15, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, v10}, Lg/sm;->e(Lg/acq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    invoke-static {v15, v6}, Lg/gs;->az(Lg/fza;Lg/amj;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v15, 0x0

    :cond_43
    invoke-virtual {v1, v15}, Lg/ftm;->c(Lg/fza;)V

    invoke-static {v7, v11}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    new-instance v0, Lg/eys;

    invoke-direct {v0, v13}, Lg/eys;-><init>(Lg/cfm;)V

    goto :goto_25

    :cond_44
    invoke-virtual {v12, v7}, Lg/bei;->h(Lg/fza;)Lg/eys;

    move-result-object v0

    :goto_25
    invoke-virtual/range {v17 .. v17}, Lg/gxv;->l()Lg/fza;

    move-result-object v3

    if-eq v11, v3, :cond_46

    invoke-static {v11, v3}, Lg/ffb;->x(Lg/fza;Lg/fza;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_45
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fza;

    iget-object v5, v4, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_45

    sget-object v5, Lg/csv;->ADDED_TO_REGION:Lg/csv;

    iget-object v6, v4, Lg/lh;->l:Lg/sm;

    invoke-virtual {v6, v5}, Lg/sm;->g(Lg/csv;)Z

    move-result v5

    if-nez v5, :cond_45

    invoke-static {v4, v0}, Lg/gs;->az(Lg/fza;Lg/amj;)Z

    move-result v5

    if-nez v5, :cond_45

    invoke-virtual {v0, v4}, Lg/eys;->h(Lg/amj;)V

    goto :goto_26

    :cond_46
    iput-object v0, v13, Lg/cab;->y:Lg/eys;

    move-object v0, v15

    :goto_27
    invoke-virtual {v1}, Lg/ftm;->d()V

    invoke-static {v2}, Lg/dzh;->l(Lg/gcv;)V

    return-object v0
.end method

.method public y(ILg/gri;Lg/brh;)Z
    .locals 6

    iget-object v0, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v0, Lg/dcu;

    iget-object v1, p3, Lg/brh;->ch:[Lg/fol;

    iget-object v2, p3, Lg/brh;->cm:[I

    const/4 v3, 0x0

    aget-object v4, v1, v3

    iput-object v4, v0, Lg/dcu;->d:Lg/fol;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    iput-object v1, v0, Lg/dcu;->g:Lg/fol;

    invoke-virtual {p3}, Lg/brh;->eb()I

    move-result v1

    iput v1, v0, Lg/dcu;->i:I

    invoke-virtual {p3}, Lg/brh;->di()I

    move-result v1

    iput v1, v0, Lg/dcu;->b:I

    iput-boolean v3, v0, Lg/dcu;->f:Z

    iput p1, v0, Lg/dcu;->h:I

    iget-object p1, v0, Lg/dcu;->d:Lg/fol;

    sget-object v1, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v5, v0, Lg/dcu;->g:Lg/fol;

    if-ne v5, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v5, 0x0

    if-eqz p1, :cond_2

    iget p1, p3, Lg/brh;->bq:F

    cmpl-float p1, p1, v5

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    iget v1, p3, Lg/brh;->bq:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    const/4 v5, 0x4

    if-eqz p1, :cond_4

    aget p1, v2, v3

    if-ne p1, v5, :cond_4

    sget-object p1, Lg/fol;->FIXED:Lg/fol;

    iput-object p1, v0, Lg/dcu;->d:Lg/fol;

    :cond_4
    if-eqz v1, :cond_5

    aget p1, v2, v4

    if-ne p1, v5, :cond_5

    sget-object p1, Lg/fol;->FIXED:Lg/fol;

    iput-object p1, v0, Lg/dcu;->g:Lg/fol;

    :cond_5
    invoke-virtual {p2, p3, v0}, Lg/gri;->j(Lg/brh;Lg/dcu;)V

    iget p1, v0, Lg/dcu;->c:I

    invoke-virtual {p3, p1}, Lg/brh;->ed(I)V

    iget p1, v0, Lg/dcu;->e:I

    invoke-virtual {p3, p1}, Lg/brh;->dj(I)V

    iget-boolean p1, v0, Lg/dcu;->a:Z

    iput-boolean p1, p3, Lg/brh;->cx:Z

    iget p1, v0, Lg/dcu;->j:I

    invoke-virtual {p3, p1}, Lg/brh;->ee(I)V

    iput v3, v0, Lg/dcu;->h:I

    iget-boolean p1, v0, Lg/dcu;->f:Z

    return p1
.end method

.method public z(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lg/cfl;->f()Lg/cfl;

    move-result-object v0

    iget-object v1, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lg/cfl;->c:Lg/ezw;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p1, v3}, Lg/ezw;->x(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public zza()I
    .locals 1

    iget-object v0, p0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v0, [J

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzbkq;)Lcom/google/android/gms/internal/ads/zzdtv;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lg/dzh;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public zza()V
    .locals 4

    const-string v0, "loadNewJavascriptEngine (failure): Trying to acquire lock"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbnu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbnu;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "loadNewJavascriptEngine (failure): Lock acquired"

    invoke-static {v1}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbnu;

    const/4 v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzbnu;->a:I

    const-string v1, "Failed loading new engine. Marking new engine destroyable."

    invoke-static {v1}, Lg/agd;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbnt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzb()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeg;->zzd:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbnu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbnu;->c:Lcom/google/android/gms/internal/ads/zzfko;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfka;

    const-string v3, "Failed loading new engine"

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzfka;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfka;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzfka;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfka;->zzm()Lcom/google/android/gms/internal/ads/zzfke;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfko;->zzb(Lcom/google/android/gms/internal/ads/zzfke;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "loadNewJavascriptEngine (failure): Lock released"

    invoke-static {v0}, Lg/agd;->e(Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public zzb(I)J
    .locals 4

    iget-object v0, p0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v0, [J

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    array-length v3, v0

    if-ge p1, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public bridge synthetic zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdtv;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lg/dzh;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public zzc()Lcom/google/android/gms/internal/ads/zzdtw;
    .locals 4

    iget-object v0, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbkq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbkq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lg/gud;

    iget-object v1, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v1, Lg/bxr;

    iget-object v2, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbkq;

    invoke-direct {v0, v1, v2, v3}, Lg/gud;-><init>(Lg/bxr;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbkq;)V

    return-object v0
.end method

.method public zzc(J)Ljava/util/List;
    .locals 10

    iget-object v0, p0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v5, [J

    add-int v6, v4, v4

    aget-wide v7, v5, v6

    cmp-long v9, v7, p1

    if-gtz v9, :cond_1

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v5, v6

    cmp-long v5, p1, v6

    if-gez v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzalr;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzalr;->zza:Lcom/google/android/gms/internal/ads/zzct;

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzct;->zze:F

    const v8, -0x800001

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzamb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzamb;-><init>()V

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzalr;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzalr;->zza:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzct;->zzb()Lcom/google/android/gms/internal/ads/zzcr;

    move-result-object p1

    rsub-int/lit8 p2, v3, -0x1

    int-to-float p2, p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcr;->zze(FI)Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcr;->zzp()Lcom/google/android/gms/internal/ads/zzct;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-object v1
.end method

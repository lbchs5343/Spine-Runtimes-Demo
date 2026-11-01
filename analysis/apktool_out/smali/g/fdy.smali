.class public final Lg/fdy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dad;
.implements Lg/dds;
.implements Lg/ghx;
.implements Lcom/google/android/gms/internal/ads/zzacb;
.implements Lcom/google/android/gms/internal/ads/zzaqk;
.implements Lg/ehn;
.implements Lg/bjb;
.implements Lg/gon;
.implements Lcom/google/android/gms/internal/ads/zzgee;


# instance fields
.field public a:Ljava/lang/Object;

.field public final synthetic b:I

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lg/fdy;->b:I

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lg/fdy;->c:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lg/fdy;->a:Ljava/lang/Object;

    return-void

    :sswitch_0
    sget-object p1, Lg/awe;->a:Lg/awe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    iput-object p1, p0, Lg/fdy;->a:Ljava/lang/Object;

    return-void

    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/fdy;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/fdy;->a:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lg/fdy;->b:I

    iput-object p2, p0, Lg/fdy;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/fdy;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lg/fdy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x15

    iput v0, p0, Lg/fdy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fdy;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lg/fdy;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;I)V
    .locals 4

    iput p2, p0, Lg/fdy;->b:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fdy;->c:Ljava/lang/Object;

    new-instance p2, Lg/fpo;

    invoke-direct {p2, p1}, Lg/fpo;-><init>(Landroid/widget/EditText;)V

    iput-object p2, p0, Lg/fdy;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget-object p2, Lg/ewe;->b:Lg/ewe;

    if-nez p2, :cond_1

    sget-object p2, Lg/ewe;->a:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    sget-object v0, Lg/ewe;->b:Lg/ewe;

    if-nez v0, :cond_0

    new-instance v0, Lg/ewe;

    invoke-direct {v0}, Landroid/text/Editable$Factory;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "android.text.DynamicLayout$ChangeWatcher"

    const-class v2, Lg/ewe;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lg/ewe;->c:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    sput-object v0, Lg/ewe;->b:Lg/ewe;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_1
    :goto_2
    sget-object p2, Lg/ewe;->b:Lg/ewe;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fdy;->c:Ljava/lang/Object;

    new-instance p2, Lg/dcq;

    invoke-direct {p2, p1}, Lg/dcq;-><init>(Landroid/widget/EditText;)V

    iput-object p2, p0, Lg/fdy;->a:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/fdy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fdy;->c:Ljava/lang/Object;

    new-instance v0, Lg/sw;

    invoke-direct {v0, p1}, Lg/sw;-><init>(Lg/gac;)V

    iput-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzek;)V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, Lg/fdy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fdy;->c:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object p1, p0, Lg/fdy;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/cdp;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Lg/fdy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fdy;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/dur;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lg/fdy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fdy;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/hed;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lg/fdy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fdy;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/fdy;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lg/fdy;->b:I

    iput-object p1, p0, Lg/fdy;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/fdy;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ao(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static d(IILjava/util/List;)Ljava/util/ArrayList;
    .locals 3

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lg/gzl;

    invoke-direct {v0}, Lg/gzl;-><init>()V

    iput p0, v0, Lg/gzl;->q:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gzl;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static e(ILjava/util/ArrayList;Landroid/util/SparseIntArray;)[I
    .locals 3

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    new-array p0, p0, [I

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dpl;

    iget v2, v1, Lg/dpl;->a:I

    aput v2, p0, v0

    iget v1, v1, Lg/dpl;->b:I

    invoke-virtual {p2, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static f(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/gth;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-interface {v0}, Lg/gth;->mn()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    invoke-interface {v0}, Lg/gth;->mn()I

    move-result v1

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lg/gth;->kk()I

    move-result v3

    if-le v1, v3, :cond_1

    invoke-interface {v0}, Lg/gth;->kk()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Lg/gth;->ia()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-interface {v0}, Lg/gth;->ia()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lg/gth;->o()I

    move-result v5

    if-le v2, v5, :cond_3

    invoke-interface {v0}, Lg/gth;->o()I

    move-result v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    if-eqz v4, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    :cond_4
    return-void
.end method


# virtual methods
.method public aa(Landroid/view/View;Lg/gzl;IIII)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/gth;

    iget-object v1, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v1, Lg/cdp;

    invoke-virtual {v1}, Lg/cdp;->getAlignItems()I

    move-result v2

    invoke-interface {v0}, Lg/gth;->iw()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-interface {v0}, Lg/gth;->iw()I

    move-result v2

    :cond_0
    iget v3, p2, Lg/gzl;->q:I

    const/4 v4, 0x2

    if-eqz v2, :cond_7

    const/4 v5, 0x1

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 p2, 0x4

    if-eq v2, p2, :cond_7

    return-void

    :cond_1
    invoke-virtual {v1}, Lg/cdp;->getFlexWrap()I

    move-result v1

    if-eq v1, v4, :cond_2

    iget p2, p2, Lg/gzl;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lg/gth;->q()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p4, p2

    add-int/2addr p6, p2

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_2
    iget p2, p2, Lg/gzl;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    add-int/2addr v1, p2

    invoke-interface {v0}, Lg/gth;->f()I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p4, p2

    sub-int/2addr p6, p2

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v3, p2

    invoke-interface {v0}, Lg/gth;->q()I

    move-result p2

    add-int/2addr p2, v3

    invoke-interface {v0}, Lg/gth;->f()I

    move-result p6

    sub-int/2addr p2, p6

    div-int/2addr p2, v4

    invoke-virtual {v1}, Lg/cdp;->getFlexWrap()I

    move-result p6

    if-eq p6, v4, :cond_4

    add-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p4

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_4
    sub-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p4

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_5
    invoke-virtual {v1}, Lg/cdp;->getFlexWrap()I

    move-result p2

    if-eq p2, v4, :cond_6

    add-int/2addr p4, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int p2, p4, p2

    invoke-interface {v0}, Lg/gth;->f()I

    move-result p6

    sub-int/2addr p2, p6

    invoke-interface {v0}, Lg/gth;->f()I

    move-result p6

    sub-int/2addr p4, p6

    invoke-virtual {p1, p3, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    sub-int/2addr p4, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p4

    invoke-interface {v0}, Lg/gth;->q()I

    move-result p4

    add-int/2addr p4, p2

    sub-int/2addr p6, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p6

    invoke-interface {v0}, Lg/gth;->q()I

    move-result p6

    add-int/2addr p6, p2

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_7
    invoke-virtual {v1}, Lg/cdp;->getFlexWrap()I

    move-result p2

    if-eq p2, v4, :cond_8

    invoke-interface {v0}, Lg/gth;->q()I

    move-result p2

    add-int/2addr p2, p4

    invoke-interface {v0}, Lg/gth;->q()I

    move-result p4

    add-int/2addr p4, p6

    invoke-virtual {p1, p3, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_8
    invoke-interface {v0}, Lg/gth;->f()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-interface {v0}, Lg/gth;->f()I

    move-result p2

    sub-int/2addr p6, p2

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public ab(IILg/gzl;IIZ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    iget-object v1, v0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v1, Lg/cdp;

    iget v2, v3, Lg/gzl;->n:F

    const/4 v5, 0x0

    cmpg-float v6, v2, v5

    if-lez v6, :cond_10

    iget v6, v3, Lg/gzl;->g:I

    if-ge v4, v6, :cond_0

    goto/16 :goto_a

    :cond_0
    sub-int v7, v4, v6

    int-to-float v7, v7

    div-float/2addr v7, v2

    iget v2, v3, Lg/gzl;->i:I

    add-int v2, p5, v2

    iput v2, v3, Lg/gzl;->g:I

    if-nez p6, :cond_1

    const/high16 v2, -0x80000000

    iput v2, v3, Lg/gzl;->q:I

    :cond_1
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v11, v3, Lg/gzl;->a:I

    if-ge v2, v11, :cond_f

    iget v11, v3, Lg/gzl;->c:I

    add-int/2addr v11, v2

    invoke-virtual {v1, v11}, Lg/cdp;->t(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_e

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lg/gth;

    invoke-virtual {v1}, Lg/cdp;->getFlexDirection()I

    move-result v14

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/16 v20, 0x0

    const/4 v5, 0x1

    if-eqz v14, :cond_2

    if-ne v14, v5, :cond_3

    :cond_2
    move/from16 v15, p1

    const/16 p6, 0x1

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    const/16 p6, 0x1

    iget-object v5, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v5, [Z

    aget-boolean v5, v5, v11

    if-nez v5, :cond_8

    invoke-interface {v13}, Lg/gth;->p()F

    move-result v5

    cmpl-float v5, v5, v20

    if-lez v5, :cond_8

    int-to-float v5, v14

    invoke-interface {v13}, Lg/gth;->p()F

    move-result v14

    mul-float v14, v14, v7

    add-float/2addr v14, v5

    iget v5, v3, Lg/gzl;->a:I

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_4

    add-float/2addr v14, v10

    const/4 v10, 0x0

    :cond_4
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-interface {v13}, Lg/gth;->o()I

    move-result v15

    if-le v5, v15, :cond_5

    invoke-interface {v13}, Lg/gth;->o()I

    move-result v5

    iget-object v8, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v8, [Z

    aput-boolean p6, v8, v11

    iget v8, v3, Lg/gzl;->n:F

    invoke-interface {v13}, Lg/gth;->p()F

    move-result v11

    sub-float/2addr v8, v11

    iput v8, v3, Lg/gzl;->n:F

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    int-to-float v11, v5

    sub-float/2addr v14, v11

    add-float/2addr v14, v10

    float-to-double v10, v14

    cmpl-double v15, v10, v18

    if-lez v15, :cond_6

    add-int/lit8 v5, v5, 0x1

    sub-double v10, v10, v18

    :goto_1
    double-to-float v10, v10

    goto :goto_2

    :cond_6
    cmpg-double v15, v10, v16

    if-gez v15, :cond_7

    add-int/lit8 v5, v5, -0x1

    add-double v10, v10, v18

    goto :goto_1

    :cond_7
    move v10, v14

    :goto_2
    iget v11, v3, Lg/gzl;->k:I

    move/from16 v15, p1

    invoke-virtual {v0, v15, v13, v11}, Lg/fdy;->ad(ILg/gth;I)I

    move-result v11

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v12, v11, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    goto :goto_3

    :cond_8
    move/from16 v15, p1

    :goto_3
    invoke-interface {v13}, Lg/gth;->mp()I

    move-result v5

    add-int v5, v5, v21

    invoke-interface {v13}, Lg/gth;->jy()I

    move-result v11

    add-int/2addr v11, v5

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v9, v3, Lg/gzl;->g:I

    invoke-interface {v13}, Lg/gth;->q()I

    move-result v11

    add-int/2addr v11, v14

    invoke-interface {v13}, Lg/gth;->f()I

    move-result v12

    add-int/2addr v12, v11

    add-int/2addr v12, v9

    iput v12, v3, Lg/gzl;->g:I

    move/from16 v11, p2

    move-object/from16 v21, v1

    goto/16 :goto_8

    :goto_4
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v21, v1

    iget-object v1, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v1, [Z

    aget-boolean v1, v1, v11

    if-nez v1, :cond_d

    invoke-interface {v13}, Lg/gth;->p()F

    move-result v1

    cmpl-float v1, v1, v20

    if-lez v1, :cond_d

    int-to-float v1, v5

    invoke-interface {v13}, Lg/gth;->p()F

    move-result v5

    mul-float v5, v5, v7

    add-float/2addr v5, v1

    iget v1, v3, Lg/gzl;->a:I

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_9

    add-float/2addr v5, v10

    const/4 v10, 0x0

    :cond_9
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-interface {v13}, Lg/gth;->kk()I

    move-result v14

    if-le v1, v14, :cond_a

    invoke-interface {v13}, Lg/gth;->kk()I

    move-result v1

    iget-object v5, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v5, [Z

    aput-boolean p6, v5, v11

    iget v5, v3, Lg/gzl;->n:F

    invoke-interface {v13}, Lg/gth;->p()F

    move-result v8

    sub-float/2addr v5, v8

    iput v5, v3, Lg/gzl;->n:F

    const/4 v8, 0x1

    goto :goto_6

    :cond_a
    int-to-float v11, v1

    sub-float/2addr v5, v11

    add-float/2addr v5, v10

    float-to-double v10, v5

    cmpl-double v14, v10, v18

    if-lez v14, :cond_c

    add-int/lit8 v1, v1, 0x1

    sub-double v10, v10, v18

    :goto_5
    double-to-float v5, v10

    :cond_b
    move v10, v5

    goto :goto_6

    :cond_c
    cmpg-double v14, v10, v16

    if-gez v14, :cond_b

    add-int/lit8 v1, v1, -0x1

    add-double v10, v10, v18

    goto :goto_5

    :goto_6
    iget v5, v3, Lg/gzl;->k:I

    move/from16 v11, p2

    invoke-virtual {v0, v11, v13, v5}, Lg/fdy;->y(ILg/gth;I)I

    move-result v5

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v12, v1, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    goto :goto_7

    :cond_d
    move/from16 v11, p2

    :goto_7
    invoke-interface {v13}, Lg/gth;->q()I

    move-result v1

    add-int/2addr v1, v14

    invoke-interface {v13}, Lg/gth;->f()I

    move-result v12

    add-int/2addr v12, v1

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v9, v3, Lg/gzl;->g:I

    invoke-interface {v13}, Lg/gth;->mp()I

    move-result v12

    add-int/2addr v12, v5

    invoke-interface {v13}, Lg/gth;->jy()I

    move-result v5

    add-int/2addr v5, v12

    add-int/2addr v5, v9

    iput v5, v3, Lg/gzl;->g:I

    move v5, v1

    :goto_8
    iget v1, v3, Lg/gzl;->q:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lg/gzl;->q:I

    move v9, v5

    goto :goto_9

    :cond_e
    move/from16 v15, p1

    move/from16 v11, p2

    move-object/from16 v21, v1

    const/16 v20, 0x0

    :goto_9
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v21

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_f
    move/from16 v15, p1

    move/from16 v11, p2

    if-eqz v8, :cond_10

    iget v1, v3, Lg/gzl;->g:I

    if-eq v6, v1, :cond_10

    const/4 v6, 0x1

    move/from16 v5, p5

    move v2, v11

    move v1, v15

    invoke-virtual/range {v0 .. v6}, Lg/fdy;->ab(IILg/gzl;IIZ)V

    :cond_10
    :goto_a
    return-void
.end method

.method public ac(Lg/ezz;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbqz;

    invoke-virtual {p1}, Lg/ezz;->h()Lg/abz;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbqz;->zzf(Lg/abz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public ad(ILg/gth;I)I
    .locals 2

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Lg/cdp;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-interface {p2}, Lg/gth;->mp()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {p2}, Lg/gth;->jy()I

    move-result v0

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    invoke-interface {p2}, Lg/gth;->dq()I

    move-result p3

    invoke-static {p1, v0, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-interface {p2}, Lg/gth;->kk()I

    move-result v0

    if-le p3, v0, :cond_0

    invoke-interface {p2}, Lg/gth;->kk()I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p2}, Lg/gth;->mn()I

    move-result v0

    if-ge p3, v0, :cond_1

    invoke-interface {p2}, Lg/gth;->mn()I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    return p1
.end method

.method public ae(I)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v2, Lg/cdp;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lg/gth;

    new-instance v3, Lg/dpl;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2}, Lg/gth;->ox()I

    move-result v2

    iput v2, v3, Lg/dpl;->b:I

    iput v1, v3, Lg/dpl;->a:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public af(III)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v1, Lg/cdp;

    invoke-virtual {v1}, Lg/cdp;->getFlexDirection()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid flex direction: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    goto :goto_1

    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    :goto_1
    invoke-virtual {v1}, Lg/cdp;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v7

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v2, v8, :cond_13

    invoke-virtual {v1}, Lg/cdp;->getSumOfCrossSize()I

    move-result v2

    add-int v2, v2, p3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    if-ne v8, v5, :cond_3

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gzl;

    sub-int v6, v6, p3

    iput v6, v1, Lg/gzl;->q:I

    return-void

    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v4, :cond_13

    invoke-virtual {v1}, Lg/cdp;->getAlignContent()I

    move-result v8

    if-eq v8, v5, :cond_12

    if-eq v8, v4, :cond_11

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    if-eq v8, v3, :cond_b

    const/4 v3, 0x4

    if-eq v8, v3, :cond_8

    const/4 v1, 0x5

    if-eq v8, v1, :cond_4

    goto/16 :goto_a

    :cond_4
    if-ge v2, v6, :cond_13

    sub-int/2addr v6, v2

    int-to-float v1, v6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v9, v2, :cond_13

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gzl;

    iget v6, v4, Lg/gzl;->q:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    if-ne v9, v8, :cond_5

    add-float/2addr v6, v3

    const/4 v3, 0x0

    :cond_5
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v13, v8

    sub-float/2addr v6, v13

    add-float/2addr v6, v3

    cmpl-float v3, v6, v12

    if-lez v3, :cond_7

    add-int/lit8 v8, v8, 0x1

    sub-float/2addr v6, v12

    :cond_6
    :goto_3
    move v3, v6

    goto :goto_4

    :cond_7
    cmpg-float v3, v6, v10

    if-gez v3, :cond_6

    add-int/lit8 v8, v8, -0x1

    add-float/2addr v6, v12

    goto :goto_3

    :goto_4
    iput v8, v4, Lg/gzl;->q:I

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    if-lt v2, v6, :cond_9

    invoke-static {v6, v2, v7}, Lg/fdy;->d(IILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/cdp;->setFlexLines(Ljava/util/List;)V

    return-void

    :cond_9
    sub-int/2addr v6, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v6, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lg/gzl;

    invoke-direct {v3}, Lg/gzl;-><init>()V

    iput v6, v3, Lg/gzl;->q:I

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gzl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    invoke-virtual {v1, v2}, Lg/cdp;->setFlexLines(Ljava/util/List;)V

    return-void

    :cond_b
    if-ge v2, v6, :cond_13

    sub-int/2addr v6, v2

    int-to-float v2, v6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v2, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_6
    if-ge v9, v6, :cond_10

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/gzl;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v5

    if-eq v9, v13, :cond_f

    new-instance v13, Lg/gzl;

    invoke-direct {v13}, Lg/gzl;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v4

    if-ne v9, v14, :cond_c

    add-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v13, Lg/gzl;->q:I

    const/4 v8, 0x0

    goto :goto_7

    :cond_c
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    iput v14, v13, Lg/gzl;->q:I

    :goto_7
    iget v14, v13, Lg/gzl;->q:I

    int-to-float v15, v14

    sub-float v15, v2, v15

    add-float/2addr v15, v8

    cmpl-float v8, v15, v12

    if-lez v8, :cond_e

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lg/gzl;->q:I

    sub-float/2addr v15, v12

    :cond_d
    :goto_8
    move v8, v15

    goto :goto_9

    :cond_e
    cmpg-float v8, v15, v10

    if-gez v8, :cond_d

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lg/gzl;->q:I

    add-float/2addr v15, v12

    goto :goto_8

    :goto_9
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_10
    invoke-virtual {v1, v3}, Lg/cdp;->setFlexLines(Ljava/util/List;)V

    return-void

    :cond_11
    invoke-static {v6, v2, v7}, Lg/fdy;->d(IILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/cdp;->setFlexLines(Ljava/util/List;)V

    return-void

    :cond_12
    sub-int/2addr v6, v2

    new-instance v1, Lg/gzl;

    invoke-direct {v1}, Lg/gzl;-><init>()V

    iput v6, v1, Lg/gzl;->q:I

    invoke-interface {v7, v9, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_13
    :goto_a
    return-void
.end method

.method public ag(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    const/4 v0, 0x1

    const-string v1, "SELECT long_value FROM Preference where `key`=?"

    invoke-static {v0, v1}, Lg/fcg;->o(ILjava/lang/String;)Lg/fcg;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lg/fcg;->e(ILjava/lang/String;)V

    iget-object p1, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast p1, Lg/gac;

    invoke-virtual {p1}, Lg/gac;->al()V

    invoke-virtual {p1, v1}, Lg/gac;->ag(Lg/fxn;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lg/fcg;->p()V

    return-object v2

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lg/fcg;->p()V

    throw v0
.end method

.method public ah(Landroid/view/View;Lg/gzl;ZIIII)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/gth;

    iget-object v1, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v1, Lg/cdp;

    invoke-virtual {v1}, Lg/cdp;->getAlignItems()I

    move-result v1

    invoke-interface {v0}, Lg/gth;->iw()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-interface {v0}, Lg/gth;->iw()I

    move-result v1

    :cond_0
    iget p2, p2, Lg/gzl;->q:I

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 p2, 0x3

    if-eq v1, p2, :cond_5

    const/4 p2, 0x4

    if-eq v1, p2, :cond_5

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p2

    sub-int/2addr v1, p2

    div-int/2addr v1, v2

    if-nez p3, :cond_2

    add-int/2addr p4, v1

    add-int/2addr p6, v1

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_2
    sub-int/2addr p4, v1

    sub-int/2addr p6, v1

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_3
    if-nez p3, :cond_4

    add-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p4, p3

    invoke-interface {v0}, Lg/gth;->jy()I

    move-result p3

    sub-int/2addr p4, p3

    add-int/2addr p6, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p6, p2

    invoke-interface {v0}, Lg/gth;->jy()I

    move-result p2

    sub-int/2addr p6, p2

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_4
    sub-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p4

    invoke-interface {v0}, Lg/gth;->mp()I

    move-result p4

    add-int/2addr p4, p3

    sub-int/2addr p6, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p6

    invoke-interface {v0}, Lg/gth;->mp()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p4, p5, p3, p7}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_5
    if-nez p3, :cond_6

    invoke-interface {v0}, Lg/gth;->mp()I

    move-result p2

    add-int/2addr p2, p4

    invoke-interface {v0}, Lg/gth;->mp()I

    move-result p3

    add-int/2addr p3, p6

    invoke-virtual {p1, p2, p5, p3, p7}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    invoke-interface {v0}, Lg/gth;->jy()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-interface {v0}, Lg/gth;->jy()I

    move-result p2

    sub-int/2addr p6, p2

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public ai()V
    .locals 3

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    instance-of v1, v0, Lg/elf;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lg/elf;

    iget-object v2, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v2, Lg/ert;

    iget-object v2, v2, Lg/ert;->q:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v1, Lg/elf;->v:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v2, v1, Lg/elf;->v:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lg/elf;->x:Z

    :cond_1
    :goto_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lg/fyt;->h(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public aj(II)V
    .locals 5

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Lg/fdy;->m(I)V

    iget-object v1, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p2

    array-length v3, v1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v1, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    iget-object v2, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/blc;

    iget v3, v2, Lg/blc;->mPosition:I

    if-ge v3, p1, :cond_2

    goto :goto_1

    :cond_2
    if-ge v3, v0, :cond_3

    iget-object v2, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sub-int/2addr v3, p2

    iput v3, v2, Lg/blc;->mPosition:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public ak(Lg/enb;)V
    .locals 2

    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Lg/fdw;

    :try_start_0
    invoke-virtual {v0, p1}, Lg/fdw;->o(Lg/enb;)Lg/anx;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v1, Lg/bmm;

    invoke-interface {v1, v0, p1}, Lg/bmm;->ad(Lg/czh;Lg/anx;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lg/aky;->t(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lg/aky;->t(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lg/fdy;->r(Ljava/lang/Throwable;)V

    return-void
.end method

.method public al(II)V
    .locals 3

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Lg/fdy;->m(I)V

    iget-object v1, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, -0x1

    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/blc;

    iget v2, v1, Lg/blc;->mPosition:I

    if-ge v2, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v2, p2

    iput v2, v1, Lg/blc;->mPosition:I

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public am()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v1, Lg/cdp;

    invoke-virtual {v1}, Lg/cdp;->getFlexItemCount()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v1}, Lg/cdp;->getFlexDirection()I

    move-result v2

    invoke-virtual {v1}, Lg/cdp;->getAlignItems()I

    move-result v3

    const-string v4, "Invalid flex direction: "

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v3, v7, :cond_7

    invoke-virtual {v1}, Lg/cdp;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_c

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/gzl;

    iget v13, v12, Lg/gzl;->a:I

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_6

    iget v15, v12, Lg/gzl;->c:I

    add-int/2addr v15, v14

    invoke-virtual {v1}, Lg/cdp;->getFlexItemCount()I

    move-result v10

    if-ge v14, v10, :cond_5

    invoke-virtual {v1, v15}, Lg/cdp;->t(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v5, 0x8

    if-eq v15, v5, :cond_5

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lg/gth;

    invoke-interface {v5}, Lg/gth;->iw()I

    move-result v15

    const/4 v6, -0x1

    if-eq v15, v6, :cond_1

    invoke-interface {v5}, Lg/gth;->iw()I

    move-result v5

    if-ne v5, v7, :cond_5

    :cond_1
    if-eqz v2, :cond_4

    if-eq v2, v8, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_2
    iget v5, v12, Lg/gzl;->q:I

    invoke-virtual {v0, v10, v5}, Lg/fdy;->q(Landroid/view/View;I)V

    goto :goto_3

    :cond_4
    iget v5, v12, Lg/gzl;->q:I

    invoke-virtual {v0, v10, v5}, Lg/fdy;->an(Landroid/view/View;I)V

    :cond_5
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Lg/cdp;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gzl;

    iget-object v6, v5, Lg/gzl;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7}, Lg/cdp;->t(I)Landroid/view/View;

    move-result-object v7

    if-eqz v2, :cond_b

    if-eq v2, v8, :cond_b

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eq v2, v9, :cond_a

    if-ne v2, v10, :cond_9

    goto :goto_5

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_5
    iget v11, v5, Lg/gzl;->q:I

    invoke-virtual {v0, v7, v11}, Lg/fdy;->q(Landroid/view/View;I)V

    goto :goto_4

    :cond_b
    const/4 v9, 0x2

    const/4 v10, 0x3

    iget v11, v5, Lg/gzl;->q:I

    invoke-virtual {v0, v7, v11}, Lg/fdy;->an(Landroid/view/View;I)V

    goto :goto_4

    :cond_c
    :goto_6
    return-void
.end method

.method public an(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/gth;

    invoke-interface {v0}, Lg/gth;->q()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lg/gth;->f()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lg/gth;->ia()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {v0}, Lg/gth;->o()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public g(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1

    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Lg/dcq;

    iget-object v0, v0, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v0, Lg/fdy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lg/eiz;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    new-instance v0, Lg/eiz;

    invoke-direct {v0, p1}, Lg/eiz;-><init>(Landroid/text/method/KeyListener;)V

    return-object v0

    :cond_3
    return-object p1
.end method

.method public h(IILg/gzl;IIZ)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    iget-object v1, v0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v1, Lg/cdp;

    iget v2, v3, Lg/gzl;->g:I

    iget v5, v3, Lg/gzl;->b:F

    const/4 v6, 0x0

    cmpg-float v7, v5, v6

    if-lez v7, :cond_10

    if-le v4, v2, :cond_0

    goto/16 :goto_a

    :cond_0
    sub-int v7, v2, v4

    int-to-float v7, v7

    div-float/2addr v7, v5

    iget v5, v3, Lg/gzl;->i:I

    add-int v5, p5, v5

    iput v5, v3, Lg/gzl;->g:I

    if-nez p6, :cond_1

    const/high16 v5, -0x80000000

    iput v5, v3, Lg/gzl;->q:I

    :cond_1
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v11, v3, Lg/gzl;->a:I

    if-ge v5, v11, :cond_f

    iget v11, v3, Lg/gzl;->c:I

    add-int/2addr v11, v5

    invoke-virtual {v1, v11}, Lg/cdp;->t(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_e

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lg/gth;

    invoke-virtual {v1}, Lg/cdp;->getFlexDirection()I

    move-result v14

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/4 v6, 0x1

    if-eqz v14, :cond_2

    if-ne v14, v6, :cond_3

    :cond_2
    move/from16 v15, p1

    const/16 p6, 0x1

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    const/16 p6, 0x1

    iget-object v6, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v6, [Z

    aget-boolean v6, v6, v11

    if-nez v6, :cond_8

    invoke-interface {v13}, Lg/gth;->s()F

    move-result v6

    cmpl-float v6, v6, v21

    if-lez v6, :cond_8

    int-to-float v6, v14

    invoke-interface {v13}, Lg/gth;->s()F

    move-result v14

    mul-float v14, v14, v7

    sub-float/2addr v6, v14

    iget v14, v3, Lg/gzl;->a:I

    add-int/lit8 v14, v14, -0x1

    if-ne v5, v14, :cond_4

    add-float/2addr v6, v10

    const/4 v10, 0x0

    :cond_4
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-interface {v13}, Lg/gth;->ia()I

    move-result v15

    if-ge v14, v15, :cond_5

    invoke-interface {v13}, Lg/gth;->ia()I

    move-result v14

    iget-object v6, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v6, [Z

    aput-boolean p6, v6, v11

    iget v6, v3, Lg/gzl;->b:F

    invoke-interface {v13}, Lg/gth;->s()F

    move-result v8

    sub-float/2addr v6, v8

    iput v6, v3, Lg/gzl;->b:F

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    int-to-float v11, v14

    sub-float/2addr v6, v11

    add-float/2addr v6, v10

    float-to-double v10, v6

    cmpl-double v15, v10, v18

    if-lez v15, :cond_7

    add-int/lit8 v14, v14, 0x1

    sub-float v6, v6, v20

    :cond_6
    :goto_1
    move v10, v6

    goto :goto_2

    :cond_7
    cmpg-double v15, v10, v16

    if-gez v15, :cond_6

    add-int/lit8 v14, v14, -0x1

    add-float v6, v6, v20

    goto :goto_1

    :goto_2
    iget v6, v3, Lg/gzl;->k:I

    move/from16 v15, p1

    invoke-virtual {v0, v15, v13, v6}, Lg/fdy;->ad(ILg/gth;I)I

    move-result v6

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v14, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v12, v6, v11}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    goto :goto_3

    :cond_8
    move/from16 v15, p1

    :goto_3
    invoke-interface {v13}, Lg/gth;->mp()I

    move-result v6

    add-int v6, v6, v22

    invoke-interface {v13}, Lg/gth;->jy()I

    move-result v11

    add-int/2addr v11, v6

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v9, v3, Lg/gzl;->g:I

    invoke-interface {v13}, Lg/gth;->q()I

    move-result v11

    add-int/2addr v11, v14

    invoke-interface {v13}, Lg/gth;->f()I

    move-result v12

    add-int/2addr v12, v11

    add-int/2addr v12, v9

    iput v12, v3, Lg/gzl;->g:I

    move/from16 v11, p2

    move-object/from16 v22, v1

    goto/16 :goto_8

    :goto_4
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v22, v1

    iget-object v1, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v1, [Z

    aget-boolean v1, v1, v11

    if-nez v1, :cond_d

    invoke-interface {v13}, Lg/gth;->s()F

    move-result v1

    cmpl-float v1, v1, v21

    if-lez v1, :cond_d

    int-to-float v1, v6

    invoke-interface {v13}, Lg/gth;->s()F

    move-result v6

    mul-float v6, v6, v7

    sub-float/2addr v1, v6

    iget v6, v3, Lg/gzl;->a:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_9

    add-float/2addr v1, v10

    const/4 v10, 0x0

    :cond_9
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-interface {v13}, Lg/gth;->mn()I

    move-result v14

    if-ge v6, v14, :cond_a

    invoke-interface {v13}, Lg/gth;->mn()I

    move-result v6

    iget-object v1, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v1, [Z

    aput-boolean p6, v1, v11

    iget v1, v3, Lg/gzl;->b:F

    invoke-interface {v13}, Lg/gth;->s()F

    move-result v8

    sub-float/2addr v1, v8

    iput v1, v3, Lg/gzl;->b:F

    const/4 v8, 0x1

    goto :goto_6

    :cond_a
    int-to-float v11, v6

    sub-float/2addr v1, v11

    add-float/2addr v1, v10

    float-to-double v10, v1

    cmpl-double v14, v10, v18

    if-lez v14, :cond_c

    add-int/lit8 v6, v6, 0x1

    sub-float v1, v1, v20

    :cond_b
    :goto_5
    move v10, v1

    goto :goto_6

    :cond_c
    cmpg-double v14, v10, v16

    if-gez v14, :cond_b

    add-int/lit8 v6, v6, -0x1

    add-float v1, v1, v20

    goto :goto_5

    :goto_6
    iget v1, v3, Lg/gzl;->k:I

    move/from16 v11, p2

    invoke-virtual {v0, v11, v13, v1}, Lg/fdy;->y(ILg/gth;I)I

    move-result v1

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v12, v6, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    goto :goto_7

    :cond_d
    move/from16 v11, p2

    :goto_7
    invoke-interface {v13}, Lg/gth;->q()I

    move-result v1

    add-int/2addr v1, v14

    invoke-interface {v13}, Lg/gth;->f()I

    move-result v12

    add-int/2addr v12, v1

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v9, v3, Lg/gzl;->g:I

    invoke-interface {v13}, Lg/gth;->mp()I

    move-result v12

    add-int/2addr v12, v6

    invoke-interface {v13}, Lg/gth;->jy()I

    move-result v6

    add-int/2addr v6, v12

    add-int/2addr v6, v9

    iput v6, v3, Lg/gzl;->g:I

    move v6, v1

    :goto_8
    iget v1, v3, Lg/gzl;->q:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lg/gzl;->q:I

    move v9, v6

    goto :goto_9

    :cond_e
    move/from16 v15, p1

    move/from16 v11, p2

    move-object/from16 v22, v1

    const/16 v21, 0x0

    :goto_9
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v22

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_f
    move/from16 v15, p1

    move/from16 v11, p2

    if-eqz v8, :cond_10

    iget v1, v3, Lg/gzl;->g:I

    if-eq v2, v1, :cond_10

    const/4 v6, 0x1

    move/from16 v5, p5

    move v2, v11

    move v1, v15

    invoke-virtual/range {v0 .. v6}, Lg/fdy;->h(IILg/gzl;IIZ)V

    :cond_10
    :goto_a
    return-void
.end method

.method public i(Lg/ejd;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Lg/efc;

    iget-object v1, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v1, Lg/vg;

    const-string v2, "a"

    invoke-virtual {v0, p1, p2, v2, v1}, Lg/efc;->f(Lg/ejd;Ljava/util/List;Ljava/lang/String;Lg/btp;)V

    return-void
.end method

.method public j(II)V
    .locals 12

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Lg/cdp;

    invoke-virtual {v0}, Lg/cdp;->getFlexItemCount()I

    move-result v1

    iget-object v2, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v2, [Z

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v2, :cond_0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lg/fdy;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    array-length v5, v2

    if-ge v5, v1, :cond_1

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lg/fdy;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([ZZ)V

    :goto_0
    invoke-virtual {v0}, Lg/cdp;->getFlexItemCount()I

    move-result v1

    if-gtz v1, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v0}, Lg/cdp;->getFlexDirection()I

    move-result v1

    invoke-virtual {v0}, Lg/cdp;->getFlexDirection()I

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_6

    const/4 v6, 0x1

    if-eq v2, v6, :cond_6

    if-eq v2, v4, :cond_4

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid flex direction: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-ne v1, v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lg/cdp;->getLargestMainSize()I

    move-result v2

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    :goto_3
    add-int/2addr v4, v1

    move v9, v2

    move v10, v4

    goto :goto_5

    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {v0}, Lg/cdp;->getLargestMainSize()I

    move-result v4

    if-ne v1, v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v1

    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    goto :goto_3

    :goto_5
    invoke-virtual {v0}, Lg/cdp;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_6
    if-ge v3, v1, :cond_a

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lg/gzl;

    iget v2, v8, Lg/gzl;->g:I

    if-ge v2, v9, :cond_8

    iget-boolean v4, v8, Lg/gzl;->j:Z

    if-eqz v4, :cond_8

    const/4 v11, 0x0

    move-object v5, p0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v5 .. v11}, Lg/fdy;->ab(IILg/gzl;IIZ)V

    goto :goto_7

    :cond_8
    move v6, p1

    move v7, p2

    if-le v2, v9, :cond_9

    iget-boolean p1, v8, Lg/gzl;->o:Z

    if-eqz p1, :cond_9

    const/4 v11, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lg/fdy;->h(IILg/gzl;IIZ)V

    :cond_9
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move p1, v6

    move p2, v7

    goto :goto_6

    :cond_a
    :goto_8
    return-void
.end method

.method public k(Landroid/view/View;Lg/anp;)Lg/anp;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v3, Lg/gez;

    iget-object v4, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v4, Lg/br;

    iget v5, v4, Lg/br;->a:I

    iget v6, v4, Lg/br;->b:I

    iget v4, v4, Lg/br;->c:I

    iget-object v7, v2, Lg/anp;->b:Lg/dif;

    const/16 v8, 0x207

    invoke-virtual {v7, v8}, Lg/dif;->i(I)Lg/oi;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Lg/dif;->i(I)Lg/oi;

    move-result-object v7

    iget-object v9, v3, Lg/gez;->e:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v10, v8, Lg/oi;->d:I

    iget v11, v8, Lg/oi;->e:I

    iget v12, v8, Lg/oi;->c:I

    iput v10, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->aq:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v10

    const/4 v14, 0x1

    if-ne v10, v14, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v16

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v17

    iget-boolean v13, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:Z

    if-eqz v13, :cond_1

    invoke-virtual {v2}, Lg/anp;->f()I

    move-result v15

    iput v15, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ao:I

    add-int/2addr v15, v4

    :cond_1
    iget-boolean v4, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->au:Z

    if-eqz v4, :cond_3

    if-eqz v10, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    add-int v16, v4, v12

    :cond_3
    move/from16 v4, v16

    iget-boolean v14, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->bd:Z

    if-eqz v14, :cond_5

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    add-int v17, v5, v11

    :cond_5
    move/from16 v5, v17

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v10, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->at:Z

    if-eqz v10, :cond_6

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eq v10, v12, :cond_6

    iput v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 v18, 0x1

    goto :goto_3

    :cond_6
    const/16 v18, 0x0

    :goto_3
    iget-boolean v10, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->bf:Z

    if-eqz v10, :cond_7

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v10, v11, :cond_7

    iput v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/16 v18, 0x1

    :cond_7
    iget-boolean v10, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ah:Z

    if-eqz v10, :cond_8

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v8, Lg/oi;->d:I

    if-eq v10, v8, :cond_8

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v14, 0x1

    goto :goto_4

    :cond_8
    move/from16 v14, v18

    :goto_4
    if-eqz v14, :cond_9

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1, v4, v6, v5, v15}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean v1, v3, Lg/gez;->g:Z

    if-eqz v1, :cond_a

    iget v3, v7, Lg/oi;->b:I

    iput v3, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->av:I

    :cond_a
    if-nez v13, :cond_c

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    return-object v2

    :cond_c
    :goto_5
    invoke-virtual {v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ck()V

    return-object v2
.end method

.method public l(Lg/gey;)Lg/dpa;
    .locals 3

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Lg/dpa;

    invoke-virtual {v0}, Lg/dpa;->u()Lg/dpa;

    move-result-object v0

    iget-object v1, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lg/dpa;->m(Ljava/lang/String;Lg/gey;)V

    iget-object p1, v0, Lg/dpa;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public m(I)V
    .locals 4

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lg/fdy;->c:Ljava/lang/Object;

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    return-void

    :cond_0
    array-length v2, v0

    if-lt p1, v2, :cond_2

    array-length v2, v0

    :goto_0
    if-gt v2, p1, :cond_1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    iput-object p1, p0, Lg/fdy;->c:Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast p1, [I

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v0, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    :cond_2
    return-void
.end method

.method public n(Landroid/view/inputmethod/InputConnection;)Lg/dql;
    .locals 2

    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Lg/dcq;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v0, Lg/fdy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p1, Lg/dql;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lg/dql;

    iget-object v0, v0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v1, v0, p1}, Lg/dql;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;)V

    move-object p1, v1

    :goto_0
    check-cast p1, Lg/dql;

    return-object p1
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    return-void
.end method

.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/a;

    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcao;

    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzblo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzblo;->a:Lcom/google/android/gms/internal/ads/zzblb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzblb;->zzp()Lcom/google/android/gms/internal/ads/zzbli;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcao;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onConnectionSuspended: "

    invoke-static {p1, v1}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcao;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public p(Lg/cmk;)V
    .locals 2

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Lg/gac;

    invoke-virtual {v0}, Lg/gac;->al()V

    invoke-virtual {v0}, Lg/gac;->an()V

    :try_start_0
    iget-object v1, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v1, Lg/sw;

    invoke-virtual {v1, p1}, Lg/sw;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg/gac;->ah()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lg/gac;->am()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lg/gac;->am()V

    throw p1
.end method

.method public q(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/gth;

    invoke-interface {v0}, Lg/gth;->mp()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lg/gth;->jy()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lg/gth;->mn()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {v0}, Lg/gth;->kk()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public r(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Lg/bmm;

    iget-object v1, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v1, Lg/fdw;

    invoke-interface {v0, v1, p1}, Lg/bmm;->w(Lg/czh;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lg/aky;->t(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public s(Ljava/util/List;Lg/gzl;II)V
    .locals 0

    iput p4, p2, Lg/gzl;->k:I

    iget-object p3, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast p3, Lg/cdp;

    invoke-virtual {p3}, Lg/cdp;->aa()Z

    move-result p4

    if-eqz p4, :cond_0

    iget p4, p3, Lg/cdp;->e:I

    and-int/lit8 p4, p4, 0x4

    if-lez p4, :cond_1

    iget p4, p2, Lg/gzl;->g:I

    iget p3, p3, Lg/cdp;->g:I

    add-int/2addr p4, p3

    iput p4, p2, Lg/gzl;->g:I

    iget p4, p2, Lg/gzl;->i:I

    add-int/2addr p4, p3

    iput p4, p2, Lg/gzl;->i:I

    goto :goto_0

    :cond_0
    iget p4, p3, Lg/cdp;->m:I

    and-int/lit8 p4, p4, 0x4

    if-lez p4, :cond_1

    iget p4, p2, Lg/gzl;->g:I

    iget p3, p3, Lg/cdp;->h:I

    add-int/2addr p4, p3

    iput p4, p2, Lg/gzl;->g:I

    iget p4, p2, Lg/gzl;->i:I

    add-int/2addr p4, p3

    iput p4, p2, Lg/gzl;->i:I

    :cond_1
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public t()V
    .locals 3

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v1, Lg/ert;

    iget-boolean v2, v1, Lg/ert;->e:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Lg/acw;->aa(Landroid/content/Context;)V

    :cond_0
    const-string v2, "fail_permission_cancel"

    iget-object v1, v1, Lg/ert;->q:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public u(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lg/acs;->r:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xe

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Lg/fdy;->z(Z)V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public v(I)I
    .locals 5

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, v0

    if-lt p1, v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, -0x1

    goto :goto_5

    :cond_3
    const/4 v2, 0x0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_6

    iget-object v3, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/blc;

    iget v4, v3, Lg/blc;->mPosition:I

    if-ne v4, p1, :cond_5

    move-object v2, v3

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_9

    iget-object v3, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/blc;

    iget v3, v3, Lg/blc;->mPosition:I

    if-lt v3, p1, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    const/4 v2, -0x1

    :goto_4
    if-eq v2, v1, :cond_2

    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/blc;

    iget-object v3, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v0, v0, Lg/blc;->mPosition:I

    :goto_5
    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, [I

    array-length v2, v0

    invoke-static {v0, p1, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object p1, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast p1, [I

    array-length p1, p1

    return p1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v2, [I

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v2, [I

    invoke-static {v2, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    return v0
.end method

.method public w(IIII)V
    .locals 3

    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Lg/dur;

    iget-object v1, v0, Lg/dur;->l:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lg/dur;->k:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v1

    invoke-static {v0, p1, p2, p3, p4}, Lg/dur;->p(Lg/dur;IIII)V

    return-void
.end method

.method public x(Lg/ta;II)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v4, Lg/cdp;

    invoke-virtual {v4}, Lg/cdp;->aa()Z

    move-result v5

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lg/ta;->a:Ljava/util/List;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v9

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v10

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v11

    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v12

    :goto_3
    new-instance v13, Lg/gzl;

    invoke-direct {v13}, Lg/gzl;-><init>()V

    const/4 v14, 0x0

    iput v14, v13, Lg/gzl;->c:I

    add-int/2addr v9, v10

    iput v9, v13, Lg/gzl;->g:I

    invoke-virtual {v4}, Lg/cdp;->getFlexItemCount()I

    move-result v10

    move/from16 v16, v5

    move/from16 v17, v11

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/high16 v18, -0x80000000

    :goto_4
    if-ge v14, v10, :cond_33

    move/from16 v19, v10

    invoke-virtual {v4, v14}, Lg/cdp;->t(I)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_5

    add-int/lit8 v10, v19, -0x1

    if-ne v14, v10, :cond_4

    invoke-virtual {v13}, Lg/gzl;->r()I

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v0, v8, v13, v14, v15}, Lg/fdy;->s(Ljava/util/List;Lg/gzl;II)V

    :cond_4
    move/from16 v21, v9

    move/from16 v20, v12

    goto :goto_5

    :cond_5
    move/from16 v20, v12

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v1, 0x8

    move/from16 v21, v9

    const/4 v9, 0x1

    if-ne v12, v1, :cond_7

    iget v1, v13, Lg/gzl;->l:I

    add-int/2addr v1, v9

    iput v1, v13, Lg/gzl;->l:I

    iget v1, v13, Lg/gzl;->a:I

    add-int/2addr v1, v9

    iput v1, v13, Lg/gzl;->a:I

    add-int/lit8 v10, v19, -0x1

    if-ne v14, v10, :cond_6

    invoke-virtual {v13}, Lg/gzl;->r()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v8, v13, v14, v15}, Lg/fdy;->s(Ljava/util/List;Lg/gzl;II)V

    :cond_6
    :goto_5
    move-object v9, v8

    move/from16 v1, v21

    move-object v8, v0

    goto/16 :goto_29

    :cond_7
    instance-of v1, v10, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_f

    move-object v1, v10

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v12, v22

    check-cast v12, Lg/gth;

    invoke-interface {v12}, Lg/gth;->mn()I

    move-result v9

    invoke-interface {v12}, Lg/gth;->ia()I

    move-result v0

    move-object/from16 v23, v8

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v24, v15

    const/16 v15, 0x17

    if-lt v8, v15, :cond_8

    invoke-static {v1}, Lg/fnh;->ac(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_7

    :cond_8
    sget-boolean v8, Lg/ffb;->f:Z

    if-nez v8, :cond_9

    :try_start_0
    const-class v8, Landroid/widget/CompoundButton;

    const-string v15, "mButtonDrawable"

    invoke-virtual {v8, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    sput-object v8, Lg/ffb;->m:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v15, 0x1

    :try_start_1
    invoke-virtual {v8, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_0
    const/4 v15, 0x1

    :catch_1
    :goto_6
    sput-boolean v15, Lg/ffb;->f:Z

    :cond_9
    sget-object v8, Lg/ffb;->m:Ljava/lang/reflect/Field;

    const/4 v15, 0x0

    if-eqz v8, :cond_a

    :try_start_2
    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    sput-object v15, Lg/ffb;->m:Ljava/lang/reflect/Field;

    :cond_a
    move-object v1, v15

    :goto_7
    if-nez v1, :cond_b

    const/4 v8, 0x0

    goto :goto_8

    :cond_b
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v8

    :goto_8
    if-nez v1, :cond_c

    const/4 v1, 0x0

    :goto_9
    const/4 v15, -0x1

    goto :goto_a

    :cond_c
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    goto :goto_9

    :goto_a
    if-ne v9, v15, :cond_d

    move v9, v8

    :cond_d
    invoke-interface {v12, v9}, Lg/gth;->dq(I)V

    if-ne v0, v15, :cond_e

    move v0, v1

    :cond_e
    invoke-interface {v12, v0}, Lg/gth;->d(I)V

    goto :goto_b

    :cond_f
    move-object/from16 v23, v8

    move/from16 v24, v15

    :goto_b
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/gth;

    invoke-interface {v0}, Lg/gth;->iw()I

    move-result v1

    const/4 v8, 0x4

    if-ne v1, v8, :cond_10

    iget-object v1, v13, Lg/gzl;->d:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    if-eqz v16, :cond_11

    invoke-interface {v0}, Lg/gth;->dq()I

    move-result v1

    goto :goto_c

    :cond_11
    invoke-interface {v0}, Lg/gth;->d()I

    move-result v1

    :goto_c
    invoke-interface {v0}, Lg/gth;->ig()F

    move-result v9

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v9, v9, v12

    if-eqz v9, :cond_12

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_12

    int-to-float v1, v7

    invoke-interface {v0}, Lg/gth;->ig()F

    move-result v9

    mul-float v9, v9, v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    :cond_12
    if-eqz v16, :cond_13

    invoke-interface {v0}, Lg/gth;->mp()I

    move-result v9

    add-int v9, v9, v21

    invoke-interface {v0}, Lg/gth;->jy()I

    move-result v12

    add-int/2addr v12, v9

    invoke-static {v2, v12, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    add-int v9, v17, v20

    invoke-interface {v0}, Lg/gth;->q()I

    move-result v12

    add-int/2addr v12, v9

    invoke-interface {v0}, Lg/gth;->f()I

    move-result v9

    add-int/2addr v9, v12

    add-int v9, v9, v24

    invoke-interface {v0}, Lg/gth;->d()I

    move-result v12

    invoke-static {v3, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    invoke-virtual {v10, v1, v9}, Landroid/view/View;->measure(II)V

    goto :goto_d

    :cond_13
    add-int v9, v17, v20

    invoke-interface {v0}, Lg/gth;->mp()I

    move-result v12

    add-int/2addr v12, v9

    invoke-interface {v0}, Lg/gth;->jy()I

    move-result v9

    add-int/2addr v9, v12

    add-int v9, v9, v24

    invoke-interface {v0}, Lg/gth;->dq()I

    move-result v12

    invoke-static {v3, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    invoke-interface {v0}, Lg/gth;->q()I

    move-result v12

    add-int v12, v12, v21

    invoke-interface {v0}, Lg/gth;->f()I

    move-result v15

    add-int/2addr v15, v12

    invoke-static {v2, v15, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    invoke-virtual {v10, v9, v1}, Landroid/view/View;->measure(II)V

    :goto_d
    invoke-static {v10}, Lg/fdy;->f(Landroid/view/View;)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v9

    invoke-static {v5, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    iget v9, v13, Lg/gzl;->g:I

    if-eqz v16, :cond_14

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    goto :goto_e

    :cond_14
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    :goto_e
    if-eqz v16, :cond_15

    invoke-interface {v0}, Lg/gth;->mp()I

    move-result v15

    goto :goto_f

    :cond_15
    invoke-interface {v0}, Lg/gth;->q()I

    move-result v15

    :goto_f
    add-int/2addr v12, v15

    if-eqz v16, :cond_16

    invoke-interface {v0}, Lg/gth;->jy()I

    move-result v15

    goto :goto_10

    :cond_16
    invoke-interface {v0}, Lg/gth;->f()I

    move-result v15

    :goto_10
    add-int/2addr v12, v15

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v4}, Lg/cdp;->getFlexWrap()I

    move-result v25

    if-nez v25, :cond_17

    :goto_11
    move-object/from16 v8, p0

    move-object/from16 v26, v0

    :goto_12
    move/from16 v1, v21

    move-object/from16 v9, v23

    move/from16 v12, v24

    const/4 v0, 0x1

    goto/16 :goto_1c

    :cond_17
    invoke-interface {v0}, Lg/gth;->no()Z

    move-result v25

    if-eqz v25, :cond_18

    move-object/from16 v26, v0

    goto :goto_17

    :cond_18
    if-nez v6, :cond_19

    goto :goto_11

    :cond_19
    const/16 v25, 0x4

    invoke-virtual {v4}, Lg/cdp;->getMaxLine()I

    move-result v8

    move-object/from16 v26, v0

    const/4 v0, -0x1

    if-eq v8, v0, :cond_1b

    const/16 v22, 0x1

    add-int/lit8 v15, v15, 0x1

    if-gt v8, v15, :cond_1b

    :cond_1a
    move-object/from16 v8, p0

    goto :goto_12

    :cond_1b
    invoke-virtual {v4}, Lg/cdp;->aa()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v4, v14, v11}, Lg/cdp;->z(II)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, v4, Lg/cdp;->g:I

    goto :goto_13

    :cond_1c
    const/4 v0, 0x0

    :goto_13
    iget v8, v4, Lg/cdp;->e:I

    and-int/lit8 v8, v8, 0x4

    if-lez v8, :cond_1f

    iget v8, v4, Lg/cdp;->g:I

    :goto_14
    add-int/2addr v0, v8

    goto :goto_16

    :cond_1d
    invoke-virtual {v4, v14, v11}, Lg/cdp;->z(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, v4, Lg/cdp;->h:I

    goto :goto_15

    :cond_1e
    const/4 v0, 0x0

    :goto_15
    iget v8, v4, Lg/cdp;->m:I

    and-int/lit8 v8, v8, 0x4

    if-lez v8, :cond_1f

    iget v8, v4, Lg/cdp;->h:I

    goto :goto_14

    :cond_1f
    :goto_16
    if-lez v0, :cond_20

    add-int/2addr v12, v0

    :cond_20
    add-int/2addr v9, v12

    if-ge v7, v9, :cond_1a

    :goto_17
    invoke-virtual {v13}, Lg/gzl;->r()I

    move-result v0

    if-lez v0, :cond_22

    if-lez v14, :cond_21

    add-int/lit8 v0, v14, -0x1

    :goto_18
    move-object/from16 v8, p0

    move-object/from16 v9, v23

    move/from16 v12, v24

    goto :goto_19

    :cond_21
    const/4 v0, 0x0

    goto :goto_18

    :goto_19
    invoke-virtual {v8, v9, v13, v0, v12}, Lg/fdy;->s(Ljava/util/List;Lg/gzl;II)V

    iget v0, v13, Lg/gzl;->q:I

    add-int v15, v12, v0

    goto :goto_1a

    :cond_22
    move-object/from16 v8, p0

    move-object/from16 v9, v23

    move/from16 v12, v24

    move v15, v12

    :goto_1a
    if-eqz v16, :cond_23

    invoke-interface/range {v26 .. v26}, Lg/gth;->d()I

    move-result v0

    const/4 v11, -0x1

    if-ne v0, v11, :cond_24

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    add-int/2addr v11, v0

    invoke-interface/range {v26 .. v26}, Lg/gth;->q()I

    move-result v0

    add-int/2addr v0, v11

    invoke-interface/range {v26 .. v26}, Lg/gth;->f()I

    move-result v11

    add-int/2addr v11, v0

    add-int/2addr v11, v15

    invoke-interface/range {v26 .. v26}, Lg/gth;->d()I

    move-result v0

    invoke-static {v3, v11, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {v10, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-static {v10}, Lg/fdy;->f(Landroid/view/View;)V

    goto :goto_1b

    :cond_23
    invoke-interface/range {v26 .. v26}, Lg/gth;->dq()I

    move-result v0

    const/4 v11, -0x1

    if-ne v0, v11, :cond_24

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    add-int/2addr v11, v0

    invoke-interface/range {v26 .. v26}, Lg/gth;->mp()I

    move-result v0

    add-int/2addr v0, v11

    invoke-interface/range {v26 .. v26}, Lg/gth;->jy()I

    move-result v11

    add-int/2addr v11, v0

    add-int/2addr v11, v15

    invoke-interface/range {v26 .. v26}, Lg/gth;->dq()I

    move-result v0

    invoke-static {v3, v11, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {v10, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-static {v10}, Lg/fdy;->f(Landroid/view/View;)V

    :cond_24
    :goto_1b
    new-instance v13, Lg/gzl;

    invoke-direct {v13}, Lg/gzl;-><init>()V

    const/4 v0, 0x1

    iput v0, v13, Lg/gzl;->a:I

    move/from16 v1, v21

    iput v1, v13, Lg/gzl;->g:I

    iput v14, v13, Lg/gzl;->c:I

    const/4 v11, 0x0

    const/high16 v12, -0x80000000

    goto :goto_1d

    :goto_1c
    iget v15, v13, Lg/gzl;->a:I

    add-int/2addr v15, v0

    iput v15, v13, Lg/gzl;->a:I

    add-int/lit8 v11, v11, 0x1

    move v15, v12

    move/from16 v12, v18

    :goto_1d
    iget-boolean v0, v13, Lg/gzl;->j:Z

    invoke-interface/range {v26 .. v26}, Lg/gth;->p()F

    move-result v18

    const/16 v21, 0x0

    cmpl-float v18, v18, v21

    if-eqz v18, :cond_25

    const/16 v18, 0x1

    goto :goto_1e

    :cond_25
    const/16 v18, 0x0

    :goto_1e
    or-int v0, v0, v18

    iput-boolean v0, v13, Lg/gzl;->j:Z

    iget-boolean v0, v13, Lg/gzl;->o:Z

    invoke-interface/range {v26 .. v26}, Lg/gth;->s()F

    move-result v18

    cmpl-float v18, v18, v21

    if-eqz v18, :cond_26

    const/16 v22, 0x1

    goto :goto_1f

    :cond_26
    const/16 v22, 0x0

    :goto_1f
    or-int v0, v0, v22

    iput-boolean v0, v13, Lg/gzl;->o:Z

    iget v0, v13, Lg/gzl;->g:I

    if-eqz v16, :cond_27

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    goto :goto_20

    :cond_27
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    :goto_20
    if-eqz v16, :cond_28

    invoke-interface/range {v26 .. v26}, Lg/gth;->mp()I

    move-result v21

    goto :goto_21

    :cond_28
    invoke-interface/range {v26 .. v26}, Lg/gth;->q()I

    move-result v21

    :goto_21
    add-int v18, v18, v21

    if-eqz v16, :cond_29

    invoke-interface/range {v26 .. v26}, Lg/gth;->jy()I

    move-result v21

    goto :goto_22

    :cond_29
    invoke-interface/range {v26 .. v26}, Lg/gth;->f()I

    move-result v21

    :goto_22
    add-int v18, v18, v21

    add-int v0, v18, v0

    iput v0, v13, Lg/gzl;->g:I

    iget v0, v13, Lg/gzl;->n:F

    invoke-interface/range {v26 .. v26}, Lg/gth;->p()F

    move-result v18

    add-float v0, v18, v0

    iput v0, v13, Lg/gzl;->n:F

    iget v0, v13, Lg/gzl;->b:F

    invoke-interface/range {v26 .. v26}, Lg/gth;->s()F

    move-result v18

    add-float v0, v18, v0

    iput v0, v13, Lg/gzl;->b:F

    invoke-virtual {v4, v14, v11}, Lg/cdp;->z(II)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v4}, Lg/cdp;->aa()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, v13, Lg/gzl;->g:I

    move/from16 v18, v0

    iget v0, v4, Lg/cdp;->g:I

    move/from16 v21, v0

    add-int v0, v18, v21

    iput v0, v13, Lg/gzl;->g:I

    iget v0, v13, Lg/gzl;->i:I

    add-int v0, v0, v21

    iput v0, v13, Lg/gzl;->i:I

    goto :goto_23

    :cond_2a
    iget v0, v13, Lg/gzl;->g:I

    move/from16 v18, v0

    iget v0, v4, Lg/cdp;->h:I

    move/from16 v21, v0

    add-int v0, v18, v21

    iput v0, v13, Lg/gzl;->g:I

    iget v0, v13, Lg/gzl;->i:I

    add-int v0, v0, v21

    iput v0, v13, Lg/gzl;->i:I

    :cond_2b
    :goto_23
    if-eqz v16, :cond_2c

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_24

    :cond_2c
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_24
    if-eqz v16, :cond_2d

    invoke-interface/range {v26 .. v26}, Lg/gth;->q()I

    move-result v18

    goto :goto_25

    :cond_2d
    invoke-interface/range {v26 .. v26}, Lg/gth;->mp()I

    move-result v18

    :goto_25
    add-int v0, v0, v18

    if-eqz v16, :cond_2e

    invoke-interface/range {v26 .. v26}, Lg/gth;->f()I

    move-result v18

    goto :goto_26

    :cond_2e
    invoke-interface/range {v26 .. v26}, Lg/gth;->jy()I

    move-result v18

    :goto_26
    add-int v0, v0, v18

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v12, v13, Lg/gzl;->q:I

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v13, Lg/gzl;->q:I

    if-eqz v16, :cond_30

    invoke-virtual {v4}, Lg/cdp;->getFlexWrap()I

    move-result v12

    move/from16 v18, v0

    const/4 v0, 0x2

    if-eq v12, v0, :cond_2f

    iget v0, v13, Lg/gzl;->f:I

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v10

    invoke-interface/range {v26 .. v26}, Lg/gth;->q()I

    move-result v12

    add-int/2addr v12, v10

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v13, Lg/gzl;->f:I

    goto :goto_27

    :cond_2f
    iget v0, v13, Lg/gzl;->f:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v10

    sub-int/2addr v12, v10

    invoke-interface/range {v26 .. v26}, Lg/gth;->f()I

    move-result v10

    add-int/2addr v10, v12

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v13, Lg/gzl;->f:I

    goto :goto_27

    :cond_30
    move/from16 v18, v0

    :goto_27
    add-int/lit8 v10, v19, -0x1

    if-ne v14, v10, :cond_31

    invoke-virtual {v13}, Lg/gzl;->r()I

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {v8, v9, v13, v14, v15}, Lg/fdy;->s(Ljava/util/List;Lg/gzl;II)V

    iget v0, v13, Lg/gzl;->q:I

    add-int/2addr v15, v0

    :cond_31
    const v0, 0x7fffffff

    if-le v15, v0, :cond_32

    :goto_28
    move-object/from16 v1, p1

    goto :goto_2a

    :cond_32
    :goto_29
    add-int/lit8 v14, v14, 0x1

    move-object v0, v8

    move-object v8, v9

    move/from16 v10, v19

    move/from16 v12, v20

    move v9, v1

    move-object/from16 v1, p1

    goto/16 :goto_4

    :cond_33
    move-object v8, v0

    goto :goto_28

    :goto_2a
    iput v5, v1, Lg/ta;->b:I

    return-void
.end method

.method public y(ILg/gth;I)I
    .locals 2

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Lg/cdp;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, v1

    invoke-interface {p2}, Lg/gth;->q()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {p2}, Lg/gth;->f()I

    move-result v0

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    invoke-interface {p2}, Lg/gth;->d()I

    move-result p3

    invoke-static {p1, v0, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-interface {p2}, Lg/gth;->o()I

    move-result v0

    if-le p3, v0, :cond_0

    invoke-interface {p2}, Lg/gth;->o()I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p2}, Lg/gth;->ia()I

    move-result v0

    if-ge p3, v0, :cond_1

    invoke-interface {p2}, Lg/gth;->ia()I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    return p1
.end method

.method public z(Z)V
    .locals 2

    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Lg/dcq;

    iget-object v0, v0, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v0, Lg/fdy;

    iget-object v0, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Lg/fpo;

    iget-boolean v1, v0, Lg/fpo;->b:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, v0, Lg/fpo;->b:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg/awt;->q()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/ads/zzacs;J)Lcom/google/android/gms/internal/ads/zzaca;
    .locals 16

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v1

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x4e20

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    iget-object v3, v0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v7, p1

    invoke-interface {v7, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, -0x1

    move-wide v8, v4

    const/4 v7, -0x1

    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_c

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v12

    invoke-static {v12, v10}, Lg/dby;->f(I[B)I

    move-result v10

    const/4 v12, 0x1

    const/16 v13, 0x1ba

    if-eq v10, v13, :cond_0

    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-static {v3}, Lg/bsk;->i(Lcom/google/android/gms/internal/ads/zzed;)J

    move-result-wide v14

    cmp-long v6, v14, v4

    if-eqz v6, :cond_4

    iget-object v6, v0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v6, v14, v15}, Lcom/google/android/gms/internal/ads/zzek;->zzb(J)J

    move-result-wide v14

    cmp-long v6, v14, p2

    if-lez v6, :cond_2

    cmp-long v3, v8, v4

    if-nez v3, :cond_1

    invoke-static {v14, v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzaca;->zzd(JJ)Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v1

    return-object v1

    :cond_1
    int-to-long v3, v7

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaca;->zze(J)Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v1

    return-object v1

    :cond_2
    const-wide/32 v6, 0x186a0

    add-long/2addr v6, v14

    cmp-long v8, v6, p2

    if-lez v8, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaca;->zze(J)Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v1

    return-object v1

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v6

    move v7, v6

    move-wide v8, v14

    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v10

    const/16 v14, 0xa

    if-ge v10, v14, :cond_5

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto/16 :goto_2

    :cond_5
    const/16 v10, 0x9

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v10

    and-int/lit8 v10, v10, 0x7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v14

    if-ge v14, v10, :cond_6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v10

    if-ge v10, v11, :cond_7

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v14

    invoke-static {v14, v10}, Lg/dby;->f(I[B)I

    move-result v10

    const/16 v14, 0x1bb

    if-eq v10, v14, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v14

    if-ge v14, v10, :cond_9

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto :goto_2

    :cond_9
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v10

    if-lt v10, v11, :cond_b

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v14

    invoke-static {v14, v10}, Lg/dby;->f(I[B)I

    move-result v10

    if-eq v10, v13, :cond_b

    const/16 v14, 0x1b9

    if-eq v10, v14, :cond_b

    ushr-int/lit8 v10, v10, 0x8

    if-ne v10, v12, :cond_b

    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v10

    const/4 v14, 0x2

    if-ge v10, v14, :cond_a

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto :goto_2

    :cond_a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v14

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v15

    add-int/2addr v15, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto :goto_1

    :cond_b
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v6

    goto/16 :goto_0

    :cond_c
    cmp-long v3, v8, v4

    if-eqz v3, :cond_d

    int-to-long v3, v6

    add-long/2addr v1, v3

    invoke-static {v8, v9, v1, v2}, Lcom/google/android/gms/internal/ads/zzaca;->zzf(JJ)Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v1

    return-object v1

    :cond_d
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaca;->zza:Lcom/google/android/gms/internal/ads/zzaca;

    return-object v1
.end method

.method public zza()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "volley"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lg/fdy;->c:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 3

    iget v0, p0, Lg/fdy;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfjh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjh;->d:Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjj;->d:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v1, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfix;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfjk;->zzb(Lcom/google/android/gms/internal/ads/zzfix;Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbvq;

    invoke-static {p1}, Lg/gvi;->zzb(Ljava/lang/Throwable;)Lg/gvi;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbvq;->zze(Lg/gvi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lg/agd;->h()Z

    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcsf;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcrz;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcrz;-><init>(Lcom/google/android/gms/internal/ads/zzcsf;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgee;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgee;->zza(Ljava/lang/Throwable;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcaq;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcaq;->zza()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zzb()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzen;->zzf:[B

    array-length v1, v0

    iget-object v1, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzed;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    return-void
.end method

.method public zzb(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lg/fdy;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfjh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjh;->d:Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjj;->d:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfix;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfjk;->zzd(Lcom/google/android/gms/internal/ads/zzfix;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbvq;

    iget-object v1, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbuz;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbvq;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbuz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lg/agd;->h()Z

    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/fdy;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcsf;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcrq;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcrz;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcrz;-><init>(Lcom/google/android/gms/internal/ads/zzcsf;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgee;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgee;->zzb(Ljava/lang/Object;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lg/fdy;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcas;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcas;->zza(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lg/fao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Z

.field public d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Lg/xh;Lg/eie;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/fao;->c:Z

    iput-object p3, p0, Lg/fao;->e:Ljava/lang/Object;

    iput-object p4, p0, Lg/fao;->b:Ljava/lang/Object;

    iput-object p5, p0, Lg/fao;->a:Ljava/lang/Object;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    const/4 p3, 0x0

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x1f

    if-lt p1, p2, :cond_1

    sget-object p3, Lg/cux;->m:[B

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p3, Lg/cux;->o:[B

    goto :goto_0

    :pswitch_1
    sget-object p3, Lg/cux;->q:[B

    goto :goto_0

    :pswitch_2
    sget-object p3, Lg/cux;->v:[B

    goto :goto_0

    :pswitch_3
    sget-object p3, Lg/cux;->k:[B

    :goto_0
    iput-object p3, p0, Lg/fao;->f:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lg/gk;Lg/eqi;Lg/aoi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/fvi;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/fao;->g:Ljava/lang/Object;

    iput-object p1, p0, Lg/fao;->e:Ljava/lang/Object;

    iput-object p2, p0, Lg/fao;->f:Ljava/lang/Object;

    iput-object p3, p0, Lg/fao;->a:Ljava/lang/Object;

    new-instance p2, Lg/gxt;

    invoke-direct {p2, p1}, Lg/gxt;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lg/fao;->b:Ljava/lang/Object;

    return-void
.end method

.method public static h(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    invoke-static {p0}, Lg/fao;->m(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    const-string v2, "smartisanos.widget.SwitchEx"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Ljava/util/ArrayList;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RecyclerView"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ListView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j(Ljava/util/ArrayList;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lg/fao;->k(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_3

    const/16 v2, 0xc

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lg/fao;->h(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    :cond_2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static m(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 v3, 0x9c4

    if-ge p0, v3, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    if-ge v5, v3, :cond_0

    invoke-virtual {p0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method


# virtual methods
.method public n(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lg/fao;->j(Ljava/util/ArrayList;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lg/fao;->k(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lg/fao;->k(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lg/fao;->b:Ljava/lang/Object;

    check-cast v1, Lg/gxt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p2}, Lg/gxt;->i(Ljava/util/ArrayList;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    const/4 p1, 0x0

    return-object p1

    :cond_5
    invoke-static {p1, p2}, Lg/fao;->j(Ljava/util/ArrayList;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public o()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/fao;->e:Ljava/lang/Object;

    check-cast v1, Lg/gk;

    iget-object v2, v0, Lg/fao;->d:Ljava/lang/Object;

    check-cast v2, Lg/gqy;

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v3, v2, Lg/gqy;->h:Lg/ert;

    sget-object v4, Lg/bli;->n:Lg/ert;

    if-eq v4, v3, :cond_1

    invoke-virtual {v0}, Lg/fao;->q()V

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Lg/gqy;->m:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x4e20

    const v8, 0x7f120056

    const v9, 0x7f120228

    const/4 v10, 0x0

    cmp-long v11, v4, v6

    if-ltz v11, :cond_3

    iget-boolean v1, v2, Lg/gqy;->j:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const v8, 0x7f120228

    :goto_0
    invoke-virtual {v0, v8, v10}, Lg/fao;->t(IZ)V

    return-void

    :cond_3
    const/4 v4, -0x1

    iput v4, v2, Lg/gqy;->c:I

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v12

    if-ne v12, v7, :cond_5

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_6
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v12

    if-eqz v12, :cond_7

    move-object v5, v12

    goto :goto_2

    :cond_7
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v12

    iget v13, v2, Lg/gqy;->d:I

    if-ne v12, v13, :cond_5

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v11

    iput v11, v2, Lg/gqy;->c:I

    goto :goto_1

    :cond_8
    move-object v5, v6

    :goto_2
    if-nez v5, :cond_9

    const/4 v11, 0x1

    goto :goto_3

    :cond_9
    const/4 v11, 0x0

    :goto_3
    iput-boolean v11, v2, Lg/gqy;->j:Z

    iget v11, v2, Lg/gqy;->c:I

    if-eqz v5, :cond_a

    const/4 v12, 0x1

    goto :goto_4

    :cond_a
    const/4 v12, 0x0

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    if-nez v12, :cond_d

    if-gez v11, :cond_b

    goto :goto_5

    :cond_b
    iget v4, v2, Lg/gqy;->o:I

    if-eq v4, v11, :cond_c

    iput v11, v2, Lg/gqy;->o:I

    iput-wide v13, v2, Lg/gqy;->r:J

    :cond_c
    iget-wide v11, v2, Lg/gqy;->r:J

    sub-long/2addr v13, v11

    const-wide/16 v11, 0xbb8

    cmp-long v4, v13, v11

    if-ltz v4, :cond_e

    invoke-virtual {v0, v8, v10}, Lg/fao;->t(IZ)V

    return-void

    :cond_d
    :goto_5
    iput v4, v2, Lg/gqy;->o:I

    const-wide/16 v11, -0x1

    iput-wide v11, v2, Lg/gqy;->r:J

    :cond_e
    if-nez v5, :cond_f

    invoke-virtual {v0}, Lg/fao;->p()V

    return-void

    :cond_f
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v8, ""

    if-nez v4, :cond_10

    move-object v4, v8

    goto :goto_6

    :cond_10
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    :goto_6
    const-string v11, "com.android.settings"

    invoke-virtual {v11, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    iget-boolean v1, v2, Lg/gqy;->e:Z

    if-eqz v1, :cond_12

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_7

    :cond_11
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v8

    :goto_7
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    sput-object v6, Lg/bli;->n:Lg/ert;

    invoke-virtual {v0}, Lg/fao;->q()V

    return-void

    :cond_12
    invoke-virtual {v0}, Lg/fao;->p()V

    return-void

    :cond_13
    iput-boolean v7, v2, Lg/gqy;->e:Z

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v4

    iput v4, v2, Lg/gqy;->d:I

    sget-object v4, Lg/car;->a:[I

    iget-object v8, v2, Lg/gqy;->p:Lg/bpi;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v4, v4, v8

    const-string v8, "usb_debugging"

    const/16 v11, 0x10

    if-eq v4, v7, :cond_2f

    const/4 v12, 0x2

    if-eq v4, v12, :cond_1e

    const/4 v1, 0x3

    if-eq v4, v1, :cond_14

    :goto_8
    return-void

    :cond_14
    invoke-static {v5}, Lg/fao;->m(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, v2, Lg/gqy;->f:Ljava/lang/String;

    if-eqz v3, :cond_1a

    invoke-static {v1, v3}, Lg/fao;->j(Ljava/util/ArrayList;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-nez v3, :cond_15

    move-object v4, v6

    goto :goto_9

    :cond_15
    invoke-static {v3, v5}, Lg/fao;->l(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    :goto_9
    if-nez v4, :cond_16

    goto :goto_a

    :cond_16
    invoke-static {v4}, Lg/fao;->h(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    :goto_a
    if-eqz v6, :cond_17

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v0, v10, v7}, Lg/fao;->t(IZ)V

    goto/16 :goto_1a

    :cond_17
    iget-object v4, v2, Lg/gqy;->b:Ljava/lang/String;

    invoke-static {v1, v4}, Lg/fao;->j(Ljava/util/ArrayList;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    if-eqz v4, :cond_19

    if-nez v6, :cond_19

    invoke-static {v1}, Lg/fao;->i(Ljava/util/ArrayList;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    iget v6, v2, Lg/gqy;->k:I

    if-ne v1, v6, :cond_18

    if-eqz v3, :cond_19

    invoke-static {v4, v5}, Lg/fao;->l(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-static {v1}, Lg/fao;->m(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    iget v1, v2, Lg/gqy;->a:I

    add-int/2addr v1, v7

    iput v1, v2, Lg/gqy;->a:I

    if-lt v1, v12, :cond_45

    invoke-virtual {v0, v10, v7}, Lg/fao;->t(IZ)V

    goto/16 :goto_1a

    :cond_19
    iput v10, v2, Lg/gqy;->a:I

    goto/16 :goto_1a

    :cond_1a
    iget-object v3, v2, Lg/gqy;->n:Ljava/lang/Boolean;

    if-eqz v3, :cond_1d

    iget-object v3, v2, Lg/gqy;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/fao;->j(Ljava/util/ArrayList;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_1b

    move-object v1, v6

    goto :goto_b

    :cond_1b
    invoke-static {v1, v5}, Lg/fao;->l(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    :goto_b
    if-nez v1, :cond_1c

    goto :goto_c

    :cond_1c
    invoke-static {v1}, Lg/fao;->h(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    :goto_c
    if-eqz v6, :cond_45

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v1

    iget-object v2, v2, Lg/gqy;->n:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_45

    invoke-virtual {v0, v10, v7}, Lg/fao;->t(IZ)V

    goto/16 :goto_1a

    :cond_1d
    invoke-virtual {v0, v10, v7}, Lg/fao;->t(IZ)V

    goto/16 :goto_1a

    :cond_1e
    iget-object v4, v3, Lg/ert;->q:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-static {v5}, Lg/fao;->m(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v2, Lg/gqy;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lg/fao;->j(Ljava/util/ArrayList;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-nez v3, :cond_1f

    move-object v3, v6

    goto :goto_d

    :cond_1f
    invoke-static {v3, v5}, Lg/fao;->l(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    :goto_d
    if-nez v3, :cond_20

    goto :goto_e

    :cond_20
    invoke-static {v3}, Lg/fao;->h(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    :goto_e
    if-eqz v6, :cond_21

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_21

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v2, Lg/gqy;->n:Ljava/lang/Boolean;

    invoke-virtual {v0, v10, v7}, Lg/fao;->t(IZ)V

    goto/16 :goto_1a

    :cond_21
    invoke-static {v5}, Lg/fao;->m(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "debug_usb_debugging_open"

    invoke-static {v1, v4}, Lg/acr;->ao(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lg/fao;->n(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_22

    goto/16 :goto_1a

    :cond_22
    invoke-static {v1, v5}, Lg/fao;->l(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_23

    goto/16 :goto_1a

    :cond_23
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v2, Lg/gqy;->n:Ljava/lang/Boolean;

    sget-object v3, Lg/bpi;->DIALOG:Lg/bpi;

    sget-object v4, Lg/bpi;->VERIFY:Lg/bpi;

    iget-object v5, v2, Lg/gqy;->p:Lg/bpi;

    if-eq v5, v3, :cond_24

    goto :goto_f

    :cond_24
    iput-object v4, v2, Lg/gqy;->p:Lg/bpi;

    :goto_f
    invoke-virtual {v1, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v1

    if-nez v1, :cond_45

    invoke-virtual {v0, v9, v10}, Lg/fao;->t(IZ)V

    goto/16 :goto_1a

    :cond_25
    iget-object v3, v3, Lg/ert;->q:Ljava/lang/String;

    sget-object v4, Lg/acr;->n:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v12, :cond_26

    goto/16 :goto_12

    :cond_26
    invoke-static {}, Lg/fnp;->n()Z

    move-result v4

    if-eqz v4, :cond_27

    const v1, 0x7f120227

    invoke-virtual {v0, v1, v10}, Lg/fao;->t(IZ)V

    goto/16 :goto_1a

    :cond_27
    invoke-static {v5}, Lg/fao;->m(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v1, v8}, Lg/acr;->ao(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Lg/fao;->n(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v3}, Lg/acr;->ao(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lg/fao;->n(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v8, :cond_45

    if-nez v1, :cond_28

    goto/16 :goto_1a

    :cond_28
    invoke-static {v8, v5}, Lg/fao;->l(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-nez v3, :cond_29

    goto :goto_10

    :cond_29
    invoke-static {v3}, Lg/fao;->h(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    :goto_10
    if-nez v6, :cond_2a

    goto/16 :goto_1a

    :cond_2a
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lg/gqy;->l:Ljava/lang/Boolean;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lg/gqy;->n:Ljava/lang/Boolean;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2b

    move-object v8, v1

    :cond_2b
    invoke-static {v8, v5}, Lg/fao;->l(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_2c

    goto/16 :goto_1a

    :cond_2c
    invoke-static {v8}, Lg/fao;->k(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lg/gqy;->f:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v3

    iput v3, v2, Lg/gqy;->k:I

    sget-object v3, Lg/bpi;->DIALOG:Lg/bpi;

    sget-object v4, Lg/bpi;->VERIFY:Lg/bpi;

    iget-object v5, v2, Lg/gqy;->p:Lg/bpi;

    if-eq v5, v3, :cond_2d

    goto :goto_11

    :cond_2d
    iput-object v4, v2, Lg/gqy;->p:Lg/bpi;

    :goto_11
    invoke-virtual {v1, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v1

    if-nez v1, :cond_45

    invoke-virtual {v0, v9, v10}, Lg/fao;->t(IZ)V

    goto/16 :goto_1a

    :cond_2e
    :goto_12
    const v1, 0x7f120215

    invoke-virtual {v0, v1, v10}, Lg/fao;->t(IZ)V

    goto/16 :goto_1a

    :cond_2f
    invoke-static {v5}, Lg/fao;->m(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v3, Lg/ert;->q:Ljava/lang/String;

    invoke-static {v1, v13}, Lg/acr;->av(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_30

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    iget-object v13, v3, Lg/ert;->q:Ljava/lang/String;

    invoke-static {v1, v13}, Lg/acr;->ao(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_31

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_31
    invoke-virtual {v0, v4, v12}, Lg/fao;->n(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v12

    if-eqz v12, :cond_32

    invoke-static {v12}, Lg/fao;->k(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lg/gqy;->b:Ljava/lang/String;

    iget-object v14, v3, Lg/ert;->q:Ljava/lang/String;

    const-string v15, "dev_text"

    invoke-static {v1}, Lg/acr;->bo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v15, v6, v14}, [Ljava/lang/String;

    move-result-object v6

    const-string v14, "_"

    invoke-static {v14, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v13}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, v3, Lg/ert;->q:Ljava/lang/String;

    const-string v13, "dev_match"

    invoke-static {v1}, Lg/acr;->bo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    filled-new-array {v13, v15, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v7}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_32
    const/16 v1, 0x18

    if-eqz v12, :cond_40

    invoke-static {v12, v5}, Lg/fao;->l(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    const v5, 0x7f12021b

    if-nez v4, :cond_33

    iget v3, v2, Lg/gqy;->q:I

    add-int/2addr v3, v7

    iput v3, v2, Lg/gqy;->q:I

    if-le v3, v1, :cond_45

    invoke-virtual {v0, v5, v10}, Lg/fao;->t(IZ)V

    goto/16 :goto_1a

    :cond_33
    invoke-static {v4}, Lg/fao;->h(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_34

    const/4 v6, 0x0

    goto :goto_13

    :cond_34
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_13
    iput-object v6, v2, Lg/gqy;->l:Ljava/lang/Boolean;

    if-nez v1, :cond_35

    const/4 v6, 0x0

    goto :goto_14

    :cond_35
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v6

    xor-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_14
    iput-object v6, v2, Lg/gqy;->n:Ljava/lang/Boolean;

    const-string v6, "overdraw"

    iget-object v12, v3, Lg/ert;->q:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    const-string v6, "track_gpu_frame"

    iget-object v12, v3, Lg/ert;->q:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    goto :goto_15

    :cond_36
    const/4 v7, 0x0

    :cond_37
    :goto_15
    iget-object v6, v3, Lg/ert;->q:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v1, :cond_38

    if-nez v7, :cond_38

    if-nez v6, :cond_38

    const-string v8, "running_services"

    iget-object v3, v3, Lg/ert;->q:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    invoke-virtual {v0, v5, v10}, Lg/fao;->t(IZ)V

    goto/16 :goto_1a

    :cond_38
    sget-object v3, Lg/bpi;->SEARCH:Lg/bpi;

    if-eqz v7, :cond_39

    if-eqz v1, :cond_3a

    :cond_39
    if-eqz v6, :cond_3b

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, v2, Lg/gqy;->l:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    :cond_3a
    sget-object v5, Lg/bpi;->DIALOG:Lg/bpi;

    goto :goto_16

    :cond_3b
    sget-object v5, Lg/bpi;->VERIFY:Lg/bpi;

    :goto_16
    iget-object v6, v2, Lg/gqy;->p:Lg/bpi;

    if-eq v6, v3, :cond_3c

    goto :goto_17

    :cond_3c
    iput-object v5, v2, Lg/gqy;->p:Lg/bpi;

    :goto_17
    if-eqz v1, :cond_3e

    invoke-static {}, Lg/fnp;->n()Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-static {}, Lg/fnp;->i()Z

    move-result v2

    if-eqz v2, :cond_3e

    :cond_3d
    move-object v2, v1

    goto :goto_18

    :cond_3e
    move-object v2, v4

    :goto_18
    invoke-virtual {v2, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v2

    if-nez v2, :cond_45

    if-eqz v1, :cond_3f

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v1, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v1

    if-nez v1, :cond_45

    :cond_3f
    invoke-virtual {v0, v9, v10}, Lg/fao;->t(IZ)V

    goto :goto_1a

    :cond_40
    invoke-static {v4}, Lg/fao;->i(Ljava/util/ArrayList;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-nez v3, :cond_41

    iget v3, v2, Lg/gqy;->q:I

    add-int/2addr v3, v7

    iput v3, v2, Lg/gqy;->q:I

    if-le v3, v1, :cond_45

    const v1, 0x7f12021f

    invoke-virtual {v0, v1, v10}, Lg/fao;->t(IZ)V

    goto :goto_1a

    :cond_41
    iput v10, v2, Lg/gqy;->q:I

    iget v1, v2, Lg/gqy;->i:I

    add-int/2addr v1, v7

    iput v1, v2, Lg/gqy;->i:I

    const/16 v4, 0x50

    const v5, 0x7f120220

    if-le v1, v4, :cond_42

    invoke-virtual {v0, v5, v10}, Lg/fao;->t(IZ)V

    goto :goto_1a

    :cond_42
    iget-boolean v1, v2, Lg/gqy;->g:Z

    if-eqz v1, :cond_43

    const/16 v1, 0x2000

    goto :goto_19

    :cond_43
    const/16 v1, 0x1000

    :goto_19
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v1

    if-nez v1, :cond_45

    iget-boolean v1, v2, Lg/gqy;->g:Z

    if-nez v1, :cond_44

    iput-boolean v7, v2, Lg/gqy;->g:Z

    goto :goto_1a

    :cond_44
    invoke-virtual {v0, v5, v10}, Lg/fao;->t(IZ)V

    :cond_45
    :goto_1a
    invoke-virtual {v0}, Lg/fao;->p()V

    return-void
.end method

.method public p()V
    .locals 4

    iget-boolean v0, p0, Lg/fao;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/fao;->d:Ljava/lang/Object;

    check-cast v0, Lg/gqy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fao;->c:Z

    iget-object v0, p0, Lg/fao;->f:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lg/fao;->g:Ljava/lang/Object;

    check-cast v1, Lg/fvi;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lg/fao;->f:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lg/fao;->g:Ljava/lang/Object;

    check-cast v1, Lg/fvi;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/fao;->c:Z

    iget-object v0, p0, Lg/fao;->d:Ljava/lang/Object;

    check-cast v0, Lg/gqy;

    if-eqz v0, :cond_0

    sget-object v1, Lg/bpi;->FINISHED:Lg/bpi;

    iput-object v1, v0, Lg/gqy;->p:Lg/bpi;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lg/fao;->d:Ljava/lang/Object;

    return-void
.end method

.method public r(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "compressed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public s(ILjava/io/Serializable;)V
    .locals 1

    new-instance v0, Lg/fd;

    invoke-direct {v0, p0, p1, p2}, Lg/fd;-><init>(Lg/fao;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/fd;->run()V

    return-void
.end method

.method public t(IZ)V
    .locals 5

    iget-object v0, p0, Lg/fao;->d:Ljava/lang/Object;

    check-cast v0, Lg/gqy;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lg/fao;->q()V

    iget-object v1, p0, Lg/fao;->a:Ljava/lang/Object;

    check-cast v1, Lg/aoi;

    iget-object v2, v0, Lg/gqy;->h:Lg/ert;

    if-eqz p2, :cond_1

    iget-object v0, v0, Lg/gqy;->n:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lg/gqy;->l:Ljava/lang/Boolean;

    :goto_0
    iget-object v1, v1, Lg/aoi;->b:Ljava/lang/Object;

    check-cast v1, Lg/gk;

    sget-object v3, Lg/bli;->n:Lg/ert;

    if-eq v3, v2, :cond_2

    :goto_1
    return-void

    :cond_2
    if-eqz v0, :cond_3

    iput-object v0, v2, Lg/ert;->u:Ljava/lang/Boolean;

    :cond_3
    if-eqz p2, :cond_4

    const-string v0, "success"

    goto :goto_2

    :cond_4
    const-string v0, "fail_accessibility_switch_fail"

    :goto_2
    iget-object v3, v1, Lg/gk;->j:Landroid/content/Context;

    invoke-static {v3, v2, v0}, Lg/fso;->am(Landroid/content/Context;Lg/ert;Ljava/lang/String;)V

    if-nez p2, :cond_6

    if-eqz p1, :cond_6

    const v0, 0x7f120220

    const/4 v3, 0x1

    if-ne p1, v0, :cond_5

    iget-object v0, v2, Lg/ert;->q:Ljava/lang/String;

    invoke-static {v1, v0}, Lg/acr;->av(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, v1, Lg/gk;->j:Landroid/content/Context;

    if-eqz v0, :cond_6

    invoke-static {v0, p1}, Lg/gm;->k(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1, p1, v3}, Lg/gk;->o(IZ)V

    :cond_6
    :goto_3
    invoke-virtual {v1}, Lg/gk;->u()Lg/gxt;

    move-result-object p1

    invoke-virtual {p1, p2}, Lg/gxt;->k(Z)V

    const/4 p1, 0x0

    sput-object p1, Lg/bli;->n:Lg/ert;

    if-eqz p2, :cond_7

    iget-boolean p1, v2, Lg/ert;->w:Z

    if-eqz p1, :cond_7

    iget-object p1, v1, Lg/gk;->f:Lg/eqi;

    new-instance v0, Lg/fvi;

    const/16 v3, 0x1c

    invoke-direct {v0, v3, v1}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    const-wide/16 v3, 0xb4

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    invoke-virtual {v1, v2, p2}, Lg/gk;->r(Lg/ert;Z)V

    return-void
.end method

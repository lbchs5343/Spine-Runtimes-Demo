.class public abstract Lg/gk;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/CharSequence;

.field public static final b:Landroid/graphics/Rect;

.field public static c:Ljava/lang/CharSequence;

.field public static d:Z


# instance fields
.field public e:Lg/fao;

.field public f:Lg/eqi;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Landroid/content/Context;

.field public k:Lg/gxt;

.field public l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lg/gk;->b:Landroid/graphics/Rect;

    return-void
.end method

.method public static m(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x1c

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-class v3, Landroid/widget/ListView;

    const-class v4, Landroidx/recyclerview/widget/RecyclerView;

    const-string v5, "androidx.recyclerview.widget.RecyclerView"

    if-le v2, v1, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v0, Lg/ern;->c:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v1}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v3, 0xa0

    invoke-direct {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static n(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v1}, Lg/dyd;->ar(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v1, p1}, Lg/gk;->n(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final o(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lg/gk;->j:Landroid/content/Context;

    if-eqz p2, :cond_0

    invoke-static {p2, p1}, Lg/gm;->e(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    goto/16 :goto_2e

    :cond_0
    iget-object v0, v1, Lg/gk;->j:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Lg/gk;->j:Landroid/content/Context;

    :cond_1
    iget-object v0, v1, Lg/gk;->f:Lg/eqi;

    if-nez v0, :cond_2

    new-instance v0, Lg/eqi;

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3}, Lg/eqi;-><init>(Landroid/content/ContextWrapper;I)V

    iput-object v0, v1, Lg/gk;->f:Lg/eqi;

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1000

    const/high16 v4, 0x400000

    const/16 v5, 0x800

    const/16 v6, 0x1d

    const-string v7, "com.android.settings"

    const/16 v8, 0x20

    const/4 v9, 0x1

    if-lt v0, v6, :cond_a

    iget-object v0, v1, Lg/gk;->e:Lg/fao;

    if-nez v0, :cond_4

    sget-object v0, Lg/bli;->n:Lg/ert;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lg/fao;

    iget-object v10, v1, Lg/gk;->f:Lg/eqi;

    new-instance v11, Lg/aoi;

    const/16 v12, 0x11

    invoke-direct {v11, v12, v1}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, v10, v11}, Lg/fao;-><init>(Lg/gk;Lg/eqi;Lg/aoi;)V

    iput-object v0, v1, Lg/gk;->e:Lg/fao;

    :cond_4
    iget-object v0, v1, Lg/gk;->e:Lg/fao;

    sget-object v10, Lg/bli;->n:Lg/ert;

    if-nez v10, :cond_5

    invoke-virtual {v0}, Lg/fao;->q()V

    goto :goto_0

    :cond_5
    iget-object v11, v0, Lg/fao;->d:Ljava/lang/Object;

    check-cast v11, Lg/gqy;

    if-eqz v11, :cond_6

    iget-object v11, v11, Lg/gqy;->h:Lg/ert;

    if-eq v11, v10, :cond_7

    :cond_6
    invoke-virtual {v0}, Lg/fao;->q()V

    new-instance v11, Lg/gqy;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-direct {v11, v10, v12, v13}, Lg/gqy;-><init>(Lg/ert;J)V

    iput-object v11, v0, Lg/fao;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/fao;->p()V

    :cond_7
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    move-result v10

    if-ltz v10, :cond_8

    iget-object v10, v0, Lg/fao;->d:Ljava/lang/Object;

    check-cast v10, Lg/gqy;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    move-result v11

    iput v11, v10, Lg/gqy;->d:I

    :cond_8
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v10

    if-eq v10, v8, :cond_9

    if-eq v10, v5, :cond_9

    if-eq v10, v4, :cond_9

    if-eq v10, v3, :cond_9

    if-ne v10, v9, :cond_a

    :cond_9
    invoke-virtual {v0}, Lg/fao;->p()V

    :cond_a
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v13

    sget-object v14, Lg/gk;->a:Ljava/lang/CharSequence;

    sget-object v15, Lg/gk;->c:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    const-string v10, "com.tencent.mm"

    if-nez v16, :cond_c

    invoke-static {v12}, Lg/dyd;->am(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    :cond_b
    const/4 v3, 0x0

    goto :goto_2

    :cond_c
    if-eq v0, v8, :cond_d

    if-eq v0, v5, :cond_d

    if-eq v0, v3, :cond_d

    if-eq v0, v4, :cond_d

    invoke-static {v10, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v14, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v15, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_d
    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "android."

    if-eqz v3, :cond_2b

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    move-result v13

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    if-ne v0, v8, :cond_e

    if-ltz v13, :cond_e

    invoke-static {v14}, Lg/dyd;->am(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/dyd;->w:Ljava/lang/String;

    sput v13, Lg/dyd;->n:I

    :cond_e
    :try_start_1
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v15, :cond_1a

    :try_start_2
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v16, 0x0

    :goto_3
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v17, :cond_18

    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v8, v13, :cond_18

    :try_start_4
    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v8, v9, :cond_11

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    goto :goto_4

    :cond_10
    move/from16 v20, v3

    :goto_5
    const/4 v11, 0x0

    goto/16 :goto_13

    :cond_11
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v12

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_12

    move-object v12, v14

    goto :goto_6

    :cond_12
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_13

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_6

    :cond_13
    sget v6, Lg/dyd;->n:I

    if-ne v12, v6, :cond_14

    sget-object v12, Lg/dyd;->w:Ljava/lang/String;

    goto :goto_6

    :cond_14
    const/4 v12, 0x0

    :goto_6
    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v9

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v20, v3

    :try_start_6
    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v3

    invoke-static {v12, v6, v9, v0, v3}, Lg/dyd;->at(Ljava/lang/CharSequence;IIZZ)V

    invoke-static {v8, v13, v14}, Lg/dyd;->bk(Landroid/view/accessibility/AccessibilityNodeInfo;ILjava/lang/CharSequence;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_17

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    goto :goto_7

    :cond_16
    move-object v11, v8

    goto/16 :goto_13

    :cond_17
    const/16 v16, 0x1

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v10, v15

    goto/16 :goto_15

    :catch_1
    move-exception v0

    :goto_8
    const/16 v16, 0x1

    goto :goto_e

    :catch_2
    move-exception v0

    move/from16 v20, v3

    goto :goto_8

    :cond_18
    move-object/from16 v19, v0

    move/from16 v20, v3

    goto :goto_9

    :catch_3
    move-exception v0

    move/from16 v20, v3

    goto :goto_e

    :goto_9
    move-object/from16 v0, v19

    move/from16 v3, v20

    const/16 v8, 0x20

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_19
    :goto_a
    move/from16 v20, v3

    goto :goto_c

    :catch_4
    move-exception v0

    move/from16 v20, v3

    :goto_b
    const/16 v16, 0x0

    goto :goto_e

    :cond_1a
    const/16 v16, 0x0

    goto :goto_a

    :goto_c
    if-eqz v15, :cond_1d

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    goto :goto_d

    :catchall_1
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_15

    :catch_5
    move-exception v0

    move/from16 v20, v3

    const/4 v15, 0x0

    goto :goto_b

    :goto_e
    :try_start_7
    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v15, :cond_1d

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    goto :goto_f

    :cond_1d
    :try_start_8
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0, v13, v14}, Lg/dyd;->bk(Landroid/view/accessibility/AccessibilityNodeInfo;ILjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1e

    const/4 v6, 0x1

    goto :goto_10

    :cond_1e
    const/4 v6, 0x0

    :goto_10
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    if-nez v6, :cond_1f

    goto/16 :goto_5

    :catch_6
    move-exception v0

    goto :goto_11

    :cond_1f
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v3, v6, v8, v8, v9}, Lg/dyd;->at(Ljava/lang/CharSequence;IIZZ)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-object v11, v0

    goto :goto_13

    :goto_11
    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :cond_20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :goto_12
    if-eqz v11, :cond_22

    :try_start_9
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v6

    const/16 v8, 0x64

    if-ge v6, v8, :cond_22

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-static {v11, v13, v14}, Lg/dyd;->bk(Landroid/view/accessibility/AccessibilityNodeInfo;ILjava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_21

    move-object v3, v11

    :cond_21
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v11
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_12

    :catch_7
    move-exception v0

    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :cond_22
    if-eqz v3, :cond_23

    if-nez v16, :cond_23

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v6, 0x20

    if-ne v0, v6, :cond_23

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v0, v6, v8, v8, v9}, Lg/dyd;->at(Ljava/lang/CharSequence;IIZZ)V

    :cond_23
    move-object v11, v3

    :goto_13
    if-eqz v11, :cond_28

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v3

    sget v6, Lg/dyd;->p:I

    if-ltz v6, :cond_24

    if-ne v6, v3, :cond_28

    sget-object v3, Lg/dyd;->z:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_24
    sget-object v0, Lg/gk;->a:Ljava/lang/CharSequence;

    sget-object v3, Lg/gk;->c:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v6, 0x20

    if-ne v0, v6, :cond_25

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "androidx."

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_25
    move-object v4, v3

    goto :goto_14

    :cond_26
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v4, v0

    :cond_27
    :goto_14
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lg/gk;->a:Ljava/lang/CharSequence;

    sput-object v4, Lg/gk;->c:Ljava/lang/CharSequence;

    goto :goto_17

    :cond_28
    const/4 v11, 0x0

    goto :goto_17

    :goto_15
    if-eqz v10, :cond_2a

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    goto :goto_16

    :cond_2a
    throw v0

    :cond_2b
    move/from16 v20, v3

    :goto_17
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v6, 0x20

    if-ne v0, v6, :cond_5a

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto/16 :goto_2b

    :cond_2c
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lg/ern;->i(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    if-eqz v11, :cond_2d

    invoke-static {v11, v4}, Lg/ern;->n(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lg/gk;->a:Ljava/lang/CharSequence;

    sput-object v4, Lg/gk;->c:Ljava/lang/CharSequence;

    goto :goto_18

    :cond_2d
    invoke-static {}, Lg/ern;->m()Lg/he;

    :goto_18
    sget-boolean v0, Lg/gk;->d:Z

    if-eqz v0, :cond_33

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_1b

    :cond_2e
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_19

    :cond_2f
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_30

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_19

    :cond_30
    const-string v0, ""

    :goto_19
    iget-object v3, v1, Lg/gk;->i:Ljava/lang/String;

    if-nez v3, :cond_31

    const v3, 0x7f12024f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lg/gk;->i:Ljava/lang/String;

    :cond_31
    new-instance v3, Lg/ejn;

    invoke-direct {v3, v2, v0}, Lg/ejn;-><init>(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lg/ern;->i(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, v1, Lg/gk;->i:Ljava/lang/String;

    goto :goto_1a

    :cond_32
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1a
    invoke-virtual {v3, v0}, Lg/ejn;->setClassName(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    const-string v4, "window_state_changed"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "package_name"

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "accessibility_event_simple"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v3

    invoke-virtual {v3, v0}, Lg/fzn;->q(Landroid/content/Intent;)V

    :cond_33
    :goto_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v0, v3, :cond_60

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    sget-object v3, Lg/bli;->n:Lg/ert;

    if-nez v3, :cond_34

    goto/16 :goto_2e

    :cond_34
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_35

    goto :goto_1c

    :cond_35
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v6, "android.app.AlertDialog"

    if-eqz v4, :cond_37

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_37

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_1d

    :cond_36
    :goto_1c
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void

    :cond_37
    :goto_1d
    if-nez v11, :cond_38

    :try_start_a
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    move-object v11, v0

    goto :goto_1e

    :catch_8
    move-exception v0

    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    const/4 v11, 0x0

    :cond_38
    :goto_1e
    if-nez v11, :cond_39

    goto/16 :goto_2e

    :cond_39
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {}, Lg/fnp;->n()Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "com.android.settings.OptionsActivity"

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto/16 :goto_21

    :cond_3a
    const/4 v9, 0x0

    iput-boolean v9, v1, Lg/gk;->g:Z

    const/4 v4, 0x0

    iput-object v4, v1, Lg/gk;->h:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v11, v3, v9, v0}, Lg/gk;->q(Landroid/view/accessibility/AccessibilityNodeInfo;Lg/ert;ZLjava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {v1}, Lg/gk;->u()Lg/gxt;

    move-result-object v0

    iget v4, v0, Lg/gxt;->a:I

    const/16 v5, 0xa

    const/16 v6, 0x12c

    if-le v4, v5, :cond_3c

    iget v5, v0, Lg/gxt;->b:I

    int-to-float v5, v5

    int-to-float v7, v4

    const v8, 0x3f59999a    # 0.85f

    mul-float v7, v7, v8

    cmpl-float v5, v5, v7

    if-lez v5, :cond_3c

    iget v4, v0, Lg/gxt;->f:I

    int-to-float v5, v4

    if-lt v4, v6, :cond_3b

    const v4, 0x3f99999a    # 1.2f

    goto :goto_1f

    :cond_3b
    const/high16 v4, 0x3fc00000    # 1.5f

    :goto_1f
    mul-float v5, v5, v4

    float-to-int v4, v5

    iput v4, v0, Lg/gxt;->f:I

    goto :goto_20

    :cond_3c
    iget v5, v0, Lg/gxt;->f:I

    mul-int/lit8 v7, v5, 0x2

    if-lt v7, v6, :cond_3d

    iget v6, v0, Lg/gxt;->b:I

    int-to-double v6, v6

    int-to-double v8, v4

    const-wide v12, 0x3fd3333333333333L    # 0.3

    mul-double v8, v8, v12

    cmpl-double v4, v6, v8

    if-lez v4, :cond_3e

    const/16 v18, 0x64

    add-int/lit8 v5, v5, 0x64

    iput v5, v0, Lg/gxt;->f:I

    goto :goto_20

    :cond_3d
    int-to-float v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    iput v4, v0, Lg/gxt;->f:I

    :cond_3e
    :goto_20
    iget v4, v0, Lg/gxt;->f:I

    const/16 v5, 0x1c2

    if-le v4, v5, :cond_3f

    iput v5, v0, Lg/gxt;->f:I

    :cond_3f
    iget-object v4, v0, Lg/gxt;->c:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    const-string v5, "access_sleep_time"

    iget v0, v0, Lg/gxt;->f:I

    invoke-static {v4, v0, v5}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v0, v1, Lg/gk;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, v3, Lg/ert;->q:Ljava/lang/String;

    iget-object v4, v1, Lg/gk;->j:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "similar_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lg/dzm;->av(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lg/gk;->j:Landroid/content/Context;

    iget-object v4, v3, Lg/ert;->q:Ljava/lang/String;

    iget-object v5, v1, Lg/gk;->h:Ljava/lang/String;

    const-string v6, "dev_text"

    invoke-static {v0}, Lg/acr;->bo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "_"

    invoke-static {v6, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v5}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_40
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v1, v11, v3, v8, v0}, Lg/gk;->q(Landroid/view/accessibility/AccessibilityNodeInfo;Lg/ert;ZLjava/lang/CharSequence;)Z

    move-result v0

    :cond_41
    iget-boolean v2, v3, Lg/ert;->g:Z

    if-nez v2, :cond_60

    invoke-virtual {v1, v3, v0}, Lg/gk;->r(Lg/ert;Z)V

    goto/16 :goto_2e

    :cond_42
    :goto_21
    sget-object v0, Lg/bli;->n:Lg/ert;

    if-nez v0, :cond_43

    goto/16 :goto_2e

    :cond_43
    const-string v2, "overdraw"

    iget-object v3, v0, Lg/ert;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x10

    const/16 v4, 0x12

    const v5, 0x7f120215

    const-string v6, "fail_accessibility_dialog_not_in_scope"

    if-nez v2, :cond_49

    const-string v2, "track_gpu_frame"

    iget-object v7, v0, Lg/ert;->q:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    goto :goto_23

    :cond_44
    const-string v2, "usb_debugging"

    iget-object v7, v0, Lg/ert;->q:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, v1, Lg/gk;->j:Landroid/content/Context;

    const-string v7, "debug_usb_debugging_open"

    invoke-static {v2, v7}, Lg/acr;->ao(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v9, 0x0

    iput-boolean v9, v0, Lg/ert;->g:Z

    invoke-static {v2}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_45

    iget-object v2, v1, Lg/gk;->j:Landroid/content/Context;

    iget-object v3, v0, Lg/ert;->q:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v1, v5, v8}, Lg/gk;->o(IZ)V

    invoke-virtual {v1, v0, v9}, Lg/gk;->s(Lg/ert;Z)V

    goto/16 :goto_2e

    :cond_45
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_46

    invoke-virtual {v11, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_46

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v2, :cond_47

    :cond_46
    const/4 v8, 0x1

    goto :goto_22

    :cond_47
    invoke-static {v4}, Lg/dyd;->bp(I)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh()Z

    :cond_48
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lg/gk;->s(Lg/ert;Z)V

    invoke-virtual {v0, v2}, Lg/ert;->aa(Z)V

    invoke-virtual {v1, v0, v2}, Lg/gk;->r(Lg/ert;Z)V

    goto/16 :goto_2e

    :goto_22
    invoke-virtual {v1, v0, v8}, Lg/gk;->p(Lg/ert;Z)V

    goto/16 :goto_2e

    :cond_49
    :goto_23
    invoke-static {}, Lg/fnp;->n()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, v1, Lg/gk;->j:Landroid/content/Context;

    iget-object v3, v0, Lg/ert;->q:Ljava/lang/String;

    const-string v4, "fail_accessibility_smartisan_checked_status_error"

    invoke-static {v2, v3, v4}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f120227

    const/4 v8, 0x1

    invoke-virtual {v1, v2, v8}, Lg/gk;->o(IZ)V

    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9}, Lg/gk;->s(Lg/ert;Z)V

    goto/16 :goto_2e

    :cond_4a
    iget-object v2, v0, Lg/ert;->q:Ljava/lang/String;

    sget-object v7, Lg/acr;->n:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_4b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_4c

    :cond_4b
    const/4 v8, 0x1

    goto/16 :goto_2a

    :cond_4c
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v6, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_4d
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4f

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    const/4 v8, 0x0

    :goto_24
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_4d

    invoke-virtual {v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    if-eqz v9, :cond_4e

    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_4e
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    :cond_4f
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_50
    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v7, :cond_50

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_50

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_51
    invoke-virtual {v1}, Lg/gk;->u()Lg/gxt;

    move-result-object v6

    iget-object v7, v1, Lg/gk;->j:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v9}, Lg/acr;->ao(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v7}, Lg/gxt;->i(Ljava/util/ArrayList;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_52

    invoke-virtual {v11, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_52

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v6, :cond_53

    :cond_52
    const/4 v8, 0x1

    goto :goto_29

    :cond_53
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-virtual {v1}, Lg/gk;->u()Lg/gxt;

    move-result-object v6

    iget-object v8, v1, Lg/gk;->j:Landroid/content/Context;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v8, v2}, Lg/acr;->ao(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2}, Lg/gxt;->i(Ljava/util/ArrayList;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_55

    invoke-virtual {v11, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_54

    goto :goto_26

    :cond_54
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_27

    :cond_55
    :goto_26
    invoke-virtual {v1, v0, v9}, Lg/gk;->p(Lg/ert;Z)V

    goto/16 :goto_2e

    :cond_56
    :goto_27
    invoke-static {}, Lg/fnp;->n()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_57

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    :cond_57
    invoke-static {v4}, Lg/dyd;->bp(I)Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh()Z

    :cond_58
    invoke-virtual {v6, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lg/gk;->s(Lg/ert;Z)V

    if-eqz v2, :cond_59

    const/4 v8, 0x1

    xor-int/lit8 v3, v7, 0x1

    invoke-virtual {v0, v3}, Lg/ert;->aa(Z)V

    goto :goto_28

    :cond_59
    invoke-virtual {v0, v7}, Lg/ert;->aa(Z)V

    :goto_28
    invoke-virtual {v1, v0, v2}, Lg/gk;->r(Lg/ert;Z)V

    goto/16 :goto_2e

    :goto_29
    invoke-virtual {v1, v0, v8}, Lg/gk;->p(Lg/ert;Z)V

    goto/16 :goto_2e

    :goto_2a
    iget-object v2, v1, Lg/gk;->j:Landroid/content/Context;

    iget-object v3, v0, Lg/ert;->q:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v8}, Lg/gk;->o(IZ)V

    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9}, Lg/gk;->s(Lg/ert;Z)V

    goto :goto_2e

    :cond_5a
    :goto_2b
    if-eqz v11, :cond_5c

    if-nez v20, :cond_5b

    sget-object v0, Lg/gk;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5c

    sget-object v0, Lg/gk;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5c

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    sget-object v0, Lg/gk;->c:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_5b
    invoke-static {v11, v4}, Lg/ern;->n(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    goto :goto_2e

    :cond_5c
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lg/ern;->i(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-static {}, Lg/ern;->m()Lg/he;

    goto :goto_2e

    :cond_5d
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    if-eqz v11, :cond_60

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_2c
    if-eqz v0, :cond_5f

    sget-object v2, Lg/gk;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-static {v2}, Lg/ern;->k(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_5e

    goto :goto_2d

    :cond_5e
    move-object v11, v0

    :goto_2d
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_2c

    :cond_5f
    invoke-static {v11, v4}, Lg/ern;->n(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    :cond_60
    :goto_2e
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lg/gk;->e:Lg/fao;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/fao;->q()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lg/bli;->n:Lg/ert;

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    invoke-static {v0, v0}, Lg/ern;->n(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    invoke-static {}, Lg/bew;->q()V

    sput-object v0, Lg/dyd;->z:Ljava/lang/String;

    const/4 v1, -0x1

    sput v1, Lg/dyd;->p:I

    sput-object v0, Lg/dyd;->w:Ljava/lang/String;

    sput v1, Lg/dyd;->n:I

    sput-object v0, Lg/gk;->a:Ljava/lang/CharSequence;

    sput-object v0, Lg/gk;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public final onInterrupt()V
    .locals 1

    iget-object v0, p0, Lg/gk;->e:Lg/fao;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/fao;->q()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lg/bli;->n:Lg/ert;

    return-void
.end method

.method public final p(Lg/ert;Z)V
    .locals 3

    const-string v0, "track_gpu_frame"

    const-string v1, "overdraw"

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    iget-object p2, p1, Lg/ert;->q:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lg/gk;->j:Landroid/content/Context;

    iget-object v0, p1, Lg/ert;->q:Ljava/lang/String;

    const-string v1, "fail_accessibility_no_overdraw_show"

    invoke-static {p2, v0, v1}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f120223

    invoke-virtual {p0, p2, v2}, Lg/gk;->o(IZ)V

    :cond_1
    iget-object p2, p0, Lg/gk;->j:Landroid/content/Context;

    iget-object v0, p1, Lg/ert;->q:Ljava/lang/String;

    const-string v1, "fail_accessibility_no_track_gpu_show"

    invoke-static {p2, v0, v1}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f120224

    invoke-virtual {p0, p2, v2}, Lg/gk;->o(IZ)V

    goto :goto_0

    :cond_2
    iget-object p2, p1, Lg/ert;->q:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lg/gk;->j:Landroid/content/Context;

    iget-object v0, p1, Lg/ert;->q:Ljava/lang/String;

    const-string v1, "fail_accessibility_no_overdraw_close"

    invoke-static {p2, v0, v1}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f12021c

    invoke-virtual {p0, p2, v2}, Lg/gk;->o(IZ)V

    :cond_4
    iget-object p2, p0, Lg/gk;->j:Landroid/content/Context;

    iget-object v0, p1, Lg/ert;->q:Ljava/lang/String;

    const-string v1, "fail_accessibility_no_track_gpu_close"

    invoke-static {p2, v0, v1}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f12021d

    invoke-virtual {p0, p2, v2}, Lg/gk;->o(IZ)V

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lg/gk;->s(Lg/ert;Z)V

    return-void
.end method

.method public final q(Landroid/view/accessibility/AccessibilityNodeInfo;Lg/ert;ZLjava/lang/CharSequence;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-static/range {p1 .. p1}, Lg/gk;->m(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_5

    iget-object v3, v0, Lg/gk;->j:Landroid/content/Context;

    const-string v7, "datetrinea"

    invoke-static {v3, v7, v6}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    move-object/from16 v3, p1

    move-object/from16 v7, p4

    invoke-static {v3, v5, v7}, Lg/he;->fromAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;ILjava/lang/CharSequence;)Lg/he;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lg/gk;->j:Landroid/content/Context;

    const v4, 0x7f12028e

    invoke-static {v3, v4}, Lg/gm;->f(Landroid/content/Context;I)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lg/dyd;->aa()Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v7}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lg/gk;->j:Landroid/content/Context;

    const v8, 0x7f1202dc

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v6

    aput-object v8, v4, v5

    const v5, 0x7f12014a

    invoke-static {v3, v5, v4}, Lg/gm;->j(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v4, v0, Lg/gk;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lg/ffb;->as()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Lg/gfh;

    const/16 v7, 0x1a

    invoke-direct {v5, v7, v0, v3, v6}, Lg/gfh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    const-string v3, "fail_accessibility_no_listview"

    iget-object v4, v0, Lg/gk;->j:Landroid/content/Context;

    invoke-static {v4, v1, v3}, Lg/fso;->am(Landroid/content/Context;Lg/ert;Ljava/lang/String;)V

    const v3, 0x7f12021f

    invoke-virtual {v0, v3, v2}, Lg/gk;->o(IZ)V

    invoke-virtual {v0, v1, v6}, Lg/gk;->s(Lg/ert;Z)V

    return v6

    :cond_5
    iget-object v7, v0, Lg/gk;->j:Landroid/content/Context;

    iget-object v8, v1, Lg/ert;->q:Ljava/lang/String;

    invoke-static {v7, v8}, Lg/acr;->av(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v0, Lg/gk;->j:Landroid/content/Context;

    iget-object v10, v1, Lg/ert;->q:Ljava/lang/String;

    invoke-static {v9}, Lg/acr;->bo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "dev_match"

    filled-new-array {v12, v11, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "_"

    invoke-static {v11, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v6}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v9

    const/4 v10, 0x0

    move-object v14, v10

    const/4 v13, 0x1

    :goto_2
    const/16 v15, 0x10

    if-eqz v13, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-static {v14}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v16

    if-eqz v16, :cond_a

    if-nez v9, :cond_7

    if-nez v2, :cond_7

    invoke-static {v15}, Lg/dyd;->bp(I)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-static {v3}, Lg/gk;->m(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    :cond_6
    invoke-static {v3, v8}, Lg/gk;->n(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)V

    :cond_7
    if-eqz v3, :cond_9

    iget-boolean v13, v0, Lg/gk;->g:Z

    if-eqz v13, :cond_8

    const/16 v13, 0x2000

    goto :goto_3

    :cond_8
    const/16 v13, 0x1000

    :goto_3
    invoke-virtual {v3, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v13

    :cond_9
    invoke-virtual {v0}, Lg/gk;->t()V

    goto :goto_2

    :cond_a
    invoke-static {v14}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-boolean v3, v0, Lg/gk;->g:Z

    xor-int/2addr v3, v5

    iput-boolean v3, v0, Lg/gk;->g:Z

    if-nez v9, :cond_b

    if-nez v2, :cond_b

    invoke-virtual {v0}, Lg/gk;->u()Lg/gxt;

    move-result-object v3

    iget-object v4, v0, Lg/gk;->j:Landroid/content/Context;

    iget-object v9, v1, Lg/ert;->q:Ljava/lang/String;

    invoke-static {v4, v9}, Lg/acr;->ao(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v4}, Lg/gxt;->i(Ljava/util/ArrayList;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lg/gk;->h:Ljava/lang/String;

    :cond_b
    iget-object v3, v0, Lg/gk;->j:Landroid/content/Context;

    iget-object v4, v1, Lg/ert;->q:Ljava/lang/String;

    const-string v8, "fail_accessibility_no_text"

    invoke-static {v3, v4, v8}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v7, v4, v6

    const v5, 0x7f120220

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_c

    iget-object v2, v0, Lg/gk;->j:Landroid/content/Context;

    if-eqz v2, :cond_c

    invoke-static {v2, v3}, Lg/gm;->k(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_c
    invoke-virtual {v0, v1, v6}, Lg/gk;->s(Lg/ert;Z)V

    return v6

    :cond_d
    if-eqz v9, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    iget-object v3, v0, Lg/gk;->j:Landroid/content/Context;

    iget-object v7, v1, Lg/ert;->q:Ljava/lang/String;

    invoke-static {v3}, Lg/acr;->bo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v12, v8, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v5}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_f
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    if-nez v7, :cond_11

    :cond_10
    move-object v7, v3

    const/4 v8, 0x1

    goto :goto_4

    :cond_11
    const/4 v8, 0x2

    :goto_4
    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_5
    add-int/lit8 v12, v8, -0x1

    if-lez v8, :cond_27

    const v8, 0x7f12021b

    if-nez v7, :cond_12

    iget-object v3, v0, Lg/gk;->j:Landroid/content/Context;

    iget-object v4, v1, Lg/ert;->q:Ljava/lang/String;

    const-string v5, "fail_accessibility_no_text_parent"

    invoke-static {v3, v4, v5}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v2}, Lg/gk;->o(IZ)V

    invoke-virtual {v0, v1, v6}, Lg/gk;->s(Lg/ert;Z)V

    return v6

    :cond_12
    invoke-static {}, Lg/fnp;->n()Z

    move-result v13

    if-eqz v13, :cond_13

    new-array v13, v5, [Ljava/lang/CharSequence;

    const-string v14, "smartisanos.widget.SwitchEx"

    aput-object v14, v13, v6

    sget-object v14, Lg/ern;->c:Landroid/view/accessibility/AccessibilityNodeInfo;

    new-instance v14, Ljava/util/HashSet;

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v14, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v7, v14}, Lg/ern;->j(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v13

    goto :goto_7

    :cond_13
    new-array v13, v4, [Ljava/lang/Class;

    const-class v14, Landroid/widget/Switch;

    aput-object v14, v13, v6

    const-class v14, Landroid/widget/CheckBox;

    aput-object v14, v13, v5

    sget-object v14, Lg/ern;->c:Landroid/view/accessibility/AccessibilityNodeInfo;

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v4, :cond_15

    aget-object v16, v13, v8

    if-eqz v16, :cond_14

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x2

    goto :goto_6

    :cond_15
    invoke-static {v7, v14}, Lg/ern;->j(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v13

    :goto_7
    invoke-static {}, Lg/fnp;->i()Z

    move-result v4

    const v8, 0x7f12022a

    if-eqz v4, :cond_17

    invoke-static {v13}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-boolean v4, v1, Lg/ert;->g:Z

    if-nez v4, :cond_17

    new-array v4, v5, [Ljava/lang/Class;

    const-class v13, Landroid/view/View;

    aput-object v13, v4, v6

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    aget-object v4, v4, v6

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-static {v7, v13}, Lg/ern;->j(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v3, v0, Lg/gk;->j:Landroid/content/Context;

    iget-object v4, v1, Lg/ert;->q:Ljava/lang/String;

    const-string v5, "fail_accessibility_vivo_switch_view_error"

    invoke-static {v3, v4, v5}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v2}, Lg/gk;->o(IZ)V

    invoke-virtual {v0, v1, v6}, Lg/gk;->s(Lg/ert;Z)V

    return v6

    :cond_17
    invoke-static {v13}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_19

    const/16 v10, 0x12

    invoke-static {v10}, Lg/dyd;->bp(I)Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh()Z

    :cond_18
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v11

    :cond_19
    move-object v10, v4

    :cond_1a
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_20

    if-eqz v2, :cond_1b

    invoke-virtual {v0}, Lg/gk;->t()V

    :cond_1b
    invoke-static {}, Lg/fnp;->n()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-static {}, Lg/fnp;->i()Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1c
    if-nez v10, :cond_1f

    :cond_1d
    invoke-virtual {v7, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v4

    :cond_1e
    :goto_8
    move v9, v4

    goto :goto_9

    :cond_1f
    invoke-virtual {v10, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v4

    goto :goto_8

    :goto_9
    const/4 v4, 0x2

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_20
    if-nez v10, :cond_24

    if-lez v12, :cond_22

    if-eq v7, v3, :cond_22

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    :goto_a
    move v8, v12

    const/4 v4, 0x2

    goto/16 :goto_5

    :cond_21
    move-object v7, v3

    goto :goto_a

    :cond_22
    iget-object v3, v0, Lg/gk;->j:Landroid/content/Context;

    iget-object v4, v1, Lg/ert;->q:Ljava/lang/String;

    const-string v5, "fail_accessibility_no_switch"

    invoke-static {v3, v4, v5}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg/fnp;->f()Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_b

    :cond_23
    const v8, 0x7f12021b

    :goto_b
    invoke-virtual {v0, v8, v2}, Lg/gk;->o(IZ)V

    invoke-virtual {v0, v1, v6}, Lg/gk;->s(Lg/ert;Z)V

    return v6

    :cond_24
    if-eqz v11, :cond_25

    const/16 v4, 0x8

    goto :goto_c

    :cond_25
    const/high16 v4, 0x20000

    :goto_c
    invoke-virtual {v10, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v10, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v4

    :cond_26
    if-nez v11, :cond_1e

    if-nez v4, :cond_1e

    const/4 v4, 0x4

    invoke-virtual {v10, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v4

    goto :goto_8

    :cond_27
    if-eqz v10, :cond_2a

    if-eqz v2, :cond_28

    invoke-virtual {v0}, Lg/gk;->t()V

    :cond_28
    if-eqz v9, :cond_29

    xor-int/lit8 v3, v11, 0x1

    invoke-virtual {v1, v3}, Lg/ert;->aa(Z)V

    goto :goto_d

    :cond_29
    invoke-virtual {v1, v11}, Lg/ert;->aa(Z)V

    :cond_2a
    :goto_d
    if-nez v9, :cond_2b

    iget-object v3, v0, Lg/gk;->j:Landroid/content/Context;

    iget-object v4, v1, Lg/ert;->q:Ljava/lang/String;

    const-string v5, "fail_accessibility_switch_fail"

    invoke-static {v3, v4, v5}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f120228

    invoke-virtual {v0, v3, v2}, Lg/gk;->o(IZ)V

    invoke-virtual {v0, v1, v6}, Lg/gk;->s(Lg/ert;Z)V

    return v6

    :cond_2b
    if-eqz v10, :cond_2d

    const-string v2, "overdraw"

    iget-object v3, v1, Lg/ert;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "track_gpu_frame"

    iget-object v3, v1, Lg/ert;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    iput-boolean v6, v1, Lg/ert;->g:Z

    :cond_2d
    const-string v2, "usb_debugging"

    iget-object v3, v1, Lg/ert;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "success"

    if-eqz v2, :cond_2f

    if-eqz v11, :cond_2e

    iget-object v2, v0, Lg/gk;->j:Landroid/content/Context;

    iget-object v4, v1, Lg/ert;->q:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Lg/gk;->s(Lg/ert;Z)V

    return v5

    :cond_2e
    iput-boolean v5, v1, Lg/ert;->g:Z

    return v5

    :cond_2f
    iget-boolean v2, v1, Lg/ert;->g:Z

    if-nez v2, :cond_30

    iget-object v2, v0, Lg/gk;->j:Landroid/content/Context;

    iget-object v4, v1, Lg/ert;->q:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Lg/gk;->s(Lg/ert;Z)V

    :cond_30
    return v5
.end method

.method public final r(Lg/ert;Z)V
    .locals 7

    if-nez p2, :cond_0

    iget-boolean v0, p1, Lg/ert;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/gk;->j:Landroid/content/Context;

    invoke-static {v0}, Lg/acw;->aa(Landroid/content/Context;)V

    :cond_0
    if-eqz p2, :cond_8

    iget-object p2, p1, Lg/ert;->u:Ljava/lang/Boolean;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lg/gk;->j:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "success_count"

    invoke-static {p2, v0, v1}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {p2, v3, v1}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    const/4 p2, 0x1

    const v1, 0x7f1203e0

    const v3, 0x7f1203da

    const v4, 0x7f1203db

    const/4 v5, 0x2

    if-ge v2, v5, :cond_3

    iget-object v2, p1, Lg/ert;->u:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f1203db

    goto :goto_0

    :cond_1
    const v2, 0x7f1203da

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lg/gk;->j:Landroid/content/Context;

    invoke-virtual {p1, v6}, Lg/ert;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    aput-object v6, v5, p2

    invoke-virtual {p0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const v0, 0x7f1203dc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p1, p1, Lg/ert;->u:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const v3, 0x7f1203db

    :goto_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const p2, 0x7f12044b

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "first_use_accessibility"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "tips"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lg/fzn;->q(Landroid/content/Intent;)V

    return-void

    :cond_3
    if-ne v2, v5, :cond_4

    const p1, 0x7f1203dd

    sub-int/2addr v2, v5

    invoke-virtual {p0, p1, v2}, Lg/gk;->v(II)V

    return-void

    :cond_4
    const/16 v6, 0x18

    invoke-static {v6}, Lg/dyd;->bp(I)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x3

    if-ne v2, v6, :cond_5

    const p1, 0x7f1203de

    sub-int/2addr v2, v5

    invoke-virtual {p0, p1, v2}, Lg/gk;->v(II)V

    return-void

    :cond_5
    const/16 v6, 0x19

    invoke-static {v6}, Lg/dyd;->bp(I)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x4

    if-ne v2, v6, :cond_6

    const p1, 0x7f1203df

    sub-int/2addr v2, v5

    invoke-virtual {p0, p1, v2}, Lg/gk;->v(II)V

    return-void

    :cond_6
    iget-object v2, p1, Lg/ert;->u:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    const v3, 0x7f1203db

    :cond_7
    iget-object v2, p0, Lg/gk;->j:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lg/gk;->j:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lg/ert;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v0

    aput-object p1, v4, p2

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lg/gm;->k(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public final s(Lg/ert;Z)V
    .locals 1

    invoke-virtual {p0}, Lg/gk;->u()Lg/gxt;

    move-result-object v0

    invoke-virtual {v0, p2}, Lg/gxt;->k(Z)V

    if-eqz p2, :cond_1

    const/16 p2, 0x10

    invoke-static {p2}, Lg/dyd;->bp(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lg/gk;->t()V

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lg/ert;->w:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    :cond_1
    const/4 p1, 0x0

    sput-object p1, Lg/bli;->n:Lg/ert;

    return-void
.end method

.method public final t()V
    .locals 5

    invoke-virtual {p0}, Lg/gk;->u()Lg/gxt;

    move-result-object v0

    iget v1, v0, Lg/gxt;->f:I

    const/16 v2, 0x32

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, v0, Lg/gxt;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, v0, Lg/gxt;->d:Ljava/lang/Object;

    iget v0, v0, Lg/gxt;->f:I

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final u()Lg/gxt;
    .locals 3

    iget-object v0, p0, Lg/gk;->k:Lg/gxt;

    if-nez v0, :cond_1

    const-class v0, Lg/gk;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/gk;->k:Lg/gxt;

    if-nez v1, :cond_0

    new-instance v1, Lg/gxt;

    iget-object v2, p0, Lg/gk;->j:Landroid/content/Context;

    invoke-direct {v1, v2}, Lg/gxt;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lg/gk;->k:Lg/gxt;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    iget-object v0, p0, Lg/gk;->k:Lg/gxt;

    return-object v0
.end method

.method public final v(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "first_use_accessibility"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "tips"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/fzn;->q(Landroid/content/Intent;)V

    return-void
.end method

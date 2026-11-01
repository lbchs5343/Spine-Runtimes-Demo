.class public final Lg/dlo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field public static a:Lg/dlo;

.field public static b:Lg/dlo;


# instance fields
.field public c:Lg/fzm;

.field public d:I

.field public e:Z

.field public final f:I

.field public final g:Lg/blq;

.field public final h:Lg/blq;

.field public final i:Landroid/view/View;

.field public j:Z

.field public final k:Ljava/lang/CharSequence;

.field public l:I


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/blq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/blq;-><init>(Lg/dlo;I)V

    iput-object v0, p0, Lg/dlo;->g:Lg/blq;

    new-instance v0, Lg/blq;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/blq;-><init>(Lg/dlo;I)V

    iput-object v0, p0, Lg/dlo;->h:Lg/blq;

    iput-object p1, p0, Lg/dlo;->i:Landroid/view/View;

    iput-object p2, p0, Lg/dlo;->k:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    sget-object v0, Lg/btu;->a:Ljava/lang/reflect/Method;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    invoke-static {p2}, Lg/eyo;->f(Landroid/view/ViewConfiguration;)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    :goto_0
    iput p2, p0, Lg/dlo;->f:I

    iput-boolean v1, p0, Lg/dlo;->e:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public static m(Lg/dlo;)V
    .locals 3

    sget-object v0, Lg/dlo;->b:Lg/dlo;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lg/dlo;->i:Landroid/view/View;

    iget-object v0, v0, Lg/dlo;->g:Lg/blq;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    sput-object p0, Lg/dlo;->b:Lg/dlo;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lg/dlo;->i:Landroid/view/View;

    iget-object p0, p0, Lg/dlo;->g:Lg/blq;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final n()V
    .locals 5

    sget-object v0, Lg/dlo;->a:Lg/dlo;

    iget-object v1, p0, Lg/dlo;->i:Landroid/view/View;

    const/4 v2, 0x0

    if-ne v0, p0, :cond_2

    sput-object v2, Lg/dlo;->a:Lg/dlo;

    iget-object v0, p0, Lg/dlo;->c:Lg/fzm;

    if-eqz v0, :cond_1

    iget-object v3, v0, Lg/fzm;->f:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v0, v0, Lg/fzm;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v2, p0, Lg/dlo;->c:Lg/fzm;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/dlo;->e:Z

    invoke-virtual {v1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    :cond_1
    const-string v0, "TooltipCompatHandler"

    const-string v3, "sActiveHandler.mPopup == null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    sget-object v0, Lg/dlo;->b:Lg/dlo;

    if-ne v0, p0, :cond_3

    invoke-static {v2}, Lg/dlo;->m(Lg/dlo;)V

    :cond_3
    iget-object v0, p0, Lg/dlo;->h:Lg/blq;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final o(Z)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/dlo;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lg/dlo;->m(Lg/dlo;)V

    sget-object v3, Lg/dlo;->a:Lg/dlo;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lg/dlo;->n()V

    :cond_1
    sput-object v0, Lg/dlo;->a:Lg/dlo;

    move/from16 v3, p1

    iput-boolean v3, v0, Lg/dlo;->j:Z

    new-instance v3, Lg/fzm;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v5, v3, Lg/fzm;->c:Ljava/lang/Object;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v3, Lg/fzm;->d:Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v7, v6, [I

    iput-object v7, v3, Lg/fzm;->g:Ljava/lang/Object;

    new-array v7, v6, [I

    iput-object v7, v3, Lg/fzm;->a:Ljava/lang/Object;

    iput-object v4, v3, Lg/fzm;->e:Ljava/lang/Object;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0c001b

    invoke-virtual {v7, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lg/fzm;->f:Ljava/lang/Object;

    const v7, 0x7f0901ee

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lg/fzm;->b:Ljava/lang/Object;

    const-class v2, Lg/fzm;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/16 v2, 0x3ea

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x2

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x3

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x7f13000c

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v2, 0x18

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, v3, Lg/fzm;->f:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    iget-object v4, v3, Lg/fzm;->e:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    iput-object v3, v0, Lg/dlo;->c:Lg/fzm;

    iget v5, v0, Lg/dlo;->l:I

    iget v7, v0, Lg/dlo;->d:I

    iget-boolean v8, v0, Lg/dlo;->j:Z

    iget-object v9, v3, Lg/fzm;->c:Ljava/lang/Object;

    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    const-string v11, "window"

    if-eqz v10, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v4, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    invoke-interface {v10, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v10, v3, Lg/fzm;->b:Ljava/lang/Object;

    check-cast v10, Landroid/widget/TextView;

    iget-object v12, v0, Lg/dlo;->k:Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v3, Lg/fzm;->a:Ljava/lang/Object;

    check-cast v10, [I

    iget-object v12, v3, Lg/fzm;->g:Ljava/lang/Object;

    check-cast v12, [I

    iget-object v3, v3, Lg/fzm;->d:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v13

    iput-object v13, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070452

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v14

    if-lt v14, v13, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v6

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v14

    if-lt v14, v13, :cond_4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070451

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    add-int v14, v7, v13

    sub-int/2addr v7, v13

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v14

    const/4 v7, 0x0

    :goto_1
    const/16 v13, 0x31

    iput v13, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz v8, :cond_5

    const v16, 0x7f070455

    const v15, 0x7f070455

    goto :goto_2

    :cond_5
    const v16, 0x7f070454

    const v15, 0x7f070454

    :goto_2
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move/from16 v17, v5

    instance-of v5, v6, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    iget v5, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    :goto_3
    instance-of v6, v5, Landroid/content/ContextWrapper;

    if-eqz v6, :cond_8

    instance-of v6, v5, Landroid/app/Activity;

    if-eqz v6, :cond_7

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v15

    goto :goto_4

    :cond_7
    check-cast v5, Landroid/content/ContextWrapper;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    goto :goto_3

    :cond_8
    :goto_4
    if-nez v15, :cond_9

    const-string v3, "TooltipPopup"

    const-string v6, "Cannot find app view"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    goto/16 :goto_7

    :cond_9
    invoke-virtual {v15, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-gez v6, :cond_b

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-gez v6, :cond_b

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/16 v18, 0x1

    const-string v5, "dimen"

    move/from16 v19, v7

    const-string v7, "android"

    move/from16 v20, v8

    const-string v8, "status_bar_height"

    invoke-virtual {v6, v8, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v5, v7, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6

    :cond_b
    move/from16 v19, v7

    move/from16 v20, v8

    const/4 v8, 0x0

    const/16 v18, 0x1

    :goto_6
    invoke-virtual {v15, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v1, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v5, v12, v8

    aget v6, v10, v8

    sub-int/2addr v5, v6

    aput v5, v12, v8

    aget v6, v12, v18

    aget v7, v10, v18

    sub-int/2addr v6, v7

    aput v6, v12, v18

    add-int v5, v5, v17

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v6

    const/16 v16, 0x2

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v5, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    aget v6, v12, v18

    add-int v7, v6, v19

    sub-int/2addr v7, v13

    sub-int/2addr v7, v5

    add-int/2addr v6, v14

    add-int/2addr v6, v13

    if-eqz v20, :cond_d

    if-ltz v7, :cond_c

    iput v7, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_7

    :cond_c
    iput v6, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_7

    :cond_d
    add-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v5, v3, :cond_e

    iput v6, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_7

    :cond_e
    iput v7, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_7
    invoke-virtual {v4, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3, v2, v9}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-boolean v2, v0, Lg/dlo;->j:Z

    if-eqz v2, :cond_f

    const-wide/16 v2, 0x9c4

    goto :goto_9

    :cond_f
    sget-object v2, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xbb8

    :goto_8
    sub-long v2, v4, v2

    goto :goto_9

    :cond_10
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3a98

    goto :goto_8

    :goto_9
    iget-object v4, v0, Lg/dlo;->h:Lg/blq;

    invoke-virtual {v1, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lg/dlo;->c:Lg/fzm;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lg/dlo;->j:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/dlo;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    const/16 p1, 0xa

    if-eq v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/dlo;->e:Z

    invoke-virtual {p0}, Lg/dlo;->n()V

    return v0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lg/dlo;->c:Lg/fzm;

    if-nez p1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget-boolean v1, p0, Lg/dlo;->e:Z

    if-nez v1, :cond_4

    iget v1, p0, Lg/dlo;->l:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lg/dlo;->f:I

    if-gt v1, v2, :cond_4

    iget v1, p0, Lg/dlo;->d:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v2, :cond_5

    :cond_4
    iput p1, p0, Lg/dlo;->l:I

    iput p2, p0, Lg/dlo;->d:I

    iput-boolean v0, p0, Lg/dlo;->e:Z

    invoke-static {p0}, Lg/dlo;->m(Lg/dlo;)V

    :cond_5
    :goto_0
    return v0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lg/dlo;->l:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lg/dlo;->d:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lg/dlo;->o(Z)V

    return p1
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lg/dlo;->n()V

    return-void
.end method

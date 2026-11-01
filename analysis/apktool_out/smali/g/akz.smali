.class public final Lg/akz;
.super Lg/amk;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/akz;->a:I

    iput-object p2, p0, Lg/akz;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lg/amk;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Lg/fnz;)V
    .locals 8

    iget v0, p0, Lg/akz;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lg/akz;->b:Ljava/lang/Object;

    iget-object v5, p0, Lg/amk;->m:Landroid/view/View$AccessibilityDelegate;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p2, Lg/fnz;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string p1, "android.widget.Switch"

    invoke-virtual {p2, p1}, Lg/fnz;->j(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void

    :pswitch_0
    iget-object p2, p2, Lg/fnz;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v4, Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-boolean p1, v4, Lcom/google/android/material/internal/NavigationMenuItemView;->i:Z

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    return-void

    :pswitch_1
    iget-object v0, p2, Lg/fnz;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v4, Lg/ebb;

    iget-object p1, v4, Lg/ebb;->r:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f120335

    invoke-virtual {v4, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f120333

    invoke-virtual {v4, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Lg/csk;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p1}, Lg/csk;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lg/fnz;->k(Lg/csk;)V

    return-void

    :pswitch_2
    iget-object v0, p2, Lg/fnz;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v4, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    sget v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a:I

    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_4

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ne v6, p1, :cond_2

    move v1, v5

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/google/android/material/button/MaterialButton;

    if-eqz v6, :cond_3

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iget-boolean p1, p1, Lcom/google/android/material/button/MaterialButton;->j:Z

    invoke-static {v2, v3, v1, v3, p1}, Lg/fc;->f(IIIIZ)Lg/fc;

    move-result-object p1

    invoke-virtual {p2, p1}, Lg/fnz;->l(Lg/fc;)V

    return-void

    :pswitch_3
    iget-object p2, p2, Lg/fnz;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v4, Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean p1, v4, Lcom/google/android/material/internal/CheckableImageButton;->f:Z

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-boolean p1, v4, Lcom/google/android/material/internal/CheckableImageButton;->e:Z

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void

    :pswitch_4
    iget-object v0, p2, Lg/fnz;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/high16 p1, 0x100000

    invoke-virtual {p2, p1}, Lg/fnz;->h(I)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    return-void

    :pswitch_5
    iget-object v0, p2, Lg/fnz;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p1, Lg/ezn;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lg/fnz;->j(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    check-cast v4, Lg/ezn;

    invoke-virtual {v4, v3}, Lg/ezn;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x1000

    invoke-virtual {p2, p1}, Lg/fnz;->h(I)V

    :cond_5
    invoke-virtual {v4, v1}, Lg/ezn;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x2000

    invoke-virtual {p2, p1}, Lg/fnz;->h(I)V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget v0, p0, Lg/akz;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Lg/amk;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :pswitch_1
    invoke-super {p0, p1, p2}, Lg/amk;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p1, p0, Lg/akz;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean p1, p1, Lcom/google/android/material/internal/CheckableImageButton;->e:Z

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void

    :pswitch_2
    invoke-super {p0, p1, p2}, Lg/amk;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p1, Lg/ezn;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public e(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    iget v0, p0, Lg/akz;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lg/amk;->e(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :pswitch_0
    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lg/akz;->b:Ljava/lang/Object;

    check-cast p1, Lg/cle;

    check-cast p1, Lg/sd;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lg/cle;->ak(I)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lg/amk;->e(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    :goto_0
    return p1

    :pswitch_1
    iget-object v0, p0, Lg/akz;->b:Ljava/lang/Object;

    check-cast v0, Lg/ezn;

    invoke-super {p0, p1, p2, p3}, Lg/amk;->e(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0x1000

    const/4 v1, 0x0

    if-eq p2, p1, :cond_4

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_3

    :cond_2
    const/4 p3, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Lg/ezn;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v0, Lg/ezn;->mCurItem:I

    sub-int/2addr p1, p3

    invoke-virtual {v0, p1}, Lg/ezn;->setCurrentItem(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p3}, Lg/ezn;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v0, Lg/ezn;->mCurItem:I

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Lg/ezn;->setCurrentItem(I)V

    :goto_1
    return p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

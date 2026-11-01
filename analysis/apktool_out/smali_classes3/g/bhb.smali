.class public abstract Lg/bhb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final v:Lcom/google/android/material/internal/CheckableImageButton;

.field public final w:Lcom/google/android/material/textfield/TextInputLayout;

.field public final x:Lg/zq;

.field public final y:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lg/zq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lg/zq;->p:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lg/bhb;->w:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lg/bhb;->x:Lg/zq;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lg/bhb;->y:Landroid/content/Context;

    iget-object p1, p1, Lg/zq;->d:Lcom/google/android/material/internal/CheckableImageButton;

    iput-object p1, p0, Lg/bhb;->v:Lcom/google/android/material/internal/CheckableImageButton;

    return-void
.end method


# virtual methods
.method public aa()Z
    .locals 1

    instance-of v0, p0, Lg/chp;

    return v0
.end method

.method public ab(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public ac(Lg/fnz;)V
    .locals 0

    return-void
.end method

.method public ad()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ae(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public af()V
    .locals 0

    return-void
.end method

.method public ag()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ah()V
    .locals 2

    iget-object v0, p0, Lg/bhb;->x:Lg/zq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/zq;->ad(Z)V

    return-void
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public n()Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p(Z)V
    .locals 0

    return-void
.end method

.method public q(Landroid/widget/EditText;)V
    .locals 0

    return-void
.end method

.method public s()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public z()Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

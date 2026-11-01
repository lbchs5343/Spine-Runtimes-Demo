.class public final Lg/cpq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public final synthetic c:I

.field public d:I

.field public e:Z


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/cpq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/cpq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cpq;->b:Ljava/lang/Object;

    new-instance p1, Lg/byd;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/cpq;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/cpq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cpq;->b:Ljava/lang/Object;

    new-instance p1, Lg/fvi;

    const/16 v0, 0x18

    invoke-direct {p1, v0, p0}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/cpq;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/cpq;[Lg/cqg;ZI)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lg/cpq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cpq;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg/cpq;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lg/cpq;->e:Z

    iput p4, p0, Lg/cpq;->d:I

    return-void
.end method

.method public static final f()Lg/cpq;
    .locals 2

    new-instance v0, Lg/cpq;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg/cpq;-><init>(I)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/cpq;->e:Z

    const/4 v1, -0x1

    iput v1, v0, Lg/cpq;->d:I

    const/4 v1, 0x0

    iput-object v1, v0, Lg/cpq;->a:Ljava/lang/Object;

    iput-object v1, v0, Lg/cpq;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public g(I)V
    .locals 2

    iget v0, p0, Lg/cpq;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/cpq;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->aa:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lg/cpq;->d:I

    iget-boolean p1, p0, Lg/cpq;->e:Z

    if-nez p1, :cond_1

    iget-object p1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->aa:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lg/cpq;->a:Ljava/lang/Object;

    check-cast v0, Lg/fvi;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/cpq;->e:Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/cpq;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ap:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iput p1, p0, Lg/cpq;->d:I

    iget-boolean p1, p0, Lg/cpq;->e:Z

    if-nez p1, :cond_3

    iget-object p1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ap:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lg/cpq;->a:Ljava/lang/Object;

    check-cast v0, Lg/byd;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/cpq;->e:Z

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h()Lg/gok;
    .locals 5

    new-instance v0, Lg/gok;

    iget-boolean v1, p0, Lg/cpq;->e:Z

    iget v2, p0, Lg/cpq;->d:I

    iget-object v3, p0, Lg/cpq;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lg/cpq;->b:Ljava/lang/Object;

    check-cast v4, Lg/cpo;

    if-nez v4, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v4

    invoke-virtual {v4}, Lg/hat;->k()Lg/cpo;

    move-result-object v4

    :cond_0
    invoke-direct {v0, v1, v2, v3, v4}, Lg/gok;-><init>(ZILjava/lang/String;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-object v0
.end method

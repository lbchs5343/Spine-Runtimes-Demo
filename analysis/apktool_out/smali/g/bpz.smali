.class public final Lg/bpz;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/a;

.field public final synthetic b:Landroidx/fragment/app/i;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/a;Landroidx/fragment/app/i;)V
    .locals 0

    iput-object p1, p0, Lg/bpz;->c:Landroid/view/ViewGroup;

    iput-object p2, p0, Lg/bpz;->d:Landroid/view/View;

    iput-boolean p3, p0, Lg/bpz;->e:Z

    iput-object p4, p0, Lg/bpz;->a:Landroidx/fragment/app/a;

    iput-object p5, p0, Lg/bpz;->b:Landroidx/fragment/app/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lg/bpz;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lg/bpz;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-boolean p1, p0, Lg/bpz;->e:Z

    iget-object v1, p0, Lg/bpz;->a:Landroidx/fragment/app/a;

    if-eqz p1, :cond_0

    iget-object p1, v1, Landroidx/fragment/app/a;->d:Lg/gdn;

    invoke-virtual {p1, v0}, Lg/gdn;->d(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lg/bpz;->b:Landroidx/fragment/app/i;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->g()V

    const/4 p1, 0x2

    invoke-static {p1}, Landroidx/fragment/app/v;->ao(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    return-void
.end method

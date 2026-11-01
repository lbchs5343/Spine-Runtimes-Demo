.class public final Lg/bfp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/i;

.field public final synthetic b:Landroidx/fragment/app/a;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/a;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bfp;->b:Landroidx/fragment/app/a;

    iput-object p2, p0, Lg/bfp;->c:Landroid/view/ViewGroup;

    iput-object p3, p0, Lg/bfp;->d:Landroid/view/View;

    iput-object p4, p0, Lg/bfp;->a:Landroidx/fragment/app/i;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    new-instance p1, Lg/byd;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    iget-object v0, p0, Lg/bfp;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x2

    invoke-static {p1}, Landroidx/fragment/app/v;->ao(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/bfp;->b:Landroidx/fragment/app/a;

    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    const/4 p1, 0x2

    invoke-static {p1}, Landroidx/fragment/app/v;->ao(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/bfp;->b:Landroidx/fragment/app/a;

    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

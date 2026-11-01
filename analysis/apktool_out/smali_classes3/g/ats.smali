.class public final Lg/ats;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final a:Lg/gfk;

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lg/gfk;

    invoke-direct {v0, p1}, Lg/gfk;-><init>(Landroid/content/Context;)V

    iput-object p2, v0, Lg/gfk;->k:Ljava/lang/String;

    iput-object v0, p0, Lg/ats;->a:Lg/gfk;

    iput-object p3, v0, Lg/gfk;->e:Ljava/lang/String;

    iput-object p4, v0, Lg/gfk;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lg/ats;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/ats;->a:Lg/gfk;

    invoke-virtual {v0, p1}, Lg/gfk;->o(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

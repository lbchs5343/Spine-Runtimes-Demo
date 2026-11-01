.class public final Lg/gru;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic a:Lg/cvw;

.field public final synthetic b:Lg/and;

.field public final synthetic c:Lg/and;

.field public final synthetic d:Lg/cvw;


# direct methods
.method public constructor <init>(Lg/and;Lg/and;Lg/cvw;Lg/cvw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gru;->b:Lg/and;

    iput-object p2, p0, Lg/gru;->c:Lg/and;

    iput-object p3, p0, Lg/gru;->d:Lg/cvw;

    iput-object p4, p0, Lg/gru;->a:Lg/cvw;

    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 1

    iget-object v0, p0, Lg/gru;->a:Lg/cvw;

    invoke-interface {v0}, Lg/cvw;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, Lg/gru;->d:Lg/cvw;

    invoke-interface {v0}, Lg/cvw;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 2

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/gru;->c:Lg/and;

    new-instance v1, Lg/dqa;

    invoke-direct {v1, p1}, Lg/dqa;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {v0, v1}, Lg/and;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 2

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/gru;->b:Lg/and;

    new-instance v1, Lg/dqa;

    invoke-direct {v1, p1}, Lg/dqa;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {v0, v1}, Lg/and;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.class public final Lg/eej;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/and;


# instance fields
.field final synthetic this$0:Landroidx/activity/b;


# direct methods
.method public constructor <init>(Landroidx/activity/b;)V
    .locals 0

    iput-object p1, p0, Lg/eej;->this$0:Landroidx/activity/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lg/dqa;

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lg/eej;->this$0:Landroidx/activity/b;

    iget-object v0, p1, Landroidx/activity/b;->e:Lg/fbz;

    invoke-virtual {v0}, Lg/fbz;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lg/bcn;

    iget-boolean v2, v2, Lg/bcn;->c:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lg/bcn;

    iput-object v1, p1, Landroidx/activity/b;->f:Lg/bcn;

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

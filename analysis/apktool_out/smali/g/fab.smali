.class public final Lg/fab;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field final synthetic this$0:Landroidx/activity/b;


# direct methods
.method public constructor <init>(Landroidx/activity/b;)V
    .locals 0

    iput-object p1, p0, Lg/fab;->this$0:Landroidx/activity/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lg/fab;->this$0:Landroidx/activity/b;

    iget-object v1, v0, Landroidx/activity/b;->e:Lg/fbz;

    invoke-virtual {v1}, Lg/fbz;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lg/bcn;

    iget-boolean v4, v4, Lg/bcn;->c:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    check-cast v2, Lg/bcn;

    iput-object v3, v0, Landroidx/activity/b;->f:Lg/bcn;

    sget-object v0, Lg/dgi;->a:Lg/dgi;

    return-object v0
.end method

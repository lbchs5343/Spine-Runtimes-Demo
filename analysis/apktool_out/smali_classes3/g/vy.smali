.class public final synthetic Lg/vy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/eih;

.field public final synthetic b:I

.field public final synthetic c:Lg/amu;

.field public final synthetic d:Lg/ero;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lg/ero;ILg/eih;ILg/amu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/vy;->d:Lg/ero;

    iput p2, p0, Lg/vy;->e:I

    iput-object p3, p0, Lg/vy;->a:Lg/eih;

    iput p4, p0, Lg/vy;->b:I

    iput-object p5, p0, Lg/vy;->c:Lg/amu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lg/vy;->d:Lg/ero;

    iget-object v1, v0, Lg/ero;->au:Ljava/util/HashMap;

    iget v2, v0, Lg/ero;->as:I

    iget v3, p0, Lg/vy;->e:I

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lg/vy;->a:Lg/eih;

    iget v3, p0, Lg/vy;->b:I

    iput v3, v2, Lg/eih;->childCount:I

    iget-object v3, p0, Lg/vy;->c:Lg/amu;

    iget-object v4, v3, Lg/amu;->ak:Ljava/lang/Object;

    if-ne v4, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/FutureTask;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v3, v2}, Lg/ero;->bb(Lg/amu;Ljava/io/File;)V

    :cond_2
    :goto_0
    return-void
.end method

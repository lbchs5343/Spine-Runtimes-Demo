.class public final Lg/cwu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/gyx;


# instance fields
.field public final a:Lg/bcn;

.field public final synthetic b:Landroidx/activity/b;


# direct methods
.method public constructor <init>(Landroidx/activity/b;Lg/bcn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lg/cwu;->b:Landroidx/activity/b;

    iput-object p2, p0, Lg/cwu;->a:Lg/bcn;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 4

    iget-object v0, p0, Lg/cwu;->b:Landroidx/activity/b;

    iget-object v1, v0, Landroidx/activity/b;->e:Lg/fbz;

    iget-object v2, p0, Lg/cwu;->a:Lg/bcn;

    invoke-virtual {v1, v2}, Lg/fbz;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/activity/b;->f:Lg/bcn;

    invoke-static {v1, v2}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Landroidx/activity/b;->f:Lg/bcn;

    :cond_0
    iget-object v0, v2, Lg/bcn;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v2, Lg/bcn;->e:Lg/fgb;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lg/cvw;->invoke()Ljava/lang/Object;

    :cond_1
    iput-object v3, v2, Lg/bcn;->e:Lg/fgb;

    return-void
.end method

.class Landroidx/activity/result/ActivityResultRegistry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ajm;


# instance fields
.field public final synthetic a:Lg/ehj;

.field public final synthetic c:Landroidx/activity/result/a;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lg/bez;


# direct methods
.method public constructor <init>(Landroidx/activity/result/a;Ljava/lang/String;Lg/bez;Lg/ehj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->c:Landroidx/activity/result/a;

    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Ljava/lang/String;

    iput-object p3, p0, Landroidx/activity/result/ActivityResultRegistry$1;->e:Lg/bez;

    iput-object p4, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Lg/ehj;

    return-void
.end method


# virtual methods
.method public final b(Lg/iz;Lg/dtn;)V
    .locals 5

    sget-object p1, Lg/dtn;->ON_START:Lg/dtn;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Ljava/lang/String;

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->c:Landroidx/activity/result/a;

    if-eqz p1, :cond_1

    iget-object p1, v1, Landroidx/activity/result/a;->b:Ljava/util/HashMap;

    iget-object p2, v1, Landroidx/activity/result/a;->g:Landroid/os/Bundle;

    iget-object v1, v1, Landroidx/activity/result/a;->d:Ljava/util/HashMap;

    new-instance v2, Lg/dnr;

    iget-object v3, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Lg/ehj;

    iget-object v4, p0, Landroidx/activity/result/ActivityResultRegistry$1;->e:Lg/bez;

    invoke-direct {v2, v3, v4}, Lg/dnr;-><init>(Lg/ehj;Lg/bez;)V

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, p1}, Lg/bez;->v(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/etm;

    if-eqz p1, :cond_3

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p1}, Lg/etm;->getResultCode()I

    move-result p2

    invoke-virtual {p1}, Lg/etm;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v3, p2, p1}, Lg/ehj;->d(ILandroid/content/Intent;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v4, p1}, Lg/bez;->v(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object p1, Lg/dtn;->ON_STOP:Lg/dtn;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v1, Landroidx/activity/result/a;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    sget-object p1, Lg/dtn;->ON_DESTROY:Lg/dtn;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1, v0}, Landroidx/activity/result/a;->k(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

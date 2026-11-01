.class public abstract Lg/gx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WorkConstraintsTracker"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"WorkConstraintsTracker\")"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final b(Lg/vn;Lg/fkj;Lg/cpk;Lg/cdj;)Lg/fe;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lg/aky;->q(Lg/boj;)Lg/dlg;

    move-result-object p2

    new-instance v0, Lg/cfz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lg/cfz;-><init>(Lg/vn;Lg/fkj;Lg/cdj;Lg/bdp;)V

    const/4 p0, 0x3

    invoke-static {p2, v1, v1, v0, p0}, Lg/baf;->al(Lg/hcc;Lg/cpk;Lg/dwt;Lg/bto;I)Lg/fe;

    move-result-object p0

    return-object p0
.end method

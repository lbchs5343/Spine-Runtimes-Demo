.class public final Lg/ftt;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field final synthetic $tag:Ljava/lang/String;

.field final synthetic $workManagerImpl:Lg/fxb;


# direct methods
.method public constructor <init>(Lg/fxb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/ftt;->$workManagerImpl:Lg/fxb;

    iput-object p2, p0, Lg/ftt;->$tag:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lg/ftt;->$workManagerImpl:Lg/fxb;

    iget-object v0, v0, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    const-string v1, "workManagerImpl.workDatabase"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lg/ftt;->$tag:Ljava/lang/String;

    iget-object v2, p0, Lg/ftt;->$workManagerImpl:Lg/fxb;

    new-instance v3, Lg/grk;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v2, v4}, Lg/grk;-><init>(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;Lg/fxb;I)V

    invoke-virtual {v0, v3}, Lg/gac;->ak(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lg/ftt;->$workManagerImpl:Lg/fxb;

    iget-object v1, v0, Lg/fxb;->aw:Lg/flk;

    iget-object v2, v0, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Lg/fxb;->ay:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lg/fje;->c(Lg/flk;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    sget-object v0, Lg/dgi;->a:Lg/dgi;

    return-object v0
.end method

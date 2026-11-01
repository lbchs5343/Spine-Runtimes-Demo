.class public final synthetic Lg/fkv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/eiv;


# instance fields
.field public final synthetic a:Lg/flk;

.field public final synthetic b:Landroidx/work/impl/WorkDatabase;

.field public final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lg/aqv;Ljava/util/List;Lg/flk;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fkv;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lg/fkv;->d:Ljava/util/List;

    iput-object p3, p0, Lg/fkv;->a:Lg/flk;

    iput-object p4, p0, Lg/fkv;->b:Landroidx/work/impl/WorkDatabase;

    return-void
.end method


# virtual methods
.method public final h(Lg/gxm;Z)V
    .locals 6

    new-instance v0, Lg/akt;

    const/4 v5, 0x0

    iget-object v1, p0, Lg/fkv;->d:Ljava/util/List;

    iget-object v3, p0, Lg/fkv;->a:Lg/flk;

    iget-object v4, p0, Lg/fkv;->b:Landroidx/work/impl/WorkDatabase;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lg/akt;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, p0, Lg/fkv;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.class public final synthetic Lg/gsk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lg/egu;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lg/egu;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gsk;->a:Lg/egu;

    iput-object p2, p0, Lg/gsk;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lg/gsk;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg/gsk;->a:Lg/egu;

    iget-object v0, v0, Lg/egu;->e:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()Lg/dzh;

    move-result-object v1

    iget-object v2, p0, Lg/gsk;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lg/dzh;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lg/gsk;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lg/gg;->p(Ljava/lang/String;)Lg/fkj;

    move-result-object v0

    return-object v0
.end method

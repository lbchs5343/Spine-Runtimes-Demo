.class public final Lg/eqm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final a:Lg/dba;


# instance fields
.field public final b:Ljava/util/HashMap;

.field public final c:Lg/blx;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/eqm;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/eqm;->a:Lg/dba;

    return-void
.end method

.method public constructor <init>(Lg/blx;Ljava/util/ArrayList;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eqm;->c:Lg/blx;

    iput-object p2, p0, Lg/eqm;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ffs;

    invoke-interface {v1}, Lg/ffs;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ffs;

    if-eqz v1, :cond_0

    sget-object v1, Lg/eqm;->a:Lg/dba;

    const-string v3, "Found duplicate entry: {} in {}"

    invoke-interface {v1, v2, v3, p1}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lg/eqm;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lg/eqm;->c:Lg/blx;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

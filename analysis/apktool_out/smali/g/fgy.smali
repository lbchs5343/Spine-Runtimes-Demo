.class public final Lg/fgy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/iu;


# static fields
.field public static final b:Lg/dba;


# instance fields
.field public final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/fgy;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/fgy;->b:Lg/dba;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fgy;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lg/euy;)V
    .locals 5

    iget-object v0, p0, Lg/fgy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/bpt;

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/cmv;

    invoke-direct {v2, v1}, Lg/cmv;-><init>(Lg/bpt;)V

    invoke-virtual {p1, v2}, Lg/euy;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Failed to load class data for file: {}"

    iget-object v1, v1, Lg/bpt;->b:Ljava/lang/String;

    sget-object v4, Lg/fgy;->b:Lg/dba;

    invoke-interface {v4, v1, v3, v2}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lg/fgy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

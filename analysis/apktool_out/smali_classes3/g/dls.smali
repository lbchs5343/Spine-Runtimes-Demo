.class public abstract Lg/dls;
.super Lg/bke;
.source "SourceFile"


# instance fields
.field public final f:Lg/st;


# direct methods
.method public constructor <init>(Lg/st;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dls;->f:Lg/st;

    return-void
.end method


# virtual methods
.method public final a(Lg/fwg;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lg/fwg;->af()Lg/fwg;

    return-void

    :cond_0
    invoke-virtual {p1}, Lg/fwg;->p()V

    :try_start_0
    iget-object v0, p0, Lg/dls;->f:Lg/st;

    iget-object v0, v0, Lg/st;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/amt;

    invoke-virtual {v1, p1, p2}, Lg/amt;->f(Lg/fwg;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lg/fwg;->ag()V

    return-void

    :goto_1
    sget-object p2, Lg/cpe;->a:Lg/eyt;

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected IllegalAccessException occurred (Gson 2.11.0). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers."

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

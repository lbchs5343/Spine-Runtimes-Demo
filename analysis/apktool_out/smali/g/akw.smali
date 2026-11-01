.class public final synthetic Lg/akw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ajm;


# instance fields
.field public final synthetic a:Lg/arz;

.field public final synthetic c:Lg/fck;

.field public final synthetic d:Lg/fqv;


# direct methods
.method public synthetic constructor <init>(Lg/fck;Lg/fqv;Lg/arz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/akw;->c:Lg/fck;

    iput-object p2, p0, Lg/akw;->d:Lg/fqv;

    iput-object p3, p0, Lg/akw;->a:Lg/arz;

    return-void
.end method


# virtual methods
.method public final b(Lg/iz;Lg/dtn;)V
    .locals 5

    iget-object p1, p0, Lg/akw;->c:Lg/fck;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lg/fck;->a:Ljava/lang/Runnable;

    iget-object v1, p1, Lg/fck;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v2, Lg/dtn;->Companion:Lg/uu;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "state"

    iget-object v3, p0, Lg/akw;->d:Lg/fqv;

    invoke-static {v3, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lg/evy;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    sget-object v2, Lg/dtn;->ON_RESUME:Lg/dtn;

    goto :goto_0

    :cond_1
    sget-object v2, Lg/dtn;->ON_START:Lg/dtn;

    goto :goto_0

    :cond_2
    sget-object v2, Lg/dtn;->ON_CREATE:Lg/dtn;

    :goto_0
    iget-object v4, p0, Lg/akw;->a:Lg/arz;

    if-ne p2, v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_3
    sget-object v2, Lg/dtn;->ON_DESTROY:Lg/dtn;

    if-ne p2, v2, :cond_4

    invoke-virtual {p1, v4}, Lg/fck;->e(Lg/arz;)V

    return-void

    :cond_4
    invoke-static {v3}, Lg/uu;->a(Lg/fqv;)Lg/dtn;

    move-result-object p1

    if-ne p2, p1, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

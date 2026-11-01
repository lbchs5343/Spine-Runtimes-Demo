.class public final synthetic Lg/fmw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ajm;


# instance fields
.field public final synthetic a:Lg/fck;

.field public final synthetic c:Lg/arz;


# direct methods
.method public synthetic constructor <init>(Lg/fck;Lg/arz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fmw;->a:Lg/fck;

    iput-object p2, p0, Lg/fmw;->c:Lg/arz;

    return-void
.end method


# virtual methods
.method public final b(Lg/iz;Lg/dtn;)V
    .locals 1

    sget-object p1, Lg/dtn;->ON_DESTROY:Lg/dtn;

    iget-object v0, p0, Lg/fmw;->a:Lg/fck;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lg/fmw;->c:Lg/arz;

    invoke-virtual {v0, p1}, Lg/fck;->e(Lg/arz;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

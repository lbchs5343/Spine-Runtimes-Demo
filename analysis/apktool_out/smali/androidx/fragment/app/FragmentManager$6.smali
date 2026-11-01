.class Landroidx/fragment/app/FragmentManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ajm;


# virtual methods
.method public final b(Lg/iz;Lg/dtn;)V
    .locals 1

    sget-object p1, Lg/dtn;->ON_START:Lg/dtn;

    const/4 v0, 0x0

    if-eq p2, p1, :cond_1

    sget-object p1, Lg/dtn;->ON_DESTROY:Lg/dtn;

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    throw v0

    :cond_1
    throw v0
.end method

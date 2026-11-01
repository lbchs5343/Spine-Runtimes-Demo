.class public final synthetic Lg/ghw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ajm;


# instance fields
.field public final synthetic a:Lg/hbu;


# direct methods
.method public synthetic constructor <init>(Lg/hbu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ghw;->a:Lg/hbu;

    return-void
.end method


# virtual methods
.method public final b(Lg/iz;Lg/dtn;)V
    .locals 1

    const-string p1, "this$0"

    iget-object v0, p0, Lg/ghw;->a:Lg/hbu;

    invoke-static {v0, p1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lg/dtn;->ON_START:Lg/dtn;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, v0, Lg/hbu;->d:Z

    return-void

    :cond_0
    sget-object p1, Lg/dtn;->ON_STOP:Lg/dtn;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, v0, Lg/hbu;->d:Z

    :cond_1
    return-void
.end method

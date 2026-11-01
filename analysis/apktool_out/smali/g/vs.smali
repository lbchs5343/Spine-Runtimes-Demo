.class public final Lg/vs;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/eos;


# direct methods
.method public constructor <init>(Lg/eos;)V
    .locals 0

    iput-object p1, p0, Lg/vs;->a:Lg/eos;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 2

    int-to-char p1, p1

    const/16 v0, 0xa

    iget-object v1, p0, Lg/vs;->a:Lg/eos;

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    invoke-interface {v1, p1}, Lg/eos;->a(C)Lg/eos;

    :cond_0
    return-void

    :cond_1
    check-cast v1, Lg/grs;

    invoke-virtual {v1}, Lg/grs;->ag()V

    return-void
.end method

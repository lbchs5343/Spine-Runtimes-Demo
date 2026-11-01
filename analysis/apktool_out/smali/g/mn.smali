.class public final synthetic Lg/mn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cbr;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/mn;->b:Ljava/lang/String;

    iput p1, p0, Lg/mn;->c:I

    iput-boolean p3, p0, Lg/mn;->a:Z

    return-void
.end method


# virtual methods
.method public final _bj(Lg/anf;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lg/mn;->c:I

    iget-boolean v1, p0, Lg/mn;->a:Z

    iget-object v2, p0, Lg/mn;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v1}, Lg/anf;->h(ILjava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "layout_capture_failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

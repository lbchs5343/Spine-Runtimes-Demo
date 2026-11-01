.class public final Lg/yg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/boj;


# instance fields
.field public final a:Ljava/lang/Throwable;

.field public final synthetic b:Lg/boj;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lg/boj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/yg;->a:Ljava/lang/Throwable;

    iput-object p2, p0, Lg/yg;->b:Lg/boj;

    return-void
.end method


# virtual methods
.method public final _w(Lg/efi;)Lg/boj;
    .locals 1

    iget-object v0, p0, Lg/yg;->b:Lg/boj;

    invoke-interface {v0, p1}, Lg/boj;->_w(Lg/efi;)Lg/boj;

    move-result-object p1

    return-object p1
.end method

.method public final _x(Lg/efi;)Lg/erz;
    .locals 1

    iget-object v0, p0, Lg/yg;->b:Lg/boj;

    invoke-interface {v0, p1}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object p1

    return-object p1
.end method

.method public final _y(Lg/boj;)Lg/boj;
    .locals 1

    iget-object v0, p0, Lg/yg;->b:Lg/boj;

    invoke-interface {v0, p1}, Lg/boj;->_y(Lg/boj;)Lg/boj;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/Object;Lg/bto;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/yg;->b:Lg/boj;

    invoke-interface {v0, p1, p2}, Lg/boj;->c(Ljava/lang/Object;Lg/bto;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

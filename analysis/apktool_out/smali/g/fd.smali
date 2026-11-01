.class public final synthetic Lg/fd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lg/fao;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lg/fao;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fd;->b:Lg/fao;

    iput p2, p0, Lg/fd;->c:I

    iput-object p3, p0, Lg/fd;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg/fd;->b:Lg/fao;

    iget-object v0, v0, Lg/fao;->e:Ljava/lang/Object;

    check-cast v0, Lg/eie;

    iget v1, p0, Lg/fd;->c:I

    iget-object v2, p0, Lg/fd;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lg/eie;->r(ILjava/lang/Object;)V

    return-void
.end method

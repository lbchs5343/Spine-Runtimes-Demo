.class public final synthetic Lg/drb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/iv;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lg/iv;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/drb;->b:Lg/iv;

    iput p2, p0, Lg/drb;->c:I

    iput p3, p0, Lg/drb;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg/drb;->b:Lg/iv;

    iget-object v0, v0, Lg/iv;->a:Ljava/lang/Object;

    check-cast v0, Lg/cxq;

    iget v1, p0, Lg/drb;->c:I

    iget v2, p0, Lg/drb;->a:I

    invoke-virtual {v0, v1, v2}, Lg/cxq;->b(II)V

    return-void
.end method

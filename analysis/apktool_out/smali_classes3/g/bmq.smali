.class public final Lg/bmq;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/and;


# instance fields
.field final synthetic this$0:Lg/fxy;


# direct methods
.method public constructor <init>(Lg/fxy;)V
    .locals 0

    iput-object p1, p0, Lg/bmq;->this$0:Lg/fxy;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/io/IOException;

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lg/bmq;->this$0:Lg/fxy;

    sget-object v0, Lg/erq;->c:[B

    const/4 v0, 0x1

    iput-boolean v0, p1, Lg/fxy;->j:Z

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

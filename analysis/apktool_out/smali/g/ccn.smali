.class public final Lg/ccn;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field final synthetic this$0:Lg/fze;


# direct methods
.method public constructor <init>(Lg/fze;)V
    .locals 0

    iput-object p1, p0, Lg/ccn;->this$0:Lg/fze;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/ccn;->this$0:Lg/fze;

    invoke-virtual {v0}, Lg/fze;->j()Lg/cap;

    move-result-object v0

    return-object v0
.end method

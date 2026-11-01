.class public final Lg/dqz;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field final synthetic $viewModelStoreOwner:Lg/gyj;


# direct methods
.method public constructor <init>(Lg/gyj;)V
    .locals 0

    iput-object p1, p0, Lg/dqz;->$viewModelStoreOwner:Lg/gyj;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/dqz;->$viewModelStoreOwner:Lg/gyj;

    invoke-static {v0}, Lg/afo;->aw(Lg/gyj;)Lg/wi;

    move-result-object v0

    return-object v0
.end method

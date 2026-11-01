.class public final Lg/aet;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field final synthetic $flowArray:[Lg/dqx;


# direct methods
.method public constructor <init>([Lg/dqx;)V
    .locals 0

    iput-object p1, p0, Lg/aet;->$flowArray:[Lg/dqx;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/aet;->$flowArray:[Lg/dqx;

    array-length v0, v0

    new-array v0, v0, [Lg/bfx;

    return-object v0
.end method
